import torch
import torch.nn as nn
from brevitas.nn import QuantConv2d, QuantReLU, QuantLinear, QuantIdentity
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

if __name__ == '__main__':
    model = PilotNet(64, 64, 4, 4, 0.4, "011", "011", 1)