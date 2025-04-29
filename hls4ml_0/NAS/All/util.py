# Needed for layer definitions
import tensorflow as tf 
import hls4ml
import math

# Calculate per-layer and total model connections
#   Input: TF model
#   Output: Table with per-layer and total model connections
def calculate_connections(model):
    # Table headers
    print("-----------------------------------------------------------------------")
    print("MODEL CONNECTIONS")
    print("=======================================================================")
    print("Layer (type)\t\tConnection Formula\tConnections")
    print("=======================================================================")

    layer_num = 1   # Current layer
    connections = 0  # Number of connections in current layer
    for layer in model.layers:
        layer_connections = 0
        
        # Only calculate connections for Conv2D and Dense (FC) layers
        if(type(layer) == tf.keras.layers.Conv2D):
            input_depth = layer.input.shape[3]
            output_shape = layer.output.shape
            kernel_size = layer.kernel_size
            layer_connections = input_depth * output_shape[1] * output_shape[2] * output_shape[3] * kernel_size[0] * kernel_size[1]
            print("{} (Conv2D)\t\t{}*{}*{}*{}*{}*{}\t\t{}".format(layer_num, input_depth, output_shape[1], output_shape[2], output_shape[3], kernel_size[0], kernel_size[1], layer_connections))
            print("-----------------------------------------------------------------------")
        elif(type(layer) == tf.keras.layers.Dense):
            input_neurons = layer.input.shape[1]
            output_neurons = layer.output.shape[1]
            layer_connections = input_neurons * output_neurons
            extra_tab = ""
            if(len("{}*{}".format(input_neurons, output_neurons)) < 8):
                extra_tab="\t"
            print("{} (Conv2D)\t\t{}*{}{}\t\t{}".format(layer_num, input_neurons, output_neurons, extra_tab, layer_connections)) 
            print("-----------------------------------------------------------------------")
        elif(type(layer) == tf.keras.layers.DepthwiseConv2D):
            input_depth = layer.input.shape[3]
            output_shape = layer.output.shape
            kernel_size = layer.kernel_size
            layer_connections = input_depth * output_shape[1] * output_shape[2] * kernel_size[0] * kernel_size[1]
            print("{} (DWConv2D)\t\t{}*{}*{}*{}*{}\t\t{}".format(layer_num, input_depth, output_shape[1], output_shape[2], kernel_size[0], kernel_size[1], layer_connections))
            print("-----------------------------------------------------------------------")
        else:
            continue    # Skip to next layer
           
        # Add current layer connections to total model connections, iterate layer number
        connections += layer_connections
        layer_num += 1
    
    # Display the total number of layer connections
    print("Total connections: {}".format(connections))
    print("=======================================================================")

def create_config(model, part='xc7a35tcpg236-1', output_dir='tmp/tmp_prj'):
    config = hls4ml.utils.config_from_keras_model(model, granularity='name', backend='Vitis',
                                                  default_precision='ap_fixed<4,0>',default_reuse_factor=64)

    config['Model']['Strategy'] = 'Resource'
    config['LayerName']['input_1']['Precision']['result'] = 'ap_uint<8>'
    config['LayerName']['output_1']['Precision']['result'] = 'ap_fixed<16,6>'

    '''
    for layername in config['LayerName']:
        if layername == 'Precision':
            continue  # skip the wrong 'Precision' key at this level

        if 'Precision' not in config['LayerName'][layername]:
            config['LayerName'][layername]['Precision'] = {}

        config['LayerName'][layername]['Precision']['table'] = 'ap_fixed<6,1>'
    '''

    hls_model = hls4ml.converters.convert_from_keras_model(
        model, hls_config=config, backend='Vitis', output_dir=output_dir, part=part,
        io_type='io_stream', default_precision='ap_fixed<4,0>', default_reuse_factor=64,
        clock_period=30 # ns
    )

    return config, hls_model

# Calculate total model connections
#   Input: TF model
#   Output: Hardware Resources

class ModelResources:
    def __init__(self, report, limits : float = 0.9):
        self.bram = int(report['BRAM_18K'])
        self.dsp  = int(report['DSP'])
        self.ff   = int(report['FF'])
        self.lut  = int(report['LUT'])
        self.uram = int(report['URAM'])

        self.available_bram = round(int(report['AvailableBRAM_18K']) * limits)
        self.available_dsp  = round(int(report['AvailableDSP']) * limits)
        self.available_ff   = round(int(report['AvailableFF']) * limits)
        self.available_lut  = round(int(report['AvailableLUT']) * limits)
        self.available_uram = round(int(report['AvailableURAM']) * limits)


    def is_okay(self)->bool:
        if (self.bram >= self.available_bram):
            return False
        
        if (self.dsp >= self.available_dsp):
            return False
        
        if (self.ff >= self.available_ff):
            return False
        
        if (self.lut >= self.available_lut):
            return False
        
        if (self.uram >= self.available_uram):
            return False
        
        return True

import concurrent.futures
import os

def networkValues(model):

    # Compile model
    model.compile()
    directory = 'tmp/tmp_prj'
    config, hls_model = create_config(model, output_dir=directory)

    def build_model():
        return hls_model.build(csim=False)

    try:
        with concurrent.futures.ThreadPoolExecutor(max_workers=1) as executor:
            future = executor.submit(build_model)
            report = future.result(timeout=60)
            report = report['CSynthesisreport']
    except concurrent.futures.TimeoutError:
        print("Timeout: HLS synthesis took longer than 60 seconds. Assigning zero to all values.")
        report = {
            'BRAM_18K': 0,
            'DSP': 0,
            'FF': 0,
            'LUT': 0,
            'URAM': 0,
            'AvailableBRAM_18K': 0,  # avoid divide-by-zero later
            'AvailableDSP': 0,
            'AvailableFF': 0,
            'AvailableLUT': 0,
            'AvailableURAM': 0,
        }

    mr = ModelResources(report, limits=0.9)
    return mr


if __name__ == '__main__':
    from pilotnet_nas import createModel

    model = createModel("1111", "111", 0.5, 64, 64, 1)
    model.compile()
    directory = 'tmp/tmp_prj'
    config, hls_model = create_config(model, output_dir=directory)
    print(config)

    hls_model.build(csim=False)
    hls4ml.report.read_vivado_report(directory)
    


    

    
