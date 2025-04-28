network_params = {
## Network Parameters
    "image_width"          : 64,
    "image_height"         : 64,
    "minimum_conv_layers"  : 3,
    "maximum_conv_layers"  : 5,
    "minimum_dense_layers" : 1,
    "maximum_dense_layers" : 3,
    "minimum_width"        : 0.1,
    "maximum_width"        : 0.5,
    "bit_width"            : 4,

## Data parameters
    "dataset_dir"          : '../deeppicar/',

## Model contribution parameters
    "lstats"               : "../projects/layer_stats",

## Learning parameters
    "epoch"                : 18,
    "lr"                   : 1e-3,
    "bsz"                  : 128,

}

if network_params['bit_width'] == 2:
    network_params['maximum_width'] = 0.8
else:
    network_params['maximum_width'] = 0.5