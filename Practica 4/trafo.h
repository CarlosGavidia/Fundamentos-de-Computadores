#ifndef _TRAFO_H
#define _TRAFO_H

#define N 8
#define M 4

#include "types.h"




void RGB2GrayMatrix(pixelRGB orig[N][M], int dest[N][M], int nfilas, int ncols);

void Gray2BinaryMatrix(int orig[N][M], int dest[N][M], int nfilas, int ncols);

int rgb2gray(pixelRGB pixel);

extern void contarUnos(int mat[N][M], int vector[], int nfilas, int ncols);

void incrementa(int vector[], int i);

#endif
