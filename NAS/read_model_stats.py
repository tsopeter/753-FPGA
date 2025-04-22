import numpy as np
import sys

argv = sys.argv

if len(argv) != 2:
    print(f'Must be <model_date>')
    exit(-1)

loss   = np.load(f'{argv[1]}-loss.npy')
config = np.load(f'{argv[1]}-config.npy')
acc    = np.load(f'{argv[1]}-accuracy.npy')

print(f'Model {config} has\n\tValidation Loss: {loss}\n\tValidation Accuracy: {acc}')