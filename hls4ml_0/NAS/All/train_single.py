import pandas as pd
from pandas import read_csv
import glob
import math
import csv
import cv2
import params
import numpy as np
import tensorflow as tf
gpu = tf.config.experimental.list_physical_devices('GPU')
#tf.config.experimental.set_memory_growth(gpu[0], True)
tf.get_logger().setLevel('ERROR')
from sklearn.model_selection import train_test_split
from sklearn.utils import class_weight
import matplotlib.pyplot as plt
import gc
import subprocess
import os
from pilotnet_nas import createModel
from tensorflow.keras.models import load_model
from qkeras.utils import _add_supported_quantized_objects
from get_dataset import get_dataset
from util import get_action
from util import create_config
from util import networkValues

imgs_train, imgs_test, vals_train, vals_test = get_dataset('./deeppicar')
vals_train = np.array(vals_train)
vals_test  = np.array(vals_test)

conv      = "1111"
dense     = "101"
mult      = 0.1
bit_width = 3

## Test to see if it is valid

directory = f"./single/{conv}-{dense}_64x64x1_{mult}_{bit_width}/"
if not os.path.exists(directory):
    os.makedirs(directory)

class_weights = class_weight.compute_class_weight(class_weight='balanced', classes=np.unique(vals_train), y=vals_train)
class_weights = {i:class_weights[i] for i in range(len(class_weights))}

model = createModel(conv, dense, mult, 64, 64, 1, bit_width)
model.compile(optimizer=tf.keras.optimizers.Adam(1e-4),
            loss=tf.keras.losses.MeanSquaredError())
mr = networkValues(model, timeout=30)

if not mr.is_okay():
    print(f'Model is not valid...')
    exit(-1)

history = model.fit(imgs_train, vals_train,
        batch_size=params.batch_size,  epochs=params.epochs, # steps_per_epoch=24,
        validation_data=(imgs_test, vals_test), class_weight=class_weights)
            
model.save(f'{directory}/{0}-{conv}-{dense}-{mult}.h5')

del(model)
del(history)
gc.collect()