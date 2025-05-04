#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "ap_fixed.h"
#include "ap_int.h"

#include "nnet_utils/nnet_code_gen.h"
#include "nnet_utils/nnet_helpers.h"
// hls-fpga-machine-learning insert includes
#include "nnet_utils/nnet_activation.h"
#include "nnet_utils/nnet_activation_stream.h"
#include "nnet_utils/nnet_conv2d.h"
#include "nnet_utils/nnet_conv2d_stream.h"
#include "nnet_utils/nnet_dense.h"
#include "nnet_utils/nnet_dense_compressed.h"
#include "nnet_utils/nnet_dense_stream.h"

// hls-fpga-machine-learning insert weights
#include "weights/w3.h"
#include "weights/b3.h"
#include "weights/w6.h"
#include "weights/b6.h"
#include "weights/w9.h"
#include "weights/b9.h"
#include "weights/w12.h"
#include "weights/b12.h"
#include "weights/w16.h"
#include "weights/b16.h"


// hls-fpga-machine-learning insert layer-config
// q_activation_139
struct linear_config2 : nnet::activ_config {
    static const unsigned n_in = 4096;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef q_activation_139_table_t table_t;
};

// conv1
struct config3_mult : nnet::dense_config {
    static const unsigned n_in = 25;
    static const unsigned n_out = 2;
    static const unsigned reuse_factor = 50;
    static const unsigned strategy = nnet::resource;
    static const unsigned n_zeros = 6;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    typedef conv1_accum_t accum_t;
    typedef bias3_t bias_t;
    typedef weight3_t weight_t;
    template<class data_T, class res_T, class CONFIG_T>
    using kernel = nnet::DenseResource_rf_gt_nin_rem0<data_T, res_T, CONFIG_T>;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

struct config3 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = 64;
    static const unsigned in_width = 64;
    static const unsigned n_chan = 1;
    static const unsigned filt_height = 5;
    static const unsigned filt_width = 5;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = 2;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned out_height = 30;
    static const unsigned out_width = 30;
    static const unsigned reuse_factor = 50;
    static const unsigned n_zeros = 6;
    static const unsigned multiplier_limit =
        DIV_ROUNDUP(kernel_size * n_chan * n_filt, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 64;
    static const unsigned min_width = 64;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    static const unsigned n_partitions = 900;
    static const unsigned n_pixels = out_height * out_width / n_partitions;
    template<class data_T, class CONFIG_T>
    using fill_buffer = nnet::FillConv2DBuffer<data_T, CONFIG_T>;
    typedef conv1_accum_t accum_t;
    typedef bias3_t bias_t;
    typedef weight3_t weight_t;
    typedef config3_mult mult_config;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_height = nnet::scale_index_regular<K, S, W>;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_width = nnet::scale_index_regular<K, S, W>;
};
const ap_uint<config3::filt_height * config3::filt_width> config3::pixels[] = {0};

// q_activation_140
struct relu_config5 : nnet::activ_config {
    static const unsigned n_in = 1800;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef q_activation_140_table_t table_t;
};

// q_conv2d_140
struct config6_mult : nnet::dense_config {
    static const unsigned n_in = 50;
    static const unsigned n_out = 4;
    static const unsigned reuse_factor = 50;
    static const unsigned strategy = nnet::resource;
    static const unsigned n_zeros = 20;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    typedef q_conv2d_140_accum_t accum_t;
    typedef bias6_t bias_t;
    typedef weight6_t weight_t;
    template<class data_T, class res_T, class CONFIG_T>
    using kernel = nnet::DenseResource_rf_leq_nin<data_T, res_T, CONFIG_T>;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

struct config6 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = 30;
    static const unsigned in_width = 30;
    static const unsigned n_chan = 2;
    static const unsigned filt_height = 5;
    static const unsigned filt_width = 5;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = 4;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned out_height = 13;
    static const unsigned out_width = 13;
    static const unsigned reuse_factor = 50;
    static const unsigned n_zeros = 20;
    static const unsigned multiplier_limit =
        DIV_ROUNDUP(kernel_size * n_chan * n_filt, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 30;
    static const unsigned min_width = 30;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    static const unsigned n_partitions = 169;
    static const unsigned n_pixels = out_height * out_width / n_partitions;
    template<class data_T, class CONFIG_T>
    using fill_buffer = nnet::FillConv2DBuffer<data_T, CONFIG_T>;
    typedef q_conv2d_140_accum_t accum_t;
    typedef bias6_t bias_t;
    typedef weight6_t weight_t;
    typedef config6_mult mult_config;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_height = nnet::scale_index_regular<K, S, W>;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_width = nnet::scale_index_regular<K, S, W>;
};
const ap_uint<config6::filt_height * config6::filt_width> config6::pixels[] = {0};

// q_activation_141
struct relu_config8 : nnet::activ_config {
    static const unsigned n_in = 676;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef q_activation_141_table_t table_t;
};

// q_conv2d_141
struct config9_mult : nnet::dense_config {
    static const unsigned n_in = 100;
    static const unsigned n_out = 5;
    static const unsigned reuse_factor = 50;
    static const unsigned strategy = nnet::resource;
    static const unsigned n_zeros = 72;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    typedef q_conv2d_141_accum_t accum_t;
    typedef bias9_t bias_t;
    typedef weight9_t weight_t;
    template<class data_T, class res_T, class CONFIG_T>
    using kernel = nnet::DenseResource_rf_leq_nin<data_T, res_T, CONFIG_T>;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

struct config9 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = 13;
    static const unsigned in_width = 13;
    static const unsigned n_chan = 4;
    static const unsigned filt_height = 5;
    static const unsigned filt_width = 5;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = 5;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned out_height = 5;
    static const unsigned out_width = 5;
    static const unsigned reuse_factor = 50;
    static const unsigned n_zeros = 72;
    static const unsigned multiplier_limit =
        DIV_ROUNDUP(kernel_size * n_chan * n_filt, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 13;
    static const unsigned min_width = 13;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    static const unsigned n_partitions = 25;
    static const unsigned n_pixels = out_height * out_width / n_partitions;
    template<class data_T, class CONFIG_T>
    using fill_buffer = nnet::FillConv2DBuffer<data_T, CONFIG_T>;
    typedef q_conv2d_141_accum_t accum_t;
    typedef bias9_t bias_t;
    typedef weight9_t weight_t;
    typedef config9_mult mult_config;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_height = nnet::scale_index_regular<K, S, W>;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_width = nnet::scale_index_regular<K, S, W>;
};
const ap_uint<config9::filt_height * config9::filt_width> config9::pixels[] = {0};

// q_activation_142
struct relu_config11 : nnet::activ_config {
    static const unsigned n_in = 125;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef q_activation_142_table_t table_t;
};

// q_conv2d_143
struct config12_mult : nnet::dense_config {
    static const unsigned n_in = 45;
    static const unsigned n_out = 6;
    static const unsigned reuse_factor = 45;
    static const unsigned strategy = nnet::resource;
    static const unsigned n_zeros = 42;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    typedef q_conv2d_143_accum_t accum_t;
    typedef bias12_t bias_t;
    typedef weight12_t weight_t;
    template<class data_T, class res_T, class CONFIG_T>
    using kernel = nnet::DenseResource_rf_leq_nin<data_T, res_T, CONFIG_T>;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

struct config12 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = 5;
    static const unsigned in_width = 5;
    static const unsigned n_chan = 5;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = 6;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = 3;
    static const unsigned out_width = 3;
    static const unsigned reuse_factor = 45;
    static const unsigned n_zeros = 42;
    static const unsigned multiplier_limit =
        DIV_ROUNDUP(kernel_size * n_chan * n_filt, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 5;
    static const unsigned min_width = 5;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    static const unsigned n_partitions = 9;
    static const unsigned n_pixels = out_height * out_width / n_partitions;
    template<class data_T, class CONFIG_T>
    using fill_buffer = nnet::FillConv2DBuffer<data_T, CONFIG_T>;
    typedef q_conv2d_143_accum_t accum_t;
    typedef bias12_t bias_t;
    typedef weight12_t weight_t;
    typedef config12_mult mult_config;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_height = nnet::scale_index_regular<K, S, W>;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_width = nnet::scale_index_regular<K, S, W>;
};
const ap_uint<config12::filt_height * config12::filt_width> config12::pixels[] = {0};

// q_activation_143
struct relu_config14 : nnet::activ_config {
    static const unsigned n_in = 54;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 64;
    typedef q_activation_143_table_t table_t;
};

// output_1
struct config16 : nnet::dense_config {
    static const unsigned n_in = 54;
    static const unsigned n_out = 1;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned strategy = nnet::resource;
    static const unsigned reuse_factor = 54;
    static const unsigned n_zeros = 5;
    static const unsigned n_nonzeros = 49;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    typedef output_1_accum_t accum_t;
    typedef bias16_t bias_t;
    typedef weight16_t weight_t;
    typedef layer16_index index_t;
    template<class data_T, class res_T, class CONFIG_T>
    using kernel = nnet::DenseResource_rf_leq_nin<data_T, res_T, CONFIG_T>;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};



#endif
