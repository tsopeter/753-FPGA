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

model_dir = os.environ['FINN_ROOT'] + '/notebooks/projects/'
device    = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

estimates_output_dir = model_dir + '/output_estimates_only'
rtlsim_output_dir = model_dir + '/output_ipstitch_ooc_rtlsim'


# PilotNet model
class PilotNet(nn.Module):
    def __init__(self, width : int = 320, height : int = 240,
                weight_bit_width : int = 4, act_bit_width : int = 4, width_multiplier : float = 1.0,
                convz : int = 5, densez : str = 3):
        super(PilotNet, self).__init__()

        self.height = height
        self.width  = width
        self.width_multiplier  = width_multiplier

        self.weight_bit_width = weight_bit_width
        self.act_bit_width    = act_bit_width

        self.conv1  = QuantConv2d(1,  int(24*self.width_multiplier), kernel_size=5, stride=2, weight_bit_width=self.weight_bit_width)
        self.conv2  = QuantConv2d(int(24*self.width_multiplier), int(36*self.width_multiplier), kernel_size=5, stride=2, weight_bit_width=self.weight_bit_width)
        self.conv3  = QuantConv2d(int(36*self.width_multiplier), int(48*self.width_multiplier), kernel_size=5, stride=2, weight_bit_width=self.weight_bit_width)
        self.conv4  = QuantConv2d(int(48*self.width_multiplier), int(64*self.width_multiplier), kernel_size=3, stride=1, weight_bit_width=self.weight_bit_width)
        self.conv5  = QuantConv2d(int(64*self.width_multiplier), int(64*self.width_multiplier), kernel_size=3, stride=1, weight_bit_width=self.weight_bit_width)
        self.flatten = nn.Flatten()

        self.cvz = nn.ModuleList()
        for i in range(min(5, convz)):
            if (i == 0):
                self.cvz.append(self.conv1)
            elif (i == 1):
                self.cvz.append(self.conv2)
            elif (i == 2):
                self.cvz.append(self.conv3)
            elif (i == 3):
                self.cvz.append(self.conv4)
            else:
                self.cvz.append(self.conv5)

        self.flattened_size = self._get_flattened_size()

        self.relu1  = QuantReLU(bit_width=self.act_bit_width)

        hidden_sizes = [100, 50, 10]

        for i in range(len(hidden_sizes)):
            hidden_sizes[i]=int(hidden_sizes[i]*self.width_multiplier)
        
        self.fcs = nn.ModuleList()
        in_features = self.flattened_size

        for i in range(min(densez, len(hidden_sizes))):
            self.fcs.append(QuantLinear(in_features, hidden_sizes[i], bias=True, weight_bit_width=self.weight_bit_width))
            in_features = hidden_sizes[i]
            
        self.output = QuantLinear(in_features, 1, bias=True, weight_bit_width=self.weight_bit_width)

    def _get_flattened_size(self):
        x = torch.zeros(1,1,self.height,self.width)
        for cvz in self.cvz:
            x = cvz(x)
        x = self.flatten(x)
        return x.shape[1]

    def forward(self, x):
        for cvz in self.cvz:
            x = self.relu1(cvz(x))
        x = self.flatten(x)
        for fc in self.fcs:
            x = self.relu1(fc(x))
        x = self.output(x)
        return x

def getDataset():
    pass

def train(model):
    pass

def read_json_dict(filename):
    with open(filename, 'r') as f:
        ret = json.load(f)
    return ret

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

for n_densez_layers in range(1,4):
    for n_convz_layers in range(1,6):
        for n_width_m in [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]:
            print(f'Running: {n_width_m:.2f}.{n_convz_layers}.{n_densez_layers}')
            model = PilotNet(input_shape[0], input_shape[1], convz = n_convz_layers, densez = n_densez_layers, width_multiplier=n_width_m, weight_bit_width=4, act_bit_width=4)
       
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

            with open(f'{model_dir}/layer_stats/{n_width_m:.2f}.{n_convz_layers}.{n_densez_layers}.json', 'w') as f:
                json.dump(ret, f, indent=2)
            print(f'{n_width_m:.2f}.{n_convz_layers}.{n_densez_layers}:\tLUT: {total_lut}, BRAM: {total_bram}')

            ret = read_json_dict(estimates_output_dir + '/report/estimate_network_performance.json')
            
            with open(f'{model_dir}/layer_stats/{n_width_m:.2f}.{n_convz_layers}.{n_densez_layers}.perf.json', 'w') as f:
                json.dump(ret, f, indent=2)

