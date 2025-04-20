import os
import json
import re
import pandas as pd
import matplotlib.pyplot as plt
from typing import List, Dict, Union, Optional
import numpy as np
from params import network_params

class Stats:
    def __init__(self, bram, lut, latency):
        self.bram = bram
        self.latency = latency
        self.lut = lut

    def __str__(self)->str:
        return f'bram: {self.bram}, lut: {self.lut}, latency: {self.latency}'

class PerformanceContrib:
    def __init__(self, stats_dir : str = '../projects/layer_stats')->None:
        self.stats : pd.DataFrame = read_layer_stats(stats_dir)



    def get_stats(self, width: float, conv: int, dense: int) -> Stats:
        df_filtered = self.stats[
            (self.stats["Width"] == width) &
            (self.stats["Conv"] == conv) &
            (self.stats["Dense"] == dense)
        ]

        if df_filtered.empty:
            raise ValueError(f"No stats found for Width={width}, Conv={conv}, Dense={dense}")

        row = df_filtered.iloc[0]
        return Stats(
            bram=row["Total_BRAM"],
            lut=row["Total_LUT"],
            latency=row["Latency"]
        )
    
    def get_max(self) -> Stats:
        max_bram = self.stats["Total_BRAM"].max()
        max_lut = self.stats["Total_LUT"].max()
        max_latency = self.stats["Latency"].max()
        return Stats(bram=max_bram, lut=max_lut, latency=max_latency)

def read_layer_stats(dir: str = './projects/layer_stats'):
    results = []
    pattern = re.compile(r"(\d+\.\d+)\.(\d+)\.(\d+)\.json")

    for file in os.listdir(dir):
        if file.endswith(".json"):
            match = pattern.match(file)
            if not match:
                continue  # Skip files not matching expected pattern

            width, conv, dense = match.groups()
            width = float(width)
            conv = int(conv)
            dense = int(dense)

            path = os.path.join(dir, file)
            with open(path, 'r') as f:
                data = json.load(f)

            total = data.get("total", {})

            # get the perf file
            perf_file = f'{width:.2f}.{conv}.{dense}.perf.json'
            perf_file = os.path.join(dir, perf_file)
            with open(perf_file, 'r') as f:
                perf = json.load(f)

            latency = perf.get("estimated_latency_ns", 0)


            results.append({
                "Width": width,
                "Conv": conv,
                "Dense": dense,
                "Total_LUT": total.get("LUT", 0),
                "Total_BRAM": total.get("BRAM_18K", 0),
                "Total_URAM": total.get("URAM", 0),
                "Total_DSP": total.get("DSP", 0),
                "Latency" : latency
            })

    return pd.DataFrame(results)