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

def deg2rad(deg):
    return deg * math.pi / 180.0
def rad2deg(rad):
    return 180.0 * rad / math.pi
def get_action(angle_rad):
    degree = rad2deg(angle_rad)
    if degree < 15 and degree > -15:
        return "center"
    elif degree >= 15:
        return "right" 
    elif degree <-15:
        return "left"
    
def preprocess(img, resize_vals, input_channels):
	img = cv2.resize(img, dsize=(320, 240))
	img = cv2.flip(img, 1)
	img = img[0:210, 52:198]
	# Convert to grayscale and readd channel dimension
	if input_channels == 1:
		img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY); # print(resize_vals[1],resize_vals[0])
		img = cv2.resize(img, dsize=(resize_vals[1], resize_vals[0]))
		img = np.reshape(img, (resize_vals[0], resize_vals[1], 1))
	# For RGB, just need to resize image
	else:
		img = cv2.resize(img, dsize=(resize_vals[1], resize_vals[0]))
	#img = img / 255.
	return img

# Train/test data lists
imgs = []
vals = []

# Load train/test data
total_frames=params.totalframes
frame_num = 0
for folder in glob.glob("{}/*".format(params.dataset)):
    print(folder)
    vid_file = glob.glob("{}/*.avi".format(folder))[0]
    vid = cv2.VideoCapture(vid_file)
    ret,img = vid.read()
    while(ret and frame_num < total_frames):
        # Can only preprocess images when model params are known
        imgs.append(img)
        ret,img = vid.read()
        frame_num += 1
    vid.release()

    csv_file = glob.glob("{}/*.csv".format(folder))[0]
    temp = np.asarray(read_csv(csv_file)["wheel"].values)[:total_frames]
    vals.extend(temp)

if params.dataset == "nvidia":
    vals = list(map(deg2rad, vals))
vals = np.asarray(vals, dtype=np.float16)
assert len(imgs) == len(vals)

print(len(imgs))

# Open file for writing relevant statistics for all trained models
stats_file = open("{}-stats/trained_models.csv".format(params.dataset), 'w', newline='')
writer = csv.writer(stats_file)
writer.writerow(["Pass", "conv_str", "fc_str", "width_mult", "h_len", "w_len", "d_len",
	"Weights", "Loss", "Val loss", "Accuracy(%)"])


x = pd.read_csv('valid_models.txt',dtype=str)
y=x[x['Good']=='Yes']

for i in range(len(y)):
    u = y.iloc[i]
    
    conv, dense, height, width, mult, _ = u

    height, width = int(height), int(width)
    mult = float(mult)

    model_file = "{}-stats/models/{}-{}_{}x{}x{}_{}/".format(params.dataset, conv, dense, height, width, 1, mult)
    if not os.path.exists(model_file): 
        os.makedirs(model_file)

    imgs_temp = np.array([preprocess(img, (int(height), int(width)), 1) for img in imgs], dtype=np.float16)
    imgs_train, imgs_test, vals_train, vals_test = train_test_split(imgs_temp, vals, test_size=0.25, random_state=0)
    class_weights = class_weight.compute_class_weight(class_weight='balanced', classes=np.unique(vals_train), y=vals_train)
    class_weights = {i:class_weights[i] for i in range(len(class_weights))}

	# Create new train and test datasets for the current architecture
	#	Train multiple models to try and pass the val_loss check
    for j in range(5):
        model = createModel(conv, dense, float(mult), int(height), int(width), int(1))
        model.compile(optimizer=tf.keras.optimizers.Adam(1e-4),
                loss=tf.keras.losses.MeanSquaredError())
        

        history = model.fit(imgs_train, vals_train,
                batch_size=params.batch_size,  epochs=params.epochs, # steps_per_epoch=24,
                validation_data=(imgs_test, vals_test), class_weight=class_weights)
            
        model.save(f'models/{model_file}/{j}-{conv}-{dense}-{mult}.h5')

		# Exit the training loop if the val_loss check is met or val_loss is too high
		#if history.history['val_loss'][-1] <= params.val_loss or history.history['val_loss'][-1] > params.val_high or j==4:
	    #	break

        del(model)
        del(history)
        gc.collect()