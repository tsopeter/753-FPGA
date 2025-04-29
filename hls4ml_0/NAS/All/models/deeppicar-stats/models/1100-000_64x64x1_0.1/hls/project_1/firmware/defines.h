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
#define OUT_HEIGHT_2 30
#define OUT_WIDTH_2 30
#define N_FILT_2 2
#define OUT_HEIGHT_2 30
#define OUT_WIDTH_2 30
#define N_FILT_2 2
#define OUT_HEIGHT_5 13
#define OUT_WIDTH_5 13
#define N_FILT_5 4
#define OUT_HEIGHT_5 13
#define OUT_WIDTH_5 13
#define N_FILT_5 4
#define OUT_HEIGHT_8 5
#define OUT_WIDTH_8 5
#define N_FILT_8 5
#define OUT_HEIGHT_8 5
#define OUT_WIDTH_8 5
#define N_FILT_8 5
#define N_SIZE_0_11 125
#define N_LAYER_12 1
#define N_LAYER_12 1


// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_uint<8>, 1*1> input_t;
typedef ap_fixed<20,16> conv1_accum_t;
typedef nnet::array<ap_fixed<20,16>, 2*1> conv1_result_t;
typedef ap_fixed<6,2> weight2_t;
typedef ap_fixed<6,2> bias2_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 2*1> layer4_t;
typedef ap_fixed<18,8> q_activation_table_t;
typedef ap_fixed<19,9> q_conv2d_accum_t;
typedef nnet::array<ap_fixed<19,9>, 4*1> q_conv2d_result_t;
typedef ap_fixed<6,2> weight5_t;
typedef ap_fixed<6,2> bias5_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 4*1> layer7_t;
typedef ap_fixed<18,8> q_activation_1_table_t;
typedef ap_fixed<20,10> q_conv2d_1_accum_t;
typedef nnet::array<ap_fixed<20,10>, 5*1> q_conv2d_1_result_t;
typedef ap_fixed<6,2> weight8_t;
typedef ap_fixed<6,2> bias8_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 5*1> layer10_t;
typedef ap_fixed<18,8> q_activation_2_table_t;
typedef ap_fixed<20,10> output_1_accum_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer12_t;
typedef ap_fixed<6,2> weight12_t;
typedef ap_fixed<6,2> bias12_t;
typedef ap_uint<1> layer12_index;
typedef nnet::array<ap_fixed<4,0>, 1*1> result_t;
typedef ap_fixed<18,8> output_1_linear_table_t;


#endif
