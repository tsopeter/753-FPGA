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
from get_dataset import get_dataset, preprocess

imgs, vals = get_dataset('./deeppicar',return_as_is=True)



# Open file for writing relevant statistics for all trained models
stats_file = open("{}-stats/trained_models.csv".format(params.dataset), 'w', newline='')
writer = csv.writer(stats_file)
writer.writerow(["Pass", "conv_str", "fc_str", "width_mult", "h_len", "w_len", "d_len",
	"Weights", "Loss", "Val loss", "Accuracy(%)"])

# Read everything as string
df = pd.read_csv("filtered_models.csv", dtype=str)

# Filter only valid rows
valid_df = df[df["Valid"] == "True"]

# Group by unique model configuration
grouped = valid_df.groupby(["Conv", "Dense", "Height", "Width", "Mult"])

# Build AvailablePeriods string
available_periods = grouped["TargetClock"].apply(
    lambda x: "-".join(sorted(set(str(int(float(v))) for v in x)))
).reset_index().rename(columns={"TargetClock": "AvailablePeriods"})

# Drop duplicates and merge
merged = pd.merge(
    valid_df.drop_duplicates(subset=["Conv", "Dense", "Height", "Width", "Mult"]),
    available_periods,
    on=["Conv", "Dense", "Height", "Width", "Mult"]
)

print(merged)

for i in range(len(merged)):
    u = merged.iloc[i]
    
    conv,dense,height,width,mult,Weights,Connections,BRAM,LUT,FF,URAM,DSP,EstimatedClock,TargetClock,BestLatency,WorstLatency,Valid,AvailablePeriods=u

    height, width = int(height), int(width)
    mult = float(mult)

    model_file = "{}-stats/models/{}-{}_{}x{}x{}_{}/".format(params.dataset, conv, dense, height, width, 1, mult)
    if not os.path.exists(model_file): 
        os.makedirs(model_file)

    #imgs_temp = np.array([preprocess(img, (height, width), 1) for img in imgs], dtype=np.float16)
    imgs_temp = np.array(imgs,dtype=np.float16)
    vals = np.array(vals)
    imgs_train, imgs_test, vals_train, vals_test = train_test_split(imgs_temp, vals, test_size=0.25, random_state=0)
    class_weights = class_weight.compute_class_weight(class_weight='balanced', classes=np.unique(vals_train), y=vals_train)
    class_weights = {i:class_weights[i] for i in range(len(class_weights))}

	# Create new train and test datasets for the current architecture
	#	Train multiple models to try and pass the val_loss check
    print(f'#############################################')
    print(f'Running model: {conv}, {dense}, {mult}, {AvailablePeriods}')
    for j in range(3):
        model = createModel(conv, dense, float(mult), int(height), int(width), int(1))
        model.compile(optimizer=tf.keras.optimizers.Adam(1e-4),
                loss=tf.keras.losses.MeanSquaredError())
        

        history = model.fit(imgs_train, vals_train,
                batch_size=params.batch_size,  epochs=params.epochs, # steps_per_epoch=24,
                validation_data=(imgs_test, vals_test), class_weight=class_weights)
            
        model.save(f'models/{model_file}/{j}-{conv}-{dense}-{mult}-{AvailablePeriods}.h5')

        del(model)
        del(history)
        gc.collect()