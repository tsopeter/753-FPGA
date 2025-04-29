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

model_filename = argv[1]
model = ModelWrapper(model_filename)
input_name  = model.graph.input[0].name
output_name = model.graph.output[0].name

data = int(argv[2],0)

image = (torch.ones(size=(1,1,64,64),dtype=torch.float)*data).numpy()

outputs = qonnx.core.onnx_exec.execute_onnx(model, input_dict={input_name : image})
results = np.squeeze(np.array(outputs[output_name]))
print(results)

