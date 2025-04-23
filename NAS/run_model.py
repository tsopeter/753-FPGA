import torch
from sklearn.model_selection import train_test_split
from torch.utils.data import Subset
import onnx
import qonnx
import qonnx.core
from qonnx.core.modelwrapper import ModelWrapper
import qonnx.core.onnx_exec
from dataset import ImageDataset
from torch.utils.data import DataLoader
from params import network_params
from unified import map_to_labels
import sys
import numpy as np
from qonnx.core.datatype import DataType

argv = sys.argv
if len(argv) != 2:
    print(f'Missing positional argument <model_filename>')
    exit(-1)

bit_width_used = int(argv[1][0])

model_filename = argv[1]
model = ModelWrapper(model_filename)
model.set_tensor_datatype(model.graph.input[0].name, DataType[f"UINT{bit_width_used}"])
#model.set_tensor_datatype(model.graph.input[0].name, DataType[f"FLOAT32"])

dataset = ImageDataset(network_params['dataset_dir'], file_range=[0,9])
labels = map_to_labels(dataset.turns) + 1
indicies = list(range(len(dataset)))
train_idx, test_idx = train_test_split(
    indicies, test_size=0.25, stratify=labels.numpy(), random_state=42
)

test_idx, val_idx = train_test_split(
    test_idx, test_size=0.5, stratify=labels[test_idx].numpy(), random_state=42
)

train_dataset = Subset(dataset, train_idx)
test_dataset  = Subset(dataset, test_idx)
val_dataset   = Subset(dataset, val_idx)


input_name  = model.graph.input[0].name
output_name = model.graph.output[0].name
output_shape = model.graph.output[0].type.tensor_type.shape.dim
output_shape = output_shape[-1].dim_value

predictions = np.zeros(shape=(len(val_dataset),))
targets     = np.zeros(shape=(len(val_dataset),))
values      = np.zeros(shape=(len(val_dataset),))
turnz       = np.zeros(shape=(len(val_dataset),))

max_value = (2**bit_width_used)-1

steps = len(val_dataset)//10
for i, (images, turns) in enumerate(val_dataset):
    labels = map_to_labels(turns) + 1
    images, labels = \
        images.cpu().unsqueeze(0).detach().numpy(), \
        labels.cpu().detach().numpy()
    
    # images = np.clip(np.round(images / 255.0 * max_value), 0, max_value).astype(np.float32)
    images = images / 255.0
    images = np.clip(np.round(images * max_value), 0, max_value)

    outputs = qonnx.core.onnx_exec.execute_onnx(model, input_dict={input_name : images})
    results = np.squeeze(np.array(outputs[output_name]))
    values[i] = results

    if output_shape != 3:
        predictions[i]=((map_to_labels(torch.from_numpy(results)))+1).numpy()
    else:
        predictions[i]=np.argmax(results)
    targets[i]=labels
    turnz[i]=turns.numpy()

    if (i % steps == 0):
        print("*", end='')
print('')

# print results
print(f'Accuracy: {100*(np.sum(predictions==targets))/len(predictions)}%')

# print loss
print(f'Loss: {np.mean((values-turnz)**2)}')

left   = (targets==0)
center = (targets==1)
right  = (targets==2)

# per class accuracy
print(f'Class -1: {100*np.sum(predictions[left]==targets[left])/np.sum(left):.2f}%, {np.sum(predictions[left]==targets[left])}/{np.sum(left)}')
print(f'Class  0: {100*np.sum(predictions[center]==targets[center])/np.sum(center):.2f}%, {np.sum(predictions[center]==targets[center])}/{np.sum(center)}')
print(f'Class +1: {100*np.sum(predictions[right]==targets[right])/np.sum(right):.2f}%, {np.sum(predictions[right]==targets[right])}/{np.sum(right)}')
