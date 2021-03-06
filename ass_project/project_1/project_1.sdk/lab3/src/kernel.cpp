/****************************************************************
 * Copyright (c) 2017~2019, 18-643 Course Staff, CMU
 * All rights reserved.

 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:

 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.

 * 2. Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.

 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.

 * The views and conclusions contained in the software and
 * documentation are those of the authors and should not be
 * interpreted as representing official policies, either expressed or
 * implied, of the FreeBSD Project.
 ****************************************************************/

/*
 * CMU 18643 Fall 2017 Lab Exercise
 */

#include "instance.h"
#include "convolve.h"
#include "kernel.h"

/*
 * This is the kernel function you will realize in fabric using HLS.
 * This is the inner loop used by ZhangIsfpag15_3() in convolve.c.
 * This kernel operates on the copied local buffers.
 *
 * With respect to the local buffers, the kernel is exactly analogous
 * to the reference implementation ZhangIsfpga15_1().
 *
 * The local buffer dimensions are hard coded to give HLS more
 * flexibility
 */

void convolve_kernel (DATA_T bufw[Tm][Tn][K_wts][K_wts],
		      DATA_T bufi[Tn][Tr*S_wts+K_wts-1][Tc*S_wts+K_wts-1],
		      DATA_T bufo[Tm][Tr][Tc]) {
#pragma HLS INTERFACE s_axilite port=return bundle=control
#pragma HLS INTERFACE bram port=bufw
#pragma HLS INTERFACE bram port=bufi
#pragma HLS INTERFACE bram port=bufo

  unsigned long to_b, ti_b, row_b, col_b;  

  for(row_b=0;row_b<Tr;row_b++){
    for(col_b=0;col_b<Tc;col_b++){
      for(to_b=0;to_b<Tm;to_b++){
	for(ti_b=0;ti_b<Tn;ti_b++){
	  unsigned long i, j;
	  for(i=0;i<K_wts;i++){
	    for(j=0;j<K_wts;j++){
	      bufo[to_b][row_b][col_b]+=
		bufw[to_b][ti_b][i][j]*
		bufi[ti_b][S_wts*row_b+i][S_wts*col_b+j];
	    }
	  }
	}
      }
    }
  }
}
