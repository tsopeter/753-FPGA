#include <iostream>

#include "myproject.h"
#include "parameters.h"


void myproject(
    hls::stream<input_t> &input_1,
    hls::stream<result_t> &layer16_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=input_1,layer16_out 
    #pragma HLS DATAFLOW

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<weight3_t, 50>(w3, "w3.txt");
        nnet::load_weights_from_txt<bias3_t, 2>(b3, "b3.txt");
        nnet::load_weights_from_txt<weight6_t, 200>(w6, "w6.txt");
        nnet::load_weights_from_txt<bias6_t, 4>(b6, "b6.txt");
        nnet::load_weights_from_txt<weight9_t, 500>(w9, "w9.txt");
        nnet::load_weights_from_txt<bias9_t, 5>(b9, "b9.txt");
        nnet::load_weights_from_txt<weight12_t, 270>(w12, "w12.txt");
        nnet::load_weights_from_txt<bias12_t, 6>(b12, "b12.txt");
        nnet::load_weights_from_txt<weight16_t, 54>(w16, "w16.txt");
        nnet::load_weights_from_txt<bias16_t, 1>(b16, "b16.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=4096
    nnet::linear<input_t, layer2_t, linear_config2>(input_1, layer2_out); // q_activation_139

    hls::stream<conv1_result_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=900
    nnet::conv_2d_cl<layer2_t, conv1_result_t, config3>(layer2_out, layer3_out, w3, b3); // conv1

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=900
    nnet::relu<conv1_result_t, layer5_t, relu_config5>(layer3_out, layer5_out); // q_activation_140

    hls::stream<q_conv2d_140_result_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=169
    nnet::conv_2d_cl<layer5_t, q_conv2d_140_result_t, config6>(layer5_out, layer6_out, w6, b6); // q_conv2d_140

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=169
    nnet::relu<q_conv2d_140_result_t, layer8_t, relu_config8>(layer6_out, layer8_out); // q_activation_141

    hls::stream<q_conv2d_141_result_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=25
    nnet::conv_2d_cl<layer8_t, q_conv2d_141_result_t, config9>(layer8_out, layer9_out, w9, b9); // q_conv2d_141

    hls::stream<layer11_t> layer11_out("layer11_out");
    #pragma HLS STREAM variable=layer11_out depth=25
    nnet::relu<q_conv2d_141_result_t, layer11_t, relu_config11>(layer9_out, layer11_out); // q_activation_142

    hls::stream<q_conv2d_143_result_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=9
    nnet::conv_2d_cl<layer11_t, q_conv2d_143_result_t, config12>(layer11_out, layer12_out, w12, b12); // q_conv2d_143

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=9
    nnet::relu<q_conv2d_143_result_t, layer14_t, relu_config14>(layer12_out, layer14_out); // q_activation_143

    auto& layer15_out = layer14_out;
    nnet::dense<layer14_t, result_t, config16>(layer15_out, layer16_out, w16, b16); // output_1

}

