import os
import numpy as np
import hls4ml
from get_dataset import get_dataset
from tensorflow.keras.models import load_model
from qkeras.utils import _add_supported_quantized_objects
import tensorflow as tf 
from util import create_config, calculate_accuracy

# Main evaluator
def evaluate_all_models(model_dir, root_dir='.'):
    imgs_train, imgs_test, vals_train, vals_test = get_dataset('./deeppicar')
    vals_test = np.array(vals_test)

    for folder in os.listdir(model_dir):
        folder_path = os.path.join(model_dir, folder)
        if not os.path.isdir(folder_path):
            continue

        best_acc = 0
        best_loss = np.inf
        best_model_file = None
        best_clock = None

        for filename in os.listdir(folder_path):
            if not filename.endswith(".h5"):
                continue

            model_path = os.path.join(folder_path, filename)
            print(f"################################################")
            print(f"Running model: {model_path}")
            try:
                # Extract clock string
                clock_str = filename.split("0.1-")[1].replace(".h5", "")
                period = int(clock_str.split('-')[0])  # Take the first clock (e.g., 100 from 100-30-50-70)

                # Load Keras model
                co = {}
                _add_supported_quantized_objects(co)
                model = load_model(model_path, custom_objects=co)

                # Build and compile HLS model using your function
                output_dir = os.path.join(root_dir, 'tmp', 'tmp_prj')
                config, hls_model = create_config(model, output_dir=output_dir, period=period)
                hls_model.compile()

                # Predict and evaluate
                preds = hls_model.predict(imgs_test.astype(np.float32))
                acc = calculate_accuracy(preds, vals_test)
                loss = np.mean((preds.reshape(-1) - vals_test.reshape(-1)) ** 2)

                if loss < best_loss:
                    best_loss = loss
                    best_model_file = filename
                    best_clock = clock_str
                    best_acc = acc

            except Exception as e:
                print(f"[ERROR] {filename}: {e}")

        # Save best result
        if best_model_file:
            out_path = os.path.join(folder_path, 'best_accuracy.txt')
            with open(out_path, 'w') as f:
                f.write(f"{best_model_file} | Clock: {best_clock} | Accuracy: {best_acc:.4f} | MSE: {best_loss:.8f}")
                print(f"[SAVED] {out_path}")

if __name__ == '__main__':
    evaluate_all_models('./models/deeppicar-stats/models/', root_dir='.')