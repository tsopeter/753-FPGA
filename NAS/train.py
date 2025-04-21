import torch
from torch.utils.data import DataLoader, WeightedRandomSampler
import cv2
from model import PilotNet
from params import network_params
from dataset import ImageDataset
from contrib import PerformanceContrib, Stats
import numpy as np
from collections import defaultdict
from sklearn.utils import class_weight
from matplotlib import pyplot as plt
from unified import *  # includes map_to_labels
import warnings
warnings.filterwarnings("ignore", category=UserWarning)

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

LIMIT = 0.1  # threshold for label mapping

def evaluate(model: PilotNet, val_loader: DataLoader) -> None:
    lossfn = torch.nn.MSELoss()
    with torch.no_grad():
        model.eval()
        validation_loss = 0.0
        total_correct = 0
        total_count = 0
        class_correct = defaultdict(int)
        class_total = defaultdict(int)

        for images, turns in val_loader:
            images, turns = images.to(device), turns.to(device)
            images = images / 255.0
            turns = turns.unsqueeze(1)

            preds = model(images)
            loss = lossfn(preds, turns)
            validation_loss += loss.item() * images.size(0)

            expected = map_to_labels(preds, limit=LIMIT)
            true = map_to_labels(turns, limit=LIMIT)

            for label in [-1, 0, 1]:
                mask = (true == label)
                class_correct[label] += torch.sum((expected == true) & mask).item()
                class_total[label] += mask.sum().item()

            total_correct += torch.sum(expected == true).item()
            total_count += len(true)

        average_validation_loss = validation_loss / len(val_loader.dataset)
        accuracy = total_correct / total_count

        print(f'Validation Loss: {average_validation_loss:.4f}, Accuracy: {100*accuracy:.2f}%')
        for label in [-1, 0, 1]:
            total = class_total[label]
            correct = class_correct[label]
            if total > 0:
                acc = 100 * correct / total
                print(f"  Class {label}: {correct}/{total} correct ({acc:.2f}%)")
            else:
                print(f"  Class {label}: No samples")


def train(model: PilotNet, train_loader: DataLoader, test_loader: DataLoader) -> None:
    epochs = network_params['epoch']
    lr = network_params['lr']

    optim = torch.optim.Adam(model.parameters(), lr=lr)
    lossfn = torch.nn.MSELoss()

    for epoch in range(epochs):
        model.train()
        training_loss = 0.0
        for images, turns in train_loader:
            images, turns = images.to(device), turns.to(device)
            images = images / 255.0 # normalization

            optim.zero_grad()
            preds = model(images)
            loss = lossfn(preds, turns)

            loss.backward()
            optim.step()

            training_loss += loss.item() * images.size(0)
        average_training_loss = training_loss / len(train_loader.dataset)

        model.eval()
        with torch.no_grad():
            testing_loss = 0.0
            total_correct = 0
            total_count = 0
            class_correct = defaultdict(int)
            class_total = defaultdict(int)

            for images, turns in test_loader:
                images, turns = images.to(device), turns.to(device)
                images = images / 255.0
                turns = turns.unsqueeze(1)

                preds = model(images)
                loss = lossfn(preds, turns)
                testing_loss += loss.item() * images.size(0)

                expected = map_to_labels(preds, limit=LIMIT)
                true = map_to_labels(turns, limit=LIMIT)

                for label in [-1, 0, 1]:
                    mask = (true == label)
                    class_correct[label] += torch.sum((expected == true) & mask).item()
                    class_total[label] += mask.sum().item()

                total_correct += torch.sum(expected == true).item()
                total_count += len(true)

            average_testing_loss = testing_loss / len(test_loader.dataset)
            accuracy = total_correct / total_count

            print(f'Epoch: {epoch+1}: Training Loss: {average_training_loss:.4f}, Testing Loss: {average_testing_loss:.4f}, Accuracy: {100*accuracy:.2f}%')
            for label in [-1, 0, 1]:
                total = class_total[label]
                correct = class_correct[label]
                if total > 0:
                    acc = 100 * correct / total
                    print(f"  Class {label}: {correct}/{total} correct ({acc:.2f}%)")
                else:
                    print(f"  Class {label}: No samples")


def evolution(n_generations: int, stats: PerformanceContrib, train_loader: DataLoader, test_loader: DataLoader, val_loader: DataLoader):
    # Optional: Evolutionary NAS or tuning
    pass

def brute(stats: PerformanceContrib, train_loader: DataLoader, test_loader: DataLoader, val_loader: DataLoader):
    n_convs = np.arange(min_conv, max_conv + 1)
    n_dense = np.arange(min_dense, max_dense + 1)
    widths = np.arange(min_width, max_width, 5)

    for conv in n_convs:
        for dense in n_dense:
            for width in widths:
                model = get_network(conv, dense, width).to(device)
                train(model, train_loader, test_loader)
                evaluate(model, val_loader)


# Load datasets
stats = PerformanceContrib(network_params["lstats"])
train_dataset = ImageDataset(network_params["dataset_dir"], file_range=[0, 7])
test_dataset = ImageDataset(network_params["dataset_dir"], file_range=[8, 8])
val_dataset = ImageDataset(network_params["dataset_dir"], file_range=[9, 9])

train_loader = DataLoader(train_dataset, batch_size=network_params["bsz"], shuffle=True)
test_loader = DataLoader(test_dataset, batch_size=network_params["bsz"], shuffle=False)
val_loader = DataLoader(val_dataset, batch_size=network_params["bsz"], shuffle=False)

# Show dataset distribution
print(f'Unique Turn values: {torch.unique(train_dataset.turns)}')
print(f'\tTraining Dataset: {len(train_dataset)}, {get_dataset_distribution(train_dataset.turns)}')
print(f'\tTesting Dataset: {len(test_dataset)}, {get_dataset_distribution(test_dataset.turns)}')
print(f'\tValidation Dataset: {len(val_dataset)}, {get_dataset_distribution(val_dataset.turns)}')

# Create and train model
model = get_network(5, 3, 0.5, check_inputs=False, use_softmax=False).to(device)
train(model, train_loader, test_loader)
evaluate(model, val_loader)