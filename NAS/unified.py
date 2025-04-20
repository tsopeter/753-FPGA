import torch
from torch.utils.data import DataLoader
import cv2
from model import PilotNet
from params import network_params
from dataset import ImageDataset
from contrib import PerformanceContrib, Stats
import numpy as np
from collections import defaultdict
import warnings
warnings.filterwarnings("ignore", category=UserWarning)

image_height = network_params["image_height"]
image_width  = network_params["image_width"]
min_conv     = network_params['minimum_conv_layers']
max_conv     = network_params['maximum_conv_layers']
min_dense    = network_params['minimum_dense_layers']
max_dense    = network_params['maximum_dense_layers']
min_width    = network_params['minimum_width']
max_width    = network_params['maximum_width']
bit_width    = network_params['bit_width']

def get_dataset_distribution(x: torch.Tensor):

    left   = torch.sum(x < -0.15)
    right  = torch.sum(x > 0.15)
    center = torch.sum((x >= -0.15) & (x <= 0.15))

    return int(left), int(center), int(right)

def map_to_labels(x: torch.Tensor) -> torch.Tensor:
    return torch.where(
        x < -0.15, -1,
        torch.where(x > 0.15, 1, 0)
    )

def get_network(n_conv : int, n_dense : int, width : int, output_features : int = 1,
                 use_softmax : bool = False, 
                 quantized : bool = True,
                 check_inputs : bool = True)->PilotNet:
    # check network parameters are valid
    if check_inputs:
        if (n_conv < min_conv or n_conv > max_conv):
            raise ValueError(f"n_conv must be in range {min_conv} and {max_conv}")
        
        if (n_dense < min_dense or n_dense > max_dense):
            raise ValueError(f"n_dense must be in range {min_dense} and {max_dense}")
        
        if (width < min_width or width > max_width):
            raise ValueError(f"width must be in range {min_width} and {max_width}")
    
    return PilotNet(
        width=image_width, height=image_height,
        weight_bit_width=bit_width,
        act_bit_width=bit_width,
        width_multiplier=width,
        convz=n_conv,
        densez=n_dense,
        out_features=output_features,
        use_softmax=use_softmax,
        non_quantized=not quantized
    )