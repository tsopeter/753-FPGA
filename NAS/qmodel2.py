import torch
import torch.nn as nn
from brevitas.nn import QuantConv2d, QuantReLU, QuantLinear, QuantIdentity, BatchNorm2dToQuantScaleBias
from brevitas.quant import Int8Bias

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
            quant_type='int',
            signed=False,
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

        # Always use QuantReLU
        self.relu = QuantReLU(bit_width=act_bit_width, return_quant_tensor=True, act_bit_width=act_bit_width)

        # --- Build Convolutional Layers ---
        self.cvz = nn.ModuleList()

        # First two conv layers are always present
        in_channels = 1
        out_channels = int(24 * width_multiplier)
        self.cvz.append(self._conv_bn_relu_block(in_channels, out_channels, kernel_size=5, stride=2))

        in_channels = out_channels
        out_channels = int(36 * width_multiplier)
        self.cvz.append(self._conv_bn_relu_block(in_channels, out_channels, kernel_size=5, stride=2))

        last_channels = out_channels

        # Dynamic conv3, conv4, conv5
        conv_settings = [
            (int(48 * width_multiplier), 5, 2),  # conv3
            (int(64 * width_multiplier), 3, 1),  # conv4
            (int(64 * width_multiplier), 3, 1)   # conv5
        ]

        for idx, flag in enumerate(convz):
            if flag == "1":
                out_channels, ksize, stride = conv_settings[idx]
                self.cvz.append(self._conv_bn_relu_block(last_channels, out_channels, kernel_size=ksize, stride=stride))
                last_channels = out_channels

        self.flatten = nn.Flatten()

        self.flattened_size = self._get_flattened_size()

        # --- Build Dense Layers ---
        hidden_sizes = [int(100 * width_multiplier), int(50 * width_multiplier), int(10 * width_multiplier)]

        self.fcs = nn.ModuleList()
        in_features = self.flattened_size

        for idx, flag in enumerate(densez):
            if flag == "1":
                self.fcs.append(self._linear_bn_relu_block(in_features, hidden_sizes[idx]))
                in_features = hidden_sizes[idx]

        # Final output layer (no ReLU after final output)
        self.output = QuantLinear(
            in_features, out_features,
            bias=True, weight_bit_width=weight_bit_width,
            bias_quant=Int8Bias, return_quant_tensor=True,
            act_bit_width=16
        )

    def _conv_bn_relu_block(self, in_channels, out_channels, kernel_size, stride):
        return nn.Sequential(
            QuantConv2d(
                in_channels, out_channels,
                kernel_size=kernel_size, stride=stride,
                weight_bit_width=self.weight_bit_width,
                bias_quant=Int8Bias,
                return_quant_tensor=True,
                act_bit_width=self.act_bit_width
            ),
            #BatchNorm2dToQuantScaleBias(out_channels),
            nn.BatchNorm2d(out_channels),
            QuantReLU(bit_width=self.act_bit_width, return_quant_tensor=True, act_bit_width=self.act_bit_width)
        )

    def _linear_bn_relu_block(self, in_features, out_features):
        return nn.Sequential(
            QuantLinear(
                in_features, out_features,
                bias=True,
                weight_bit_width=self.weight_bit_width,
                bias_quant=Int8Bias,
                return_quant_tensor=True,
                act_bit_width=self.act_bit_width
            ),
            #nn.BatchNorm1d(out_features),
            QuantReLU(bit_width=self.act_bit_width, return_quant_tensor=True, act_bit_width=self.act_bit_width)
        )

    def _get_flattened_size(self):
        with torch.no_grad():
            x = torch.zeros(1, 1, self.height, self.width)
            x = self.quant_inp(x)
            for block in self.cvz:
                x = block(x)
            x = self.flatten(x)
        return x.shape[1]

    def forward(self, x):
        x = x / 255.0
        x = self.quant_inp(x)

        for block in self.cvz:
            x = block(x)

        x = self.flatten(x)

        for block in self.fcs:
            x = block(x)

        x = self.output(x)
        x = self.qnt_output(x)

        return x

if __name__ == '__main__':
    model = PilotNet(64, 64, 4, 4, 0.1, "111", "111", 1)