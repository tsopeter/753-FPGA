import numpy as np
import re
from collections import defaultdict
from typing import Dict, List, Tuple
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import sys
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

def plot_loss_heatmaps(df):
    """
    Plots one heatmap per Dense value (x=Conv, y=Multiplier, color=AvgLoss)
    """
    dense_levels = sorted(df['Dense'].unique())
    fig, axes = plt.subplots(1, len(dense_levels), figsize=(6 * len(dense_levels), 6), sharey=True)

    if len(dense_levels) == 1:
        axes = [axes]  # ensure axes is iterable

    for ax, dense_val in zip(axes, dense_levels):
        sub_df = df[df['Dense'] == dense_val]
        pivot = sub_df.pivot(index='Multiplier', columns='Conv', values='AvgLoss')
        sns.heatmap(pivot, annot=True, fmt=".4f", cmap="viridis", ax=ax)
        ax.set_title(f"Dense = {dense_val}")
        ax.set_xlabel("Conv")
        ax.set_ylabel("Multiplier")

    plt.tight_layout()
    plt.show()

def get_loss_dataframe(history, mode='mean'):
    """
    Returns a DataFrame with columns: Conv, Dense, Multiplier, AvgLoss
    """
    records = []
    for (conv, dense, mult), runs in history.items():
        if mode == 'mean':
            avg_loss = sum(loss for _, loss, _ in runs) / len(runs)
        elif mode == 'min':
            avg_loss = min(loss for _, loss, _ in runs)
        else:
            avg_loss = sum(loss for _, loss, _ in runs) / len(runs)

        records.append({'Conv': conv, 'Dense': dense, 'Multiplier': mult, 'AvgLoss': avg_loss})
    return pd.DataFrame(records)

def read_history(text: str) -> Dict[Tuple[int, int, float], List[Tuple[int, float, float]]]:
    """
    Parses model training history text and returns a dictionary mapping (Conv, Dense, Multiplier)
    to a list of tuples with (run_index, loss, accuracy).

    Args:
        text (str): The input history string.

    Returns:
        Dict[Tuple[int, int, float], List[Tuple[int, float, float]]]: Parsed results.
    """
    pattern = re.compile(r"\((\d+), (\d+), ([\d.]+)\)-(\d+): \(([\d.]+), ([\d.]+)\)")
    results = defaultdict(list)

    for match in pattern.finditer(text):
        conv      = int(match.group(1))
        dense     = int(match.group(2))
        multiplier= float(match.group(3))
        run       = int(match.group(4))
        loss      = float(match.group(5))
        acc       = float(match.group(6))

        key = (conv, dense, multiplier)
        results[key].append((run, loss, acc))

    return results

def extract_avg_loss_by_config(history):
    """
    Returns a list of tuples: (Conv, Dense, Multiplier, avg_loss)
    """
    results = []
    for (conv, dense, mult), runs in history.items():
        avg_loss = sum(loss for _, loss, _ in runs) / len(runs)
        results.append((conv, dense, mult, avg_loss))
    return results

def extract_min_loss_by_config(history):
    """
    Returns a list of tuples: (Conv, Dense, Multiplier, avg_loss)
    """
    results = []
    for (conv, dense, mult), runs in history.items():
        avg_loss = min(loss for _, loss, _ in runs)
        results.append((conv, dense, mult, avg_loss))
    return results

def plot_loss_3d(loss_data):
    """
    Plots a 3D scatter of (Conv, Dense, Multiplier) vs. Loss
    """
    fig = plt.figure(figsize=(10, 7))
    ax = fig.add_subplot(111, projection='3d')

    convs, denses, mults, losses = zip(*loss_data)

    scatter = ax.scatter(convs, denses, mults, c=losses, cmap='viridis', s=80)
    ax.set_xlabel("Conv")
    ax.set_ylabel("Dense")
    ax.set_zlabel("Multiplier")
    ax.set_title("Loss across model configurations")

    cbar = plt.colorbar(scatter, ax=ax)
    cbar.set_label("Minimum obtained Loss")

    plt.tight_layout()
    plt.show()

if __name__ == '__main__':
    argv = sys.argv

    if len(argv) != 2:
        print(f'Must give history file path.')
        exit(-1)

    filename = argv[1]

    text = open(filename).read()
    history = read_history(text)
    df = get_loss_dataframe(history, mode='min')
    plot_loss_heatmaps(df)