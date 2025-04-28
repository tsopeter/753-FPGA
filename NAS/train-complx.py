import torch
from torch.utils.data import DataLoader, WeightedRandomSampler
import onnx
from datetime import datetime
from brevitas.export import export_qonnx
from brevitas.export import export_qonnx
from qonnx.util.cleanup import cleanup as qonnx_cleanup
from qonnx.core.modelwrapper import ModelWrapper
from qonnx.core.datatype import DataType
import cv2
from qmodel2 import PilotNet
from params import network_params
from dataset import ImageDataset
from contrib import PerformanceContrib, Stats
import numpy as np
from collections import defaultdict
from sklearn.utils import class_weight
from matplotlib import pyplot as plt
from unified import *  # includes map_to_labels
from torch.utils.data import Subset
from sklearn.model_selection import train_test_split
import warnings
warnings.filterwarnings("ignore", category=UserWarning)

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
model_dir = f'./{network_params["bit_width"]}-bit-4-mse-fixed-complex-bn'

bit_width = network_params['bit_width']
max_value = (2**bit_width)-1

def get_weighted_mse_loss(weights: torch.Tensor):
    if weights is None:
        return torch.nn.MSELoss()

    def loss_fn(pred: torch.Tensor, target: torch.Tensor) -> torch.Tensor:
        labels = map_to_labels(target.view(-1)) + 1  # map to {-1,0,1} → {0,1,2}
        per_weights = weights[labels]                # shape: [N]
        errors = target.view(-1) - pred.view(-1).value
        return torch.mean(per_weights * (errors ** 2))

    return loss_fn

LIMIT = 0.52/2  # threshold for label mapping
loss_fn = get_weighted_mse_loss

def evaluate(model: PilotNet, val_loader: DataLoader, weights=None) -> None:
    lossfn = loss_fn(weights)
    with torch.no_grad():
        model.eval()
        validation_loss = 0.0
        total_correct = 0
        total_count = 0
        class_correct = defaultdict(int)
        class_total = defaultdict(int)
        count = 0

        for images, turns in val_loader:
            images, turns = images.to(device), turns.to(device)
            turns = turns.unsqueeze(1)

            preds = model(images)
            loss = lossfn(preds, turns)
            validation_loss += loss.item() * images.size(0)
            count += images.shape[0]

            preds = preds.value
            expected = map_to_labels(preds, limit=LIMIT)
            true = map_to_labels(turns, limit=LIMIT)

            for label in [-1, 0, 1]:
                mask = (true == label)
                class_correct[label] += torch.sum((expected == true) & mask).item()
                class_total[label] += mask.sum().item()

            total_correct += torch.sum(expected == true).item()
            total_count += len(true)

        average_validation_loss = validation_loss / count
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
    
    return average_validation_loss, accuracy


def train(model: PilotNet, train_loader: DataLoader, test_loader: DataLoader, weights=None) -> None:
    epochs = network_params['epoch']
    lr = network_params['lr']

    optim = torch.optim.Adam(model.parameters(), lr=lr)
    lossfn = loss_fn(weights)

    for epoch in range(epochs):
        model.train()
        training_loss = 0.0
        count = 0
        for images, turns in train_loader:
            images, turns = images.to(device), turns.to(device)
            turns = turns.unsqueeze(1)

            optim.zero_grad()
            preds = model(images)

            loss = lossfn(preds, turns)

            loss.backward()
            optim.step()

            training_loss += loss.item() * images.size(0)
            count += images.shape[0]
        average_training_loss = training_loss / count

        model.eval()
        with torch.no_grad():
            testing_loss = 0.0
            total_correct = 0
            total_count = 0
            class_correct = defaultdict(int)
            class_total = defaultdict(int)
            count = 0
            for images, turns in test_loader:
                images, turns = images.to(device), turns.to(device)

                turns = turns.unsqueeze(1)

                preds = model(images)
                loss = lossfn(preds, turns)
                testing_loss += loss.item() * images.size(0)
                count += images.size(0)

                preds = preds.value
                expected = map_to_labels(preds, limit=LIMIT)
                true = map_to_labels(turns, limit=LIMIT)

                for label in [-1, 0, 1]:
                    mask = (true == label)
                    class_correct[label] += torch.sum((expected == true) & mask).item()
                    class_total[label] += mask.sum().item()

                total_correct += torch.sum(expected == true).item()
                total_count += len(true)

            average_testing_loss = testing_loss / count
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

            if (epoch >= 5):
                if average_testing_loss > 0.12:
                    return False
    return True

