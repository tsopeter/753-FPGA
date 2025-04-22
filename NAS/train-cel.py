import torch
import onnx
from datetime import datetime
from brevitas.export import export_qonnx
from brevitas.export import export_qonnx
from qonnx.util.cleanup import cleanup as qonnx_cleanup
from qonnx.core.modelwrapper import ModelWrapper
from qonnx.core.datatype import DataType
from torch.utils.data import DataLoader
import cv2
from model import PilotNet
from params import network_params
from dataset import ImageDataset
from contrib import PerformanceContrib, Stats
import numpy as np
from collections import defaultdict
from unified import *
from sklearn.utils import class_weight
from sklearn.model_selection import train_test_split
from torch.utils.data import Subset
import warnings
warnings.filterwarnings("ignore", category=UserWarning)

model_dir    = f'./{network_params["bit_width"]}-bit'
device       = torch.device("cuda" if torch.cuda.is_available() else "cpu")

def evaluate(model : PilotNet, stats : Stats, val_loader : DataLoader, weights=None):
    model.eval()

    lossfn = torch.nn.CrossEntropyLoss(weight=weights)

    with torch.no_grad():
        model.eval()
        testing_loss = 0.0
        total_correct = 0
        total_count = 0

        class_correct = defaultdict(int)
        class_total = defaultdict(int)

        for images, turns in val_loader:
            images, turns = images.to(device), turns.to(device)
            images = images / 255.0

            labels = map_to_labels(turns.view(-1)) + 1  # ground truth class indices

            logits = model(images)
            loss = lossfn(logits, labels)
            testing_loss += loss.item() * images.size(0)

            preds = torch.argmax(logits, dim=1)
            for cls in [0, 1, 2]:
                mask = (labels == cls)
                class_correct[cls] += (preds[mask] == cls).sum().item()
                class_total[cls] += mask.sum().item()

            total_correct += (preds == labels).sum().item()
            total_count += labels.size(0)

        average_testing_loss = testing_loss / len(test_loader.dataset)
        accuracy = 100 * total_correct / total_count

        print(f"Validation Loss = {average_testing_loss:.4f}, Accuracy = {accuracy:.2f}%")

        for cls, label in zip([0, 1, 2], [-1, 0, 1]):
            correct = class_correct[cls]
            total = class_total[cls]
            if total > 0:
                acc = 100 * correct / total
                print(f"  Class {label}: {correct}/{total} correct ({acc:.2f}%)")
            else:
                print(f"  Class {label}: No samples")
    return average_testing_loss


def train(model: PilotNet, train_loader: DataLoader, test_loader: DataLoader, weights=None)->None:
    epochs = network_params['epoch']
    lr     = network_params['lr']

    lossfn = torch.nn.CrossEntropyLoss(weight=weights)
    optim = torch.optim.Adam(model.parameters(), lr=lr)

    for epoch in range(epochs):
        model.train()
        training_loss = 0.0

        for images, turns in train_loader:
            images, turns = images.to(device), turns.to(device)
            images = images / 255.0

            labels = map_to_labels(turns.view(-1)) + 1  # {-1,0,1} → {0,1,2}
            optim.zero_grad()
            logits = model(images)  # (N, 3), no activation


            loss = lossfn(logits, labels)

            loss.backward()
            optim.step()

            training_loss += loss.item() * images.size(0)

        average_training_loss = training_loss / len(train_loader.dataset)

        model.eval()
        testing_loss = 0.0
        total_correct = 0
        total_count = 0

        class_correct = defaultdict(int)
        class_total = defaultdict(int)

        for images, turns in test_loader:
            images, turns = images.to(device), turns.to(device)
            images = images / 255.0

            labels = map_to_labels(turns.view(-1)) + 1  # ground truth class indices

            with torch.no_grad():
                logits = model(images)
                loss = lossfn(logits, labels)
                testing_loss += loss.item() * images.size(0)

                preds = torch.argmax(logits, dim=1)

                for cls in [0, 1, 2]:
                    mask = (labels == cls)
                    class_correct[cls] += (preds[mask] == cls).sum().item()
                    class_total[cls] += mask.sum().item()

                total_correct += (preds == labels).sum().item()
                total_count += labels.size(0)

        average_testing_loss = testing_loss / len(test_loader.dataset)
        accuracy = 100 * total_correct / total_count

        print(f"Epoch {epoch+1}: Training Loss = {average_training_loss:.4f}, "
              f"Testing Loss = {average_testing_loss:.4f}, Accuracy = {accuracy:.2f}%")

        for cls, label in zip([0, 1, 2], [-1, 0, 1]):
            correct = class_correct[cls]
            total = class_total[cls]
            if total > 0:
                acc = 100 * correct / total
                print(f"  Class {label}: {correct}/{total} correct ({acc:.2f}%)")
            else:
                print(f"  Class {label}: No samples")

