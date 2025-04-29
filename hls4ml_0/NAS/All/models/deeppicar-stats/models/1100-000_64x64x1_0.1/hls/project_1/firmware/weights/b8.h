//Numpy array shape [5]
//Min -0.062500000000
//Max 0.000000000000
//Number of zeros 4

#ifndef B8_H_
#define B8_H_

#ifndef __SYNTHESIS__
bias8_t b8[5];
#else
bias8_t b8[5] = {0.0000, 0.0000, 0.0000, -0.0625, 0.0000};

#endif

#endif
