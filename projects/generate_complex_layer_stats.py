import torch
import torch.nn as nn
from brevitas.nn import QuantConv2d, QuantReLU, QuantLinear, QuantIdentity
from brevitas.quant import Int8Bias
import os
import numpy as np
import onnx
import torch
import torch.nn as nn
import torch.nn.functional as F
from   brevitas.nn import QuantConv2d, QuantLinear, QuantReLU
from   brevitas.export import export_qonnx
from   qonnx.util.cleanup import cleanup as qonnx_cleanup
from   qonnx.core.modelwrapper import ModelWrapper
from   qonnx.core.datatype import DataType
from   finn.transformation.qonnx.convert_qonnx_to_finn import ConvertQONNXtoFINN
import finn.builder.build_dataflow as build
import finn.builder.build_dataflow_config as build_cfg
import shutil
import json
import warnings
warnings.filterwarnings('ignore')

class PilotNet(nn.Module):
    def __init__(self, width: int = 320, height: int = 240,
                 weight_bit_width: int = 4, act_bit_width: int = 4, width_multiplier: float = 1.0,
                 convz: str = "111", densez: str = "111", out_features: int = 1):
        super(PilotNet, self).__init__()

        self.height = height
        self.width = width
        self.width_multiplier = width_multiplier
        self.weight_bit_width = weight_bit_width
        self.act_bit_width = act_bit_width

        self.quant_inp = QuantIdentity(
            bit_width=8,
            return_quant_tensor=True
        )

        self.qnt_output = QuantIdentity(
            bit_width=16,
            quant_type='int',
            signed=True,
            scaling_impl_type='const',
            scaling_const=1/16384.0,
            return_quant_tensor=True,
            max_val=1.0,
            min_val=-1.0
        )

        self.relu = QuantReLU(bit_width=act_bit_width, return_quant_tensor=True, act_bit_width=act_bit_width)

        # First two conv layers are always present
        self.conv1 = QuantConv2d(1, int(24 * width_multiplier), kernel_size=5, stride=2,
                                 weight_bit_width=weight_bit_width, bias_quant=Int8Bias,
                                 return_quant_tensor=True, act_bit_width=act_bit_width)

        self.conv2 = QuantConv2d(int(24 * width_multiplier), int(36 * width_multiplier), kernel_size=5, stride=2,
                                 weight_bit_width=weight_bit_width, bias_quant=Int8Bias,
                                 return_quant_tensor=True, act_bit_width=act_bit_width)

        self.cvz = nn.ModuleList()
        self.cvz.append(self.conv1)
        self.cvz.append(self.conv2)

        # Set up dynamic conv3-5 layers
        last_channels = int(36 * width_multiplier)

        conv_settings = [
            (int(48 * width_multiplier), 5, 2),  # conv3
            (int(64 * width_multiplier), 3, 1),  # conv4
            (int(64 * width_multiplier), 3, 1)   # conv5
        ]

        for idx, flag in enumerate(convz):
            if flag == "1":
                out_channels, ksize, stride = conv_settings[idx]
                conv_layer = QuantConv2d(
                    last_channels, out_channels,
                    kernel_size=ksize, stride=stride,
                    weight_bit_width=weight_bit_width, bias_quant=Int8Bias,
                    return_quant_tensor=True, act_bit_width=act_bit_width
                )
                self.cvz.append(conv_layer)
                last_channels = out_channels  # Update last_channels after each layer

        self.flatten = nn.Flatten()

        self.flattened_size = self._get_flattened_size()

        # Dense layers
        hidden_sizes = [int(100 * width_multiplier), int(50 * width_multiplier), int(10 * width_multiplier)]

        self.fcs = nn.ModuleList()
        in_features = self.flattened_size

        for idx, flag in enumerate(densez):
            if flag == "1":
                self.fcs.append(QuantLinear(
                    in_features, hidden_sizes[idx],
                    bias=True, weight_bit_width=weight_bit_width,
                    bias_quant=Int8Bias, return_quant_tensor=True,
                    act_bit_width=act_bit_width
                ))
                in_features = hidden_sizes[idx]

        self.output = QuantLinear(
            in_features, out_features,
            bias=True, weight_bit_width=weight_bit_width,
            bias_quant=Int8Bias, return_quant_tensor=True,
            act_bit_width=16
        )

    def _get_flattened_size(self):
        with torch.no_grad():
            x = torch.zeros(1, 1, self.height, self.width)
            x = self.quant_inp(x)
            for layer in self.cvz:
                x = self.relu(layer(x))
            x = self.flatten(x)
        return x.shape[1]

    def forward(self, x):
        x = x / 255.0
        x = self.quant_inp(x)

        for layer in self.cvz:
            x = self.relu(layer(x))

        x = self.flatten(x)

        for fc in self.fcs:
            x = self.relu(fc(x))

        x = self.output(x)
        x = self.qnt_output(x)

        return x
    
