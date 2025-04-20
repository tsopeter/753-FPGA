import torch
import torch.nn as nn
from   brevitas.nn import QuantConv2d, QuantReLU, QuantLinear

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