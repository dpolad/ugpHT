#ifndef FAST_H
#define FAST_H

#include "defines.h"

#define SIZE 32

int fast9_corner_score(const byte* p, const int pixel[], int bstart);

int fast9_detect(const byte* im, int xsize, int ysize, int stride, int b, xy* ret_corners, int* ret_num_corners);

void fast9_score(const byte* i, int stride, xy* corners, int num_corners,int scores[], int b);

xy* fast9_detect_nonmax(const byte* im, int xsize, int ysize, int stride, int b, int* ret_num_corners);


#endif