def read_json_dict(filename):
    with open(filename, 'r') as f:
        ret = json.load(f)
    return ret


save_dir  = 'layer_stats_complx'
model_dir = os.environ['FINN_ROOT'] + '/notebooks/projects/'
device    = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

estimates_output_dir = model_dir + '/output_estimates_only'
rtlsim_output_dir = model_dir + '/output_ipstitch_ooc_rtlsim'

input_shape = (64,64)
ready_model_filename = model_dir + '/model.onnx'
input_a = np.random.randint(0, 255, size=(1,1,input_shape[0], input_shape[1])).astype(np.float32)
input_t = torch.from_numpy(input_a)

cfg_estimates = build.DataflowBuildConfig(
    output_dir          = estimates_output_dir,
    mvau_wwidth_max     = 4,
    target_fps          = 20,
    synth_clk_period_ns = 10.0,
    auto_fifo_depths    = True,
    split_large_fifos   = True,
    fpga_part           = 'xc7s25csga225-1',
    #fpga_part           = 'xczu5ev-sfvc784-1-e',
    steps               = build_cfg.estimate_only_dataflow_steps,
    generate_outputs    = [
        build_cfg.DataflowOutputType.ESTIMATE_REPORTS,
    ]
)

import itertools

# Define possible convz and densez patterns
convz_options = [''.join(bits) for bits in itertools.product('01', repeat=3)]
densez_options = [''.join(bits) for bits in itertools.product('01', repeat=3)]
width_multipliers = [0.1 * i for i in range(1, 6)]  # [0.1, 0.2, ..., 0.5]

# Full loop through all combinations
for convz in convz_options:
    for densez in densez_options:
        for width_multiplier in width_multipliers:
            width_multiplier = np.round(width_multiplier,decimals=1)
            print(f'Running: {width_multiplier:.2f}.{convz}.{densez}')
            model = PilotNet(input_shape[0], input_shape[1], convz = convz, densez = densez, width_multiplier=width_multiplier, weight_bit_width=4, act_bit_width=4)
       
            model.cpu()
            export_qonnx(model, export_path=ready_model_filename, input_t=input_t)
            qonnx_cleanup(ready_model_filename, out_file=ready_model_filename)

            model = ModelWrapper(ready_model_filename)
            model.set_tensor_datatype(model.graph.input[0].name, DataType['UINT8'])
            model = model.transform(ConvertQONNXtoFINN())
            model.save(ready_model_filename)

            if os.path.exists(estimates_output_dir):
                shutil.rmtree(estimates_output_dir)
                print('estimates: Previous run results deleted')

            build.build_dataflow_cfg(ready_model_filename, cfg_estimates)
            ret = read_json_dict(estimates_output_dir + '/report/estimate_layer_resources.json')

            total_bram = ret['total']['BRAM_18K']
            total_lut  = ret['total']['LUT']

            with open(f'{model_dir}/{save_dir}/{width_multiplier:.2f}.{convz}.{densez}.json', 'w') as f:
                json.dump(ret, f, indent=2)
            print(f'{width_multiplier:.2f}.{convz}.{densez}:\tLUT: {total_lut}, BRAM: {total_bram}')

            ret = read_json_dict(estimates_output_dir + '/report/estimate_network_performance.json')
            
            with open(f'{model_dir}/{save_dir}/{width_multiplier:.2f}.{convz}.{densez}.perf.json', 'w') as f:
                json.dump(ret, f, indent=2)
