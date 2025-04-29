import torch
import torch.nn as nn
import brevitas as brev
import brevitas.nn as qnn
from   brevitas.nn import QuantConv2d, QuantReLU, QuantLinear, QuantIdentity
from brevitas.quant import Int32Bias, fixed_point, Int8ActPerTensorFloat, Int8Bias

# PilotNet model
class PilotNet(nn.Module):
    def __init__(self, width : int = 320, height : int = 240,
                weight_bit_width : int = 4, act_bit_width : int = 4, width_multiplier : float = 1.0,
                convz : int = 5, densez : str = 3, out_features : int=1, use_softmax : bool=False,
                non_quantized : bool = False):
        super(PilotNet, self).__init__()

        self.height = height
        self.width  = width
        self.width_multiplier  = width_multiplier

        self.weight_bit_width = weight_bit_width
        self.act_bit_width    = act_bit_width

        def create_quant2d(in_channels, out_channels, kernel_size, stride):
            conv = QuantConv2d(
                in_channels, out_channels,
                kernel_size=kernel_size, stride=stride,
                weight_bit_width=self.weight_bit_width,
                weight_scaling_impl_type='const',   # <-- CRITICAL
                bias_quant=Int8Bias,
                act_bit_width=self.act_bit_width,
                return_quant_tensor=True
            )
            return conv

 
        self.conv1  = create_quant2d(1, int(24 * self.width_multiplier), 5, 3)
        self.conv2  = create_quant2d(int(24*self.width_multiplier), int(36*self.width_multiplier), kernel_size=5, stride=2)
        self.conv3  = create_quant2d(int(36*self.width_multiplier), int(48*self.width_multiplier), kernel_size=5, stride=2)
        self.conv4  = create_quant2d(int(48*self.width_multiplier), int(64*self.width_multiplier), kernel_size=3, stride=1)
        self.conv5  = create_quant2d(int(64*self.width_multiplier), int(64*self.width_multiplier), kernel_size=3, stride=1)

        self.flatten = nn.Flatten()

        cvz = [
            self.conv1,
            self.conv2,
            self.conv3,
            self.conv4,
            self.conv5,
        ]

        self.cvz = nn.ModuleList()
        for i in range(min(len(cvz), convz)):
            self.cvz.append(cvz[i])

        self.flattened_size = self._get_flattened_size()

        if not non_quantized:
            self.relu1  = QuantReLU(bit_width=self.act_bit_width, return_quant_tensor=True, act_bit_width=self.act_bit_width)
        else:
            self.relu1  = nn.ReLU()

        hidden_sizes = [100, 50, 10]

        for i in range(len(hidden_sizes)):
            hidden_sizes[i]=int(hidden_sizes[i]*self.width_multiplier)
        
        self.fcs = nn.ModuleList()
        in_features = self.flattened_size

        for i in range(min(densez, len(hidden_sizes))):
            self.fcs.append(QuantLinear(in_features, hidden_sizes[i], bias=True, weight_bit_width=self.weight_bit_width, bias_quant=Int8Bias, return_quant_tensor=True))
            in_features = hidden_sizes[i]
            
        self.output = QuantLinear(in_features, out_features=out_features, bias=True, weight_bit_width=self.weight_bit_width, bias_quant=Int8Bias, return_quant_tensor=True)

    def _get_flattened_size(self):
        with torch.no_grad():
            x = torch.zeros(1,1,self.height,self.width)
            x = brev.Tensor(x)
            print(x)
            for i, cvz in enumerate(self.cvz):
                print(i)
                x = cvz(x)
            x = self.flatten(x)
        return x.shape[1]
    
    def forward(self, x):
        #x = x / 255.0   # normalize to 0->1

        for cvz in self.cvz:
            x = self.relu1(cvz(x))
        x = self.flatten(x)
        for fc in self.fcs:
            x = self.relu1(fc(x))
        x = self.output(x)

        return x
    
