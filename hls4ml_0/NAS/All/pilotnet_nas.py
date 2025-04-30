import tensorflow as tf
from tensorflow.keras import layers
import numpy as np
import params
from qkeras.qconvolutional import QDepthwiseConv2D, QConv2D
from qkeras.qlayers import QDense
from qkeras.qnormalization import QBatchNormalization
from qkeras.qlayers import QActivation
from qkeras.quantizers import quantized_bits, quantized_relu

# Construct model based on layer strings
def createModel(dw_conv_str="1111" , fc_str="111", depth_multiplier=1.0, h_len=66, w_len=66, d_len=1,
				bit_width : int = 6):

	dw_conv_arr = []
	'''
	dw_conv_arr.append(QDepthwiseConv2D(
		(5, 5), strides=(2, 2),
		depthwise_quantizer=quantized_bits(bits=6, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=6, integer=1, alpha=1)
	))
	dw_conv_arr.append(QConv2D(
		round(36 * depth_multiplier), (1, 1),
		strides=(1, 1),
		kernel_quantizer=quantized_bits(bits=6, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=6,integer=1, alpha=1)
	))

	dw_conv_arr.append(QDepthwiseConv2D(
		(5, 5), strides=(2, 2),
		depthwise_quantizer=quantized_bits(bits=6, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=6, integer=1, alpha=1),
	))
	dw_conv_arr.append(QConv2D(
		round(48 * depth_multiplier), (1, 1),
		strides=(1, 1),
		kernel_quantizer=quantized_bits(bits=6, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=6,integer=1, alpha=1)
	))

	dw_conv_arr.append(QDepthwiseConv2D(
		(3, 3), strides=(1, 1),
		depthwise_quantizer=quantized_bits(bits=6, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=6, integer=1, alpha=1),
	))

	dw_conv_arr.append(QConv2D(
		round(64 * depth_multiplier), (1, 1),
		strides=(1, 1),
		kernel_quantizer=quantized_bits(bits=6, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=6,integer=1, alpha=1)
	))

	dw_conv_arr.append(QDepthwiseConv2D(
		(3, 3), strides=(1, 1),
		depthwise_quantizer=quantized_bits(bits=6, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=6, integer=1, alpha=1),
	))
	dw_conv_arr.append(QConv2D(
		round(64 * depth_multiplier), (1, 1),
		strides=(1, 1),
		kernel_quantizer=quantized_bits(bits=6, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=6,integer=1, alpha=1)
	))
	'''

	dw_conv_arr.append(QConv2D(
		round(36 * depth_multiplier), (5, 5),
		strides=(2, 2),
		kernel_quantizer=quantized_bits(bits=bit_width, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=bit_width,integer=1, alpha=1),
		activation=None
	))


	dw_conv_arr.append(QConv2D(
		round(48 * depth_multiplier), (5, 5),
		strides=(2, 2),
		kernel_quantizer=quantized_bits(bits=bit_width, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=bit_width,integer=1, alpha=1),
		activation=None
	))

	dw_conv_arr.append(QConv2D(
		round(64 * depth_multiplier), (3, 3),
		strides=(1, 1),
		kernel_quantizer=quantized_bits(bits=bit_width, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=bit_width,integer=1, alpha=1),
		activation=None
	))

	dw_conv_arr.append(QConv2D(
		round(64 * depth_multiplier), (3, 3),
		strides=(1, 1),
		kernel_quantizer=quantized_bits(bits=bit_width, integer=1, alpha=1),
		bias_quantizer=quantized_bits(bits=bit_width,integer=1, alpha=1),
		activation=None
	))


	'''
	dw_conv_arr.append(layers.DepthwiseConv2D((5,5), strides=(2, 2)))
	dw_conv_arr.append(layers.Conv2D(round(36 * depth_multiplier), (1, 1), strides=(1, 1)))

	dw_conv_arr.append(layers.DepthwiseConv2D((5,5), strides=(2, 2)))
	dw_conv_arr.append(layers.Conv2D(round(48 * depth_multiplier), (1, 1), strides=(1, 1)))

	dw_conv_arr.append(layers.DepthwiseConv2D((3,3), strides=(1, 1)))
	dw_conv_arr.append(layers.Conv2D(round(64 * depth_multiplier), (1, 1), strides=(1, 1)))

	dw_conv_arr.append(layers.DepthwiseConv2D((3,3), strides=(1, 1)))
	dw_conv_arr.append(layers.Conv2D(round(64 * depth_multiplier), (1, 1), strides=(1, 1)))
	'''
	
	fc_arr = []

	"""
	fc_arr.append(layers.Dense(round(100 * depth_multiplier), activation='relu'))
	fc_arr.append(layers.Dense(round(50 * depth_multiplier), activation='relu'))
	fc_arr.append(layers.Dense(round(10 * depth_multiplier), activation='relu'))
	"""

	fc_arr.append(QDense(
		round(100 * depth_multiplier),
		kernel_quantizer=quantized_bits(bit_width, 1, alpha=1),
		bias_quantizer=quantized_bits(bit_width, 1, alpha=1),
		activation=quantized_relu(bit_width),
	))

	fc_arr.append(QDense(
		round(50 * depth_multiplier),
		kernel_quantizer=quantized_bits(bit_width, 1, alpha=1),
		bias_quantizer=quantized_bits(bit_width, 1, alpha=1),
		activation=quantized_relu(bit_width),
	))

	fc_arr.append(QDense(
		round(10 * depth_multiplier),
		kernel_quantizer=quantized_bits(bit_width, 1, alpha=1),
		bias_quantizer=quantized_bits(bit_width, 1, alpha=1),
		activation=quantized_relu(bit_width),
	))

	# Create model and add input Conv2D layer
	model = tf.keras.Sequential()
	model.add(layers.Input(shape=(h_len,w_len,d_len), name='input_1'))
	model.add(QActivation(quantized_bits(8,0,alpha=1/255.0,keep_negative=False)))

	'''
	model.add(QDepthwiseConv2D(
		(5, 5), strides=(2, 2), name="dwi",
		depthwise_quantizer=quantized_bits(6,1,alpha=1),
		bias_quantizer=quantized_bits(6,1,alpha=1)
	))

	model.add(QConv2D(
		round(24 * depth_multiplier), (1, 1),
		strides=(1, 1), name="pwi",
		kernel_quantizer=quantized_bits(6,1,alpha=1),
		bias_quantizer=quantized_bits(6,1,alpha=1)
	))
	'''

	model.add(QConv2D(
		round(24 * depth_multiplier), (5, 5),
		strides=(2, 2), name="conv1",
		kernel_quantizer=quantized_bits(bit_width,1,alpha=1),
		bias_quantizer=quantized_bits(bit_width,1,alpha=1)
	))

	'''
	model.add(
		QBatchNormalization(beta_quantizer=quantized_bits(6,1,alpha=1),
					  gamma_quantizer=quantized_bits(6,1,alpha=1),
					  mean_quantizer=quantized_bits(6,1,alpha=1))
	)
	'''

	model.add(QActivation(activation=quantized_relu(6)))

	#model.add(layers.DepthwiseConv2D((5,5), strides=(2, 2), name='dwi'))
	#model.add(layers.Conv2D(round(24 * depth_multiplier), (1, 1), strides=(1, 1), name='pwi'))
	#model.add(layers.BatchNormalization())
	#model.add(layers.ReLU())

	for i in range(0, len(dw_conv_str)):
		if int(dw_conv_str[i]) == 1:
			model.add(dw_conv_arr[i])
			#model.add(dw_conv_arr[i*2+1])
			#model.add(layers.BatchNormalization())
			#model.add(layers.ReLU())

			model.add(QActivation(activation=quantized_relu(bit_width)))

	# Add Flatten layer
	model.add(layers.Flatten())

	# Add FC layers
	for i in range(len(fc_str)):
		if int(fc_str[i]) == 1:
			model.add(fc_arr[i])

	# Add final output layer
	#model.add(layers.Dense(1, name="output_1"))
	model.add(
		QDense(1, kernel_quantizer=quantized_bits(bit_width,1,alpha=1),bias_quantizer=quantized_bits(bit_width,1,alpha=1),name='output_1')
	)
	return model