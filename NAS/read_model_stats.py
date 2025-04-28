import numpy as np
import sys

def read_stats(filename):
    loss   = np.load(f'{filename}-loss.npy')
    config = np.load(f'{filename}-config.npy')
    acc    = np.load(f'{filename}-accuracy.npy')
    print(f'Model {config} has\n\tValidation Loss: {loss}\n\tValidation Accuracy: {acc}')
    return loss, config, acc

if __name__ == '__main__':
    argv = sys.argv

    if len(argv) != 2:
        print(f'Must be <model_date>')
        exit(-1)

    loss, config, acc = read_stats(argv[1])