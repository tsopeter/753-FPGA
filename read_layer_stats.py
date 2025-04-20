import os
import json
import re
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
from typing import List, Dict, Union, Optional
from sklearn.linear_model import LinearRegression
from matplotlib.patches import Rectangle
import numpy as np

def read_layer_stats(dir: str = './projects/layer_stats') -> List[Dict[str, Union[float, int]]]:
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

    return results

def plot_resource_heatmaps(
    stats: List[Dict[str, Union[float, int]]],
    model_lut: Optional[LinearRegression] = None,
    model_bram: Optional[LinearRegression] = None,
    bram_limit: Optional[int] = 40,
    lut_limit: Optional[int] = 20_000
) -> None:
    """
    Visualizes heatmaps of Total_LUT and Total_BRAM for each unique Dense layer count.
    Draws red boxes around cells exceeding LUT or BRAM limits.
    """
    df = pd.DataFrame(stats)

    # Predict LUT if model is given
    if model_lut is not None:
        lut_input = df[["Total_LUT"]].to_numpy()
        df["Total_LUT"] = np.ceil(model_lut.predict(lut_input))

    # Predict BRAM if model is given
    if model_bram is not None:
        bram_input = df[["Total_BRAM"]].to_numpy()
        df["Total_BRAM"] = np.ceil(model_bram.predict(bram_input))

    # give as ms
    latency = df[["Latency"]].to_numpy()
    df["Latency"] = np.ceil(latency * 1e-6)

    dense_vals = sorted(df["Dense"].unique())

    for dense in dense_vals:
        df_d = df[df["Dense"] == dense]
        pivot_lut = df_d.pivot(index="Conv", columns="Width", values="Total_LUT")
        pivot_bram = df_d.pivot(index="Conv", columns="Width", values="Total_BRAM")
        pivot_latency = df_d.pivot(index="Conv", columns="Width", values="Latency")

        plt.figure(figsize=(12, 5))

        # --- LUT Heatmap ---
        plt.subplot(2, 2, 1)
        ax1 = sns.heatmap(pivot_lut, annot=True, fmt=".0f", cmap="YlGnBu", cbar=True)
        plt.title(f"{'Predicted' if model_lut else 'Total'} LUT (Dense = {dense})")
        plt.xlabel("Width Multiplier")
        plt.ylabel("Conv Layers")

        # --- BRAM Heatmap ---
        plt.subplot(2, 2, 2)
        ax2 = sns.heatmap(pivot_bram, annot=True, fmt=".1f", cmap="YlOrBr", cbar=True)
        plt.title(f"{'Predicted' if model_bram else 'Total'} BRAM (Dense = {dense})")
        plt.xlabel("Width Multiplier")
        plt.ylabel("Conv Layers")

        # --- Latency Heatmap ---
        plt.subplot(2, 2, 3)
        ax2 = sns.heatmap(pivot_latency, annot=True, fmt=".1f", cmap="YlOrBr", cbar=True)
        plt.title(f"Predicted Latency (ms) (Dense = {dense})")
        plt.xlabel("Width Multiplier")
        plt.ylabel("Conv Layers")

        plt.tight_layout()
        plt.show()