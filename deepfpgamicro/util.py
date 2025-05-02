# Needed for layer definitions
from tensorflow.keras.models import load_model
from qkeras.utils import _add_supported_quantized_objects
import tensorflow as tf 
import hls4ml
import math
import numpy as np
from pilotnet_nas import createModel
import subprocess
from weights_and_connections import weights_and_connections

def create_config(model, part='xc7a35tcpg236-1', output_dir='tmp/tmp_prj',
                  default_precision='ap_fixed<4,0>',
                  default_reuse_factor=64,
                  period=30):
    config = hls4ml.utils.config_from_keras_model(model, granularity='name', backend='Vitis',
                                                  default_precision=default_precision,default_reuse_factor=default_reuse_factor)

    config['Model']['Strategy'] = 'Resource'
    config['LayerName']['input_1']['Precision']['result'] = 'ap_uint<8>'
    config['LayerName']['output_1_linear']['Precision']['result'] = 'ap_fixed<16,6>'

    hls_model = hls4ml.converters.convert_from_keras_model(
        model, hls_config=config, backend='Vitis', output_dir=output_dir, part=part,
        io_type='io_stream', default_precision=default_precision, default_reuse_factor=default_reuse_factor,
        clock_period=period # ns
    )

    return config, hls_model

class ModelResources:
    def __init__(self, report, limits : float = 0.9):
        self.bram = report['BRAM_18K']
        self.dsp  = report['DSP']
        self.ff   = report['FF']
        self.lut  = report['LUT']
        self.uram = report['URAM']

        self.available_bram = round(report['AvailableBRAM_18K'] * limits)
        self.available_dsp  = round(report['AvailableDSP'] * limits)
        self.available_ff   = round(report['AvailableFF'] * limits)
        self.available_lut  = round(report['AvailableLUT'] * limits)
        self.available_uram = round(report['AvailableURAM'] * limits)

        self.estimated_clock = report["EstimatedClock"]
        self.target_clock = report["TargetClock"]
        self.best_latency = report["BestLatency"]
        self.worst_latency = report["WorstLatency"]

        self.weights = report["Weights"]
        self.connections = report["Connections"]

        self.report = report

    def is_okay(self)->bool:
        return self.report["Valid"]

def read_report(report_dir : str, model, valid : bool = True):
    weights, connections = weights_and_connections(model)
    report = {
        "BRAM_18K" : 0,
        "DSP" : 0,
        "FF" : 0,
        "LUT" : 0,
        "URAM" : 0,
        "AvailableBRAM_18K" : 0,
        "AvailableDSP" : 0,
        "AvailableFF" : 0,
        "AvailableLUT" : 0,
        "AvailableURAM" : 0,
        "EstimatedClock" : 0,
        "TargetClock" : 0,
        "BestLatency" : 0,
        "WorstLatency" : 0,
        "Weights" : weights,
        "Connections" : connections,
        "Valid" : False
    }

    if not valid:
        return report

    with open(report_dir, "r") as f:
        def rint():
            return int(f.readline())
        def rfloat():
            return float(f.readline())
        f.readline()
        report["TargetClock"] = rfloat()
        report["EstimatedClock"] = rfloat()
        report["BestLatency"] = rint()
        report["WorstLatency"] = rint()
        rint()
        rint()
        report["BRAM_18K"] = rint()
        report["DSP"] = rint()
        report["FF"] = rint()
        report["LUT"] = rint()
        report["URAM"] = rint()
        report["AvailableBRAM_18K"] = rint()
        report["AvailableDSP"] = rint()
        report["AvailableFF"] = rint()
        report["AvailableLUT"] = rint()
        report["AvailableURAM"] = rint()
    report["Valid"] = True
    return report

def networkValues(conv, dense, mult, width, period=30, limits=0.95, timeout=30, part='xc7a35tcpg236-1'):

    model = createModel(conv, dense, mult, 64, 64, 1, width)
    model.compile()
    report_dir = './tmp/tmp_prj_filter'
    valid = False
    try:
        subprocess.run(["python3", "nas_runner.py", conv, dense, str(mult), str(width), str(period), report_dir],
                       timeout=timeout)
        valid = True
    except:
        # kill
        subprocess.run(["pkill", "-f", "/opt/Xilinx/Vitis"])
        print("Killed process...")
    report = read_report(f'{report_dir}/system_report.csv', model, valid=valid)
    mr = ModelResources(report, limits=limits)
    return mr

def deg2rad(deg):
    return deg * np.pi / 180.0
def rad2deg(rad):
    return 180.0 * rad / np.pi
def get_action(angle_rad):
    degree = rad2deg(angle_rad)
    return np.where(
        degree <= -15,
        -1, np.where(
            degree >= 15,
            1, 0
        )
    )

def calculate_accuracy(preds : np.ndarray, target : np.ndarray):
    preds_labels = get_action(preds.reshape(-1))
    target_labels = get_action(target.reshape(-1))

    return np.sum(preds_labels == target_labels)/len(preds_labels)

def evaluate_hw_model(model_filename):
    from get_dataset import get_dataset

    co = {}
    _add_supported_quantized_objects(co)
    model = load_model(model_filename, custom_objects=co)

    directory = 'tmp/tmp_prj'

    config, hls_model = create_config(model, directory)
    hls_model.compile()

    imgs_train, imgs_test, vals_train, vals_test = get_dataset('./deeppicar')
    preds = hls_model.predict(imgs_test.astype(np.float32))
    vals_test = np.array(vals_test)

    mse = np.mean(
        (preds.reshape(-1) - vals_test.reshape(-1)) ** 2
    )

    acc = calculate_accuracy(preds, vals_test)

    return mse, acc

if __name__ == '__main__':
    from pilotnet_nas import createModel

    model = createModel("1111", "111", 0.5, 64, 64, 1)
    model.compile()
    directory = 'tmp/tmp_prj'
    config, hls_model = create_config(model, output_dir=directory)
    print(config)

    hls_model.build(csim=False)
    hls4ml.report.read_vivado_report(directory)
    


    
