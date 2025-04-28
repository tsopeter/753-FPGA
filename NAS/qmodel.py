import torch
import torch.nn as nn
from   brevitas.nn import QuantConv2d, QuantReLU, QuantLinear, QuantIdentity
from brevitas.quant import Int32Bias, fixed_point, Int8ActPerTensorFloat, Int8Bias

# PilotNet model
class PilotNet(nn.Module):
    def __init__(self, width : int = 320, height : int = 240,
                weight_bit_width : int = 4, act_bit_width : int = 4, width_multiplier : float = 1.0,
                convz : int = 5, densez : str = 3, out_features : int=1, use_softmax : bool=False,
                non_quantized : bool = False):
        super(PilotNet, self).__init__()

        self.height = height
        self.width  = width
        self.width_multiplier  = width_multiplier

        self.weight_bit_width = weight_bit_width
        self.act_bit_width    = act_bit_width

        self.used_quantized = not non_quantized

        self.qnt_output = QuantIdentity(
            bit_width=9, 
            quant_type='int',           # INT quantization, not binary
            scaling_impl_type='const',  # Fixed scaling
            scaling_const=1/128.0,      # Because 2^7 = 128, for 7 fractional bits
            narrow_range=False,         # Allow full range [-1.0, +1.0]
            signed=True                 # Output is signed
        )

        self.use_softmax = use_softmax
        if not non_quantized:      
            self.conv1  = QuantConv2d(1,  int(24*self.width_multiplier), kernel_size=5, stride=2, weight_bit_width=self.weight_bit_width, bias_quant=Int8Bias, return_quant_tensor=True, act_bit_width=self.act_bit_width)
            self.conv2  = QuantConv2d(int(24*self.width_multiplier), int(36*self.width_multiplier), kernel_size=5, stride=2, weight_bit_width=self.weight_bit_width, bias_quant=Int8Bias, return_quant_tensor=True, act_bit_width=self.act_bit_width)
            self.conv3  = QuantConv2d(int(36*self.width_multiplier), int(48*self.width_multiplier), kernel_size=5, stride=2, weight_bit_width=self.weight_bit_width, bias_quant=Int8Bias, return_quant_tensor=True, act_bit_width=self.act_bit_width)
            self.conv4  = QuantConv2d(int(48*self.width_multiplier), int(64*self.width_multiplier), kernel_size=3, stride=1, weight_bit_width=self.weight_bit_width, bias_quant=Int8Bias, return_quant_tensor=True, act_bit_width=self.act_bit_width)
            self.conv5  = QuantConv2d(int(64*self.width_multiplier), int(64*self.width_multiplier), kernel_size=3, stride=1, weight_bit_width=self.weight_bit_width, bias_quant=Int8Bias, return_quant_tensor=True, act_bit_width=self.act_bit_width)
        else:
            self.conv1  = nn.Conv2d(1,  int(24*self.width_multiplier), kernel_size=5, stride=2)
            self.conv2  = nn.Conv2d(int(24*self.width_multiplier), int(36*self.width_multiplier), kernel_size=5, stride=2)
            self.conv3  = nn.Conv2d(int(36*self.width_multiplier), int(48*self.width_multiplier), kernel_size=5, stride=2)
            self.conv4  = nn.Conv2d(int(48*self.width_multiplier), int(64*self.width_multiplier), kernel_size=3, stride=1)
            self.conv5  = nn.Conv2d(int(64*self.width_multiplier), int(64*self.width_multiplier), kernel_size=3, stride=1)

        self.flatten = nn.Flatten()

        cvz = [
            self.conv1,
            self.conv2,
            self.conv3,
            self.conv4,
            self.conv5,
        ]

        self.cvz = nn.ModuleList()
        for i in range(min(len(cvz), convz)):
            self.cvz.append(cvz[i])

        self.flattened_size = self._get_flattened_size()

        if not non_quantized:
            self.relu1  = QuantReLU(bit_width=self.act_bit_width, return_quant_tensor=True, act_bit_width=self.act_bit_width)
        else:
            self.relu1  = nn.ReLU()

        hidden_sizes = [100, 50, 10]

        for i in range(len(hidden_sizes)):
            hidden_sizes[i]=int(hidden_sizes[i]*self.width_multiplier)
        
        self.fcs = nn.ModuleList()
        in_features = self.flattened_size

        for i in range(min(densez, len(hidden_sizes))):
            if not non_quantized:
                self.fcs.append(QuantLinear(in_features, hidden_sizes[i], bias=True, weight_bit_width=self.weight_bit_width, bias_quant=Int8Bias, return_quant_tensor=True, act_bit_width=self.act_bit_width))
            else:
                self.fcs.append(nn.Linear(in_features, hidden_sizes[i], bias=True))
            in_features = hidden_sizes[i]
            
        if not non_quantized:
            self.output = QuantLinear(in_features, out_features=out_features, bias=True, weight_bit_width=self.weight_bit_width, bias_quant=Int8Bias, return_quant_tensor=True, act_bit_width=self.act_bit_width)
        else:
            self.output = nn.Linear(in_features, out_features=out_features, bias=True)
        self.softmax = nn.Softmax(dim=1)

    def _get_flattened_size(self):
        x = torch.zeros(1,1,self.height,self.width)
        if self.used_quantized:
            x = self.quant_inp(x)
        for cvz in self.cvz:
            x = cvz(x)
        x = self.flatten(x)
        return x.shape[1]
    
    def forward(self, x):
        x = x / 255.0   # normalize to 0->1

        for cvz in self.cvz:
            x = self.relu1(cvz(x))
        x = self.flatten(x)
        for fc in self.fcs:
            x = self.relu1(fc(x))
        x = self.output(x)

        if self.use_softmax:
            x = self.softmax(x)

        if self.used_quantized:
            x = self.qnt_output(x)

        return x