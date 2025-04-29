import os
import sys
import pandas as pd
from pilotnet_nas import createModel
from util import networkValues, ModelResources

filters_file  = 'filtered_models.csv'

dw_conv_str = [
    "0000", "0001", "0010", "0011",
    "0100", "0101", "0110", "0111",
    "1000", "1001", "1010", "1011",
    "1100", "1101", "1110", "1111"
]

fc_str = [
    "000", "001", "010", "011", "100", "101",
    "110", "111"
]

width_mult = [0.1, 0.2]
height     = 64
width      = 64
channels   = 1

total_checked = len(dw_conv_str) * len(fc_str) * len(width_mult)
data_file = []

good_count = 0
for c in dw_conv_str:
    for f in fc_str:
        for mult in width_mult:
            model = createModel(c, f, float(mult), height, width)
            mr = networkValues(model)

            if mr.is_okay():
                good_count += 1
                # write to filters_file
                data_file.append({
                    "Conv"   : c,
                    "Dense"  : f,
                    "Height" : height,
                    "Width"  : width,
                    "Mult"   : mult,
                    "Good"   : "Yes"
                })

# save file
df = pd.DataFrame(data_file)
df.to_csv(filters_file, index=False)