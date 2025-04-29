import torch
from torch.utils.data import DataLoader
import cv2
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

def map_to_labels(x: torch.Tensor, limit : float=0.52/2) -> torch.Tensor:
    return torch.where(
        x < -limit, -1,
        torch.where(x > limit, 1, 0)
    )

def write_dict_to_txt(d: dict, filename: str) -> None:
    with open(filename, 'w') as f:
        for key, value in d.items():
            f.write(f"{key}: {value}\n")

import json
import os
import numpy as np

def read_and_filter_models(folder, max_bram=28, max_lut=4000):
    """
    Read all models from a folder and return those that satisfy BRAM and LUT constraints.

    Args:
        folder: Folder containing .json and .perf.json files.
        max_bram: Maximum allowed BRAM_18K usage.
        max_lut: Maximum allowed LUT usage.

    Returns:
        List of tuples: (width, convz, densez, bram, lut, latency)
    """
    good_models = []

    for file_name in os.listdir(folder):
        if file_name.endswith('.json') and not file_name.endswith('.perf.json'):
            base_name = file_name[:-5]  # Remove ".json"
            json_path = os.path.join(folder, f"{base_name}.json")
            perf_path = os.path.join(folder, f"{base_name}.perf.json")

            if not os.path.exists(perf_path):
                continue  # Skip if missing perf file

            try:
                # Parse filename
                parts = base_name.split('.')
                width = float(f"{parts[0]}.{parts[1]}")
                convz = parts[2]
                densez = parts[3]
                conv_idx = int(convz, 2)
                dense_idx = int(densez, 2)
            except Exception as e:
                print(f"Skipping {base_name} due to parsing error: {e}")
                continue

            try:
                # Load .json
                with open(json_path, 'r') as f:
                    json_data = json.load(f)
                    bram = json_data['total']['BRAM_18K']
                    lut = json_data['total']['LUT']

                # Load .perf.json
                with open(perf_path, 'r') as f:
                    perf_data = json.load(f)
                    latency = perf_data['estimated_latency_ns']
            except Exception as e:
                print(f"Skipping {base_name} due to file read error: {e}")
                continue

            # Apply filter
            if bram < max_bram and lut < max_lut:
                good_models.append((width, convz, densez, bram, lut, latency))

    return good_models