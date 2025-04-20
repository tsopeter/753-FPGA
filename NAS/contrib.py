import os
import json
import re
import pandas as pd
import matplotlib.pyplot as plt
from typing import List, Dict, Union, Optional
import numpy as np
from params import network_params
from sklearn.linear_model import LinearRegression
from device import device_limits

class Stats:
    def __init__(self, bram, lut, latency):
        self.bram = bram
        self.latency = latency
        self.lut = lut

    def __str__(self)->str:
        return f'bram: {self.bram}, lut: {self.lut}, latency: {self.latency}'

class PerformanceContrib:
    def __init__(self, stats_dir : str = '../projects/layer_stats', mapping_dir : str = '../mapping.csv')->None:
        self.stats : pd.DataFrame = estimate_results(read_layer_stats(stats_dir), mapping_dir)

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
    
    def get_max(self, device_limited: bool = False) -> Stats:
        if not device_limited:
            max_bram = self.stats["Total_BRAM"].max()
            max_lut = self.stats["Total_LUT"].max()
            max_latency = self.stats["Latency"].max()
        else:
            filtered = self.stats[
                (self.stats["Total_BRAM"] <= device_limits["Max_BRAM"]) &
                (self.stats["Total_LUT"] <= device_limits["Max_LUT"])
            ]
            if filtered.empty:
                raise ValueError("No stats satisfy the device limits.")
            max_bram = filtered["Total_BRAM"].max()
            max_lut = filtered["Total_LUT"].max()
            max_latency = filtered["Latency"].max()

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

def get_models (mapping : str):
    # Load CSV
    df = pd.read_csv(mapping)
    X = df[["Estimated_BRAM", "Estimated_LUT"]].values
    y_bram = df["Actual_BRAM"].values
    y_lut = df["Actual_LUT"].values

    estimated_bram = df['Estimated_BRAM'].to_numpy().reshape(-1,1)
    estimated_lut  = df['Estimated_LUT'].to_numpy().reshape(-1,1)

    model_bram = LinearRegression()
    model_lut  = LinearRegression()

    # Fit models
    model_bram.fit(estimated_bram, y_bram)
    model_lut.fit(estimated_lut, y_lut)

    return model_bram, model_lut

def estimate_results(results: pd.DataFrame, mapping: str) -> pd.DataFrame:
    model_bram, model_lut = get_models(mapping)

    # Predict actual BRAM
    bram_input = results[["Total_BRAM"]].to_numpy()
    results["Total_BRAM"] = model_bram.predict(bram_input)

    # Predict actual LUT
    lut_input = results[["Total_LUT"]].to_numpy()
    results["Total_LUT"] = model_lut.predict(lut_input)

    return results
