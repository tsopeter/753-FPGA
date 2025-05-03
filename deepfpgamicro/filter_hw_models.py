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

width_mult = [0.1]
height     = 64
width      = 64
channels   = 1
periods = [30, 50, 70, 100]
bits = [6]

total_checked = len(dw_conv_str) * len(fc_str) * len(width_mult) * len(periods) * len(bits)
data_file = []

good_count = 0
for c in dw_conv_str:
    for f in fc_str:
        for mult in width_mult:
            for period in periods:
                for bit in bits:
                    print(f'Testing model: {c}, {f}, {mult}, {period}, {bit}')
                    mr = networkValues(c, f, mult, bit, timeout=30, period=period, limits=1.0)
                    if mr.is_okay():
                        good_count += 1
                    report = {
                        "Conv"   : c,
                        "Dense"  : f,
                        "Height" : height,
                        "Width"  : width,
                        "Mult"   : mult,
                        "Weights" : mr.weights,
                        "Connections" : mr.connections,
                        "BRAM" : mr.bram,
                        "LUT" : mr.lut,
                        "FF" : mr.ff,
                        "URAM" : mr.uram,
                        "DSP" : mr.dsp,
                        "EstimatedClock" : mr.estimated_clock,
                        "TargetClock" : mr.target_clock,
                        "BestLatency" : mr.best_latency,
                        "WorstLatency" : mr.worst_latency,
                        "Valid" : mr.report["Valid"]
                    }
                    data_file.append(report)
                    print(report)
# save file
df = pd.DataFrame(data_file)
df.to_csv(filters_file, index=False)

print(f'Number of "good" models: {good_count}/{total_checked}')
            