def evolution(n_generations : int, stats : PerformanceContrib, train_loader : DataLoader, test_loader :DataLoader, val_loader : DataLoader):
    pass

def brute(stats : PerformanceContrib, train_loader : DataLoader, test_loader : DataLoader, val_loader : DataLoader, weight=None):
    n_convs = np.arange(min_conv, max_conv+1)
    n_dense = np.arange(min_dense, max_dense+1)
    widths  = np.linspace(min_width, max_width, 5)


    best_loss = np.inf
    best_model = None
    config = (-1, -1, -1)

    for conv in n_convs:
        for dense in n_dense:
            for width in widths:
                for i in range(5):
                    model = get_network(conv, dense, width, output_features=3, use_softmax=True).to(device)

                    train(model, train_loader, test_loader, weights=weight)
                    loss = evaluate(model, stats.get_stats(np.round(width, decimals=1), conv, dense), val_loader, weights=weight)

                    # obtain the best model in 5-passes (which has the lowest validation loss)
                    if loss < best_loss:
                        best_loss  = loss
                        best_model = model
                        config = (conv, dense, width)
    
    return best_model, best_loss, config


stats   = PerformanceContrib(network_params["lstats"])

dataset = ImageDataset(network_params['dataset_dir'], file_range=[0,8])
val_dataset = ImageDataset(network_params['dataset_dir'], file_range=[9,9])
print(f'Unique Turn values: {torch.unique(dataset.turns)}')
turns = map_to_labels(dataset.turns).cpu().detach().numpy() + 1
class_weights = torch.tensor(class_weight.compute_class_weight('balanced', classes=np.array([0, 1, 2]), y=turns)).to(device).to(torch.float32)

labels = map_to_labels(dataset.turns) + 1  # {−1,0,1} → {0,1,2}

# Generate indices
indices = list(range(len(dataset)))
train_idx, test_idx = train_test_split(
    indices, test_size=0.2, stratify=labels.numpy(), random_state=42
)

train_dataset = Subset(dataset, train_idx)
test_dataset  = Subset(dataset, test_idx)

train_loader  = DataLoader(train_dataset, network_params["bsz"], shuffle=True)
test_loader   = DataLoader(test_dataset, network_params["bsz"], shuffle=False)
val_loader    = DataLoader(val_dataset, network_params["bsz"], shuffle=False)

print(f'Training Data')
print(f'\tTraining Dataset: {len(train_dataset)}, {get_dataset_distribution(train_dataset.dataset.turns)}')
print(f'\tTesting Dataset: {len(test_dataset)}, {get_dataset_distribution(test_dataset.dataset.turns)}')

print(f'Running brute force')

class_weights[class_weights<1]=0.5
best_model, best_loss, config = brute(stats, train_loader, test_loader, val_loader, weight=class_weights)

name   = f'{datetime.now()}'.replace(' ', '-').replace(':', '-').replace('.', '-')
ready_model_filename = model_dir + f'/{name}.onnx'
input_a = np.random.randint(0, 255, size=(1,1,network_params["image_height"], network_params["image_width"])).astype(np.float32)
input_t = torch.from_numpy(input_a)

best_model.cpu()
export_qonnx(best_model, export_path=ready_model_filename, input_t=input_t)
qonnx_cleanup(ready_model_filename, out_file=ready_model_filename)

model = ModelWrapper(ready_model_filename)
model.set_tensor_datatype(model.graph.input[0].name, DataType[f'UINT{network_params["bit_width"]}'])
model.save(ready_model_filename)

config = np.array(config)
loss   = np.array(best_loss)
np.save(f"{model_dir}/{name}-loss.npy", loss)
np.save(f"{model_dir}/{name}-config.npy", config)