if __name__ == '__main__':
    import numpy as np
    from brevitas.export import export_qonnx
    from qonnx.util.cleanup import cleanup as qonnx_cleanup
    from qonnx.core.modelwrapper import ModelWrapper
    from qonnx.core.datatype import DataType
    from dataset import ImageDataset
    from unified import map_to_labels
    from sklearn.model_selection import train_test_split
    from sklearn.utils import class_weight
    from torch.utils.data import Subset, DataLoader
    from collections import defaultdict

    LIMIT = 0.52/2
    device = "cuda"


    model = PilotNet(64, 64, 4, 4, 0.2, 4, 2, 1, False, False).to(device)

    def get_weighted_mse_loss(weights: torch.Tensor):
        if weights is None:
            return torch.nn.MSELoss()

        def loss_fn(pred: torch.Tensor, target: torch.Tensor) -> torch.Tensor:
            labels = map_to_labels(target.view(-1)) + 1  # map to {-1,0,1} → {0,1,2}
            per_weights = weights[labels]                # shape: [N]
            errors = pred.view(-1) - target.view(-1)
            return torch.mean(per_weights * errors ** 2)

        return loss_fn
    
    def train(model: PilotNet, train_loader: DataLoader, test_loader: DataLoader, weights=None) -> None:
        epochs = 16
        lr = 1e-4

        optim = torch.optim.Adam(model.parameters(), lr=lr)
        lossfn_1 = get_weighted_mse_loss(weights)
        lossfn_2 = get_weighted_mse_loss(weights)

        for epoch in range(epochs):
            model.train()
            training_loss = 0.0
            for images, turns in train_loader:
                images, turns = images.to(device), turns.to(device)
                turns = turns.unsqueeze(1)

                #images = torch.round(images / 255.0 * max_value)
                #images = torch.clip(images, 0, max_value)

                optim.zero_grad()
                preds = model(images)

                loss = lossfn_1(preds, turns)

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

                    #images = torch.round(images / 255.0 * max_value)
                    #images = torch.clip(images, 0, max_value)
                    turns = turns.unsqueeze(1)

                    preds = model(images)
                    loss = lossfn_2(preds, turns)
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

                if epoch >= 3:
                    if average_testing_loss > 0.1:
                        return False
        return True

    # Load datasets
    #stats = PerformanceContrib(network_params["lstats"])
    stats = None
    dataset = ImageDataset('../deeppicar', file_range=[0,9], img_size=(64,64))
    labels = map_to_labels(dataset.turns) + 1
    indicies = list(range(len(dataset)))
    train_idx, test_idx = train_test_split(
        indicies, test_size=0.25, stratify=labels.numpy(), random_state=42
    )

    train_dataset = Subset(dataset, train_idx)
    test_dataset  = Subset(dataset, test_idx)

    train_loader  = DataLoader(train_dataset, 128, shuffle=True)
    test_loader   = DataLoader(test_dataset, 128, shuffle=False)

    train_labels  = (map_to_labels(train_dataset.dataset.turns) + 1).numpy()

    weights = class_weight.compute_class_weight('balanced', classes=np.unique(train_labels), y=train_labels)
    weights = torch.from_numpy(weights).to(device)

    train(model, train_loader, test_loader, weights)

    class OutputModel(torch.nn.Module):
        def __init__(self)->None:
            super(OutputModel, self).__init__()
            self.pretrained = model

            self.out = QuantIdentity(
                quant_type='int',
                scaling_impl_type='const',
                bit_width=16,
                min_val=-1,
                max_val=1
            )

        def forward(self, x):
            x = x / 255.0
            self.pretrained(x)

    model = OutputModel()

    ready_model_filename = './tmp/' + f'tmp.onnx'
    input_a = np.random.randint(0, 255, size=(1,1, 64, 64)).astype(np.float32)
    input_t = torch.from_numpy(input_a)
    input_t *= 1/255.0

    model.cpu()
    export_qonnx(model, export_path=ready_model_filename, input_t=input_t)
    qonnx_cleanup(ready_model_filename, out_file=ready_model_filename)

    model = ModelWrapper(ready_model_filename)
    model.set_tensor_datatype(model.graph.input[0].name, DataType[f'UINT8'])
    model.set_tensor_datatype(model.graph.output[0].name, DataType["FIXED<16,2>"])
    model.save(ready_model_filename)


    