def brute(stats: PerformanceContrib, train_loader: DataLoader, test_loader: DataLoader, val_loader: DataLoader, weights=None):
    n_convs = np.arange(min_conv, max_conv + 1)
    n_dense = np.arange(min_dense, max_dense + 1)

    n_widths = int(10*np.round(max_width-min_width+0.1,decimals=1))

    widths = np.linspace(min_width, max_width, n_widths)
    widths = np.round(widths, decimals=1)

    print(f'Number of combinations: {len(n_convs)*len(n_dense)*len(widths)*5}')

    config = (-1, -1, -1)
    best_loss = np.inf
    best_acc  = 0
    best_model = None

    history = {}

    good_models = read_and_filter_models('../projects/layer_stats_complx', max_bram=28, max_lut=5000)
    print(f"Number of models to train: {len(good_models)}")
    for params in good_models:
        width, convz, densez, bram, lut, latency = params
        width = np.round(width,decimals=1)
        print(f'******************MODEL: {(convz, densez, width)}*****************')
        for i in range(5):
            print(f'\t**************RUN: {i}***************')
            model = PilotNet(width=70, height=70, weight_bit_width=bit_width, 
                                 act_bit_width=bit_width, 
                                 width_multiplier=width, 
                                 convz=convz, 
                                 densez=densez,
                                 out_features=1).to(device)
            result = train(model, train_loader, test_loader, weights=weights)


            if not result:
                print(f'Skipping...')
                continue

            loss, acc = evaluate(model, test_loader, weights=weights)

            history[f'{(convz, densez, np.round(width,decimals=1))}-{i}']=(loss, acc)

            if loss < best_loss:
                best_loss  = loss
                best_acc   = acc
                best_model = model
                config     = (convz, densez, width)
    
    return (best_model, best_loss, best_acc, config, history)

# Load datasets
#stats = PerformanceContrib(network_params["lstats"])
stats = None
dataset = ImageDataset(network_params['dataset_dir'], file_range=[0,9], img_size=(70,70))
labels = map_to_labels(dataset.turns) + 1
indicies = list(range(len(dataset)))
train_idx, test_idx = train_test_split(
    indicies, test_size=0.35, random_state=0
)
print(f'Dataset length: {len(dataset)}')

train_dataset = Subset(dataset, train_idx)
test_dataset  = Subset(dataset, test_idx)

train_labels  = (map_to_labels(train_dataset.dataset.turns[train_idx]) + 1).numpy()
test_vals = test_dataset.dataset.turns[test_idx]
test_labels   = (map_to_labels(test_vals) + 1).numpy()

np_test_vals = test_vals.numpy()

weights = class_weight.compute_class_weight('balanced', classes=np.unique(train_labels), y=train_labels)
weights = torch.from_numpy(weights).to(device)
#weights = torch.tensor([1, 1, 1], dtype=torch.float32).to(device)
print(weights)

train_loader  = DataLoader(train_dataset, network_params["bsz"], shuffle=True)
test_loader   = DataLoader(test_dataset, network_params["bsz"], shuffle=False)
print(f"Maximums={network_params['maximum_conv_layers'], network_params['maximum_dense_layers'], network_params['maximum_width']}")

# Show dataset distribution
print(f'Unique Turn values: {torch.unique(train_dataset.dataset.turns)}')
print(f'\tTraining Dataset: {len(train_dataset)}, {get_dataset_distribution(train_dataset.dataset.turns)}')
print(f'\tTesting Dataset: {len(test_dataset)}, {get_dataset_distribution(test_dataset.dataset.turns)}')

model, loss, acc, config, history = brute(stats, train_loader, test_loader, None, weights)

name   = f'{datetime.now()}'.replace(' ', '-').replace(':', '-').replace('.', '-')

write_dict_to_txt(history, f'{model_dir}/{name}-history.txt')


ready_model_filename = model_dir + f'/{name}.onnx'
input_a = np.random.randint(0, 255, size=(1,1,network_params["image_height"], network_params["image_width"])).astype(np.float32)
input_t = torch.from_numpy(input_a)

model.cpu()
export_qonnx(model, export_path=ready_model_filename, input_t=input_t)
qonnx_cleanup(ready_model_filename, out_file=ready_model_filename)

model = ModelWrapper(ready_model_filename)
model.set_tensor_datatype(model.graph.input[0].name, DataType[f'UINT8'])
model.set_tensor_datatype(model.graph.output[0].name, DataType["FIXED<16,2>"])
model.save(ready_model_filename)

config = np.array(config)
loss   = np.array(loss)
acc    = np.array(acc)
np.save(f"{model_dir}/{name}-loss.npy", loss)
np.save(f"{model_dir}/{name}-config.npy", config)
np.save(f"{model_dir}/{name}-accuracy.npy", acc)