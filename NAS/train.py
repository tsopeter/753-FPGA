import torch
from torch.utils.data import DataLoader
import cv2
from model import PilotNet
from params import network_params
from dataset import ImageDataset

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

def train(model : PilotNet, dataloader : DataLoader)->PilotNet:
    epochs = network_params['epoch']
    lr     = network_params['lr']

    optim  = torch.optim.Adam(model.parameters(), lr=lr)
    lossfn = torch.nn.MSELoss()

    for epoch in range(epochs):
        for images, turns in dataloader:
            images, turns = images.to(device), turns.to(device)
            model.train()

            preds = model(images)
            loss  = lossfn(turns, preds)

    return model
            
def evolution(n_generations : int = 50):
    pass


dataset = ImageDataset(f'{network_params["dataset_dir"]}', file_range=[0,7])
print(f'Dataset length: {len(dataset)}')



