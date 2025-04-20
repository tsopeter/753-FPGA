import torch
from torch.utils.data import Dataset
from tools import parse_file
import os

class ImageDataset(Dataset):
    def __init__(self, dataset_dir, file_range=[0, 9]):
        self._dataset_dir = dataset_dir
        all_images = []
        all_turns = []

        for i in range(file_range[0], file_range[1] + 1):
            file_name = os.path.join(self._dataset_dir, f'epoch{i}')
            images, turns = parse_file(file_name)
            all_images.append(torch.from_numpy(images))  # (N, 1, H, W)
            all_turns.append(torch.from_numpy(turns))    # (N,)

        self.images = torch.cat(all_images, dim=0).to(torch.uint8)  # shape: (Total, 1, H, W)
        self.turns = torch.cat(all_turns, dim=0).to(torch.int8)     # shape: (Total,)

    def __len__(self):
        return len(self.turns)

    def __getitem__(self, index):
        return self.images[index], self.turns[index]