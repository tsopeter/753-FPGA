#include <iostream>

#include "myproject.h"
#include "parameters.h"


void myproject(
    hls::stream<input_t> &input_1,
    hls::stream<result_t> &layer13_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=input_1,layer13_out 
    #pragma HLS DATAFLOW

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<weight2_t, 50>(w2, "w2.txt");
        nnet::load_weights_from_txt<bias2_t, 2>(b2, "b2.txt");
        nnet::load_weights_from_txt<weight5_t, 250>(w5, "w5.txt");
        nnet::load_weights_from_txt<bias5_t, 5>(b5, "b5.txt");
        nnet::load_weights_from_txt<weight8_t, 270>(w8, "w8.txt");
        nnet::load_weights_from_txt<bias8_t, 6>(b8, "b8.txt");
        nnet::load_weights_from_txt<weight12_t, 726>(w12, "w12.txt");
        nnet::load_weights_from_txt<bias12_t, 1>(b12, "b12.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<conv1_result_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=900
    nnet::conv_2d_cl<input_t, conv1_result_t, config2>(input_1, layer2_out, w2, b2); // conv1

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=900
    nnet::relu<conv1_result_t, layer4_t, relu_config4>(layer2_out, layer4_out); // q_activation_6

    hls::stream<q_conv2d_9_result_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=169
    nnet::conv_2d_cl<layer4_t, q_conv2d_9_result_t, config5>(layer4_out, layer5_out, w5, b5); // q_conv2d_9

    hls::stream<layer7_t> layer7_out("layer7_out");
    #pragma HLS STREAM variable=layer7_out depth=169
    nnet::relu<q_conv2d_9_result_t, layer7_t, relu_config7>(layer5_out, layer7_out); // q_activation_7

    hls::stream<q_conv2d_11_result_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=121
    nnet::conv_2d_cl<layer7_t, q_conv2d_11_result_t, config8>(layer7_out, layer8_out, w8, b8); // q_conv2d_11

    hls::stream<layer10_t> layer10_out("layer10_out");
    #pragma HLS STREAM variable=layer10_out depth=121
    nnet::relu<q_conv2d_11_result_t, layer10_t, relu_config10>(layer8_out, layer10_out); // q_activation_8

    auto& layer11_out = layer10_out;
    hls::stream<layer12_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=1
    nnet::dense<layer10_t, layer12_t, config12>(layer11_out, layer12_out, w12, b12); // output_1

    nnet::linear<layer12_t, result_t, linear_config13>(layer12_out, layer13_out); // output_1_linear

}

