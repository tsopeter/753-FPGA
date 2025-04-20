import torch
from torch.utils.data import DataLoader
import cv2
from model import PilotNet
from params import network_params
from dataset import ImageDataset
from contrib import PerformanceContrib, Stats
import numpy as np
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

device       = torch.device("cuda" if torch.cuda.is_available() else "cpu")

def get_network(n_conv : int, n_dense : int, width : int)->PilotNet:
    # check network parameters are valid
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
        densez=n_dense
    )

def evaluate(model : PilotNet, val_loader : DataLoader)->None:
    pass

def train(model : PilotNet, stats : Stats, train_loader : DataLoader, test_loader : DataLoader)->None:
    epochs = network_params['epoch']
    lr     = network_params['lr']

    optim  = torch.optim.Adam(model.parameters(), lr=lr)
    lossfn = torch.nn.MSELoss()

    for epoch in range(epochs):
        model.train()
        for images, turns in train_loader:
            images, turns = images.to(device), turns.to(device)

            preds = model(images)
            loss  = lossfn(turns, preds)

        model.eval()
        for images, turns in test_loader:
            images, turns = images.to(device), turns.to(device)

            preds = model(images)
            loss  = lossfn(turns, preds)
            
def evolution(n_generations : int, stats : PerformanceContrib, train_loader : DataLoader, test_loader :DataLoader, val_loader : DataLoader):
    pass

def brute(stats : PerformanceContrib, train_loader : DataLoader, test_loader : DataLoader, val_loader : DataLoader):
    n_convs = np.arange(min_conv, max_conv+1)
    n_dense = np.arange(min_dense, max_dense+1)
    widths  = np.arange(min_width, max_width, 5)

    for conv in n_convs:
        for dense in n_dense:
            for width in widths:
                model = get_network(conv, dense, width)

                train(model, stats.get_stats(width, conv, dense), train_loader, test_loader)
                evaluate(model, val_loader)

stats   = PerformanceContrib(network_params["lstats"])
dataset = ImageDataset(network_params["dataset_dir"], file_range=[0,7])
model = get_network(5,3,0.3)
print(f'Dataset length: {len(dataset)}')



