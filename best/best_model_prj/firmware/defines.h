#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 64
#define N_INPUT_2_1 64
#define N_INPUT_3_1 1
#define N_INPUT_1_1 64
#define N_INPUT_2_1 64
#define N_INPUT_3_1 1
#define OUT_HEIGHT_3 30
#define OUT_WIDTH_3 30
#define N_FILT_3 2
#define OUT_HEIGHT_3 30
#define OUT_WIDTH_3 30
#define N_FILT_3 2
#define OUT_HEIGHT_6 13
#define OUT_WIDTH_6 13
#define N_FILT_6 4
#define OUT_HEIGHT_6 13
#define OUT_WIDTH_6 13
#define N_FILT_6 4
#define OUT_HEIGHT_9 5
#define OUT_WIDTH_9 5
#define N_FILT_9 5
#define OUT_HEIGHT_9 5
#define OUT_WIDTH_9 5
#define N_FILT_9 5
#define OUT_HEIGHT_12 3
#define OUT_WIDTH_12 3
#define N_FILT_12 6
#define OUT_HEIGHT_12 3
#define OUT_WIDTH_12 3
#define N_FILT_12 6
#define N_SIZE_0_15 54
#define N_LAYER_16 1


// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_uint<8>, 1*1> input_t;
typedef nnet::array<ap_fixed<8,1,AP_RND_CONV,AP_SAT,0>, 1*1> layer2_t;
typedef ap_fixed<18,8> q_activation_139_table_t;
typedef ap_fixed<20,9> conv1_accum_t;
typedef nnet::array<ap_fixed<20,9>, 2*1> conv1_result_t;
typedef ap_fixed<6,2> weight3_t;
typedef ap_fixed<6,2> bias3_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 2*1> layer5_t;
typedef ap_fixed<18,8> q_activation_140_table_t;
typedef ap_fixed<19,9> q_conv2d_140_accum_t;
typedef nnet::array<ap_fixed<19,9>, 4*1> q_conv2d_140_result_t;
typedef ap_fixed<6,2> weight6_t;
typedef ap_fixed<6,2> bias6_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 4*1> layer8_t;
typedef ap_fixed<18,8> q_activation_141_table_t;
typedef ap_fixed<20,10> q_conv2d_141_accum_t;
typedef nnet::array<ap_fixed<20,10>, 5*1> q_conv2d_141_result_t;
typedef ap_fixed<6,2> weight9_t;
typedef ap_fixed<6,2> bias9_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 5*1> layer11_t;
typedef ap_fixed<18,8> q_activation_142_table_t;
typedef ap_fixed<19,9> q_conv2d_143_accum_t;
typedef nnet::array<ap_fixed<19,9>, 6*1> q_conv2d_143_result_t;
typedef ap_fixed<6,2> weight12_t;
typedef ap_fixed<6,2> bias12_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 6*1> layer14_t;
typedef ap_fixed<18,8> q_activation_143_table_t;
typedef ap_fixed<19,9> output_1_accum_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> result_t;
typedef ap_fixed<6,2> weight16_t;
typedef ap_fixed<6,2> bias16_t;
typedef ap_uint<1> layer16_index;


#endif
