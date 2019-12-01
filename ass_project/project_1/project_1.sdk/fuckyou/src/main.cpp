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
 *
 * Top-level "test-bench" for the convolution layer implementation.
 * main() (1) computes a reference results; (2) times the
 * implementation; (3) optonally printout the input and output; (4)
 * verify the implementation output against the reference output.
 */

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <sys/time.h>

#include "config.h"
#include "convolve.h"
#include "sdk.h"


/*
 * reference implementation; same as ZhangIsfpga15_1() in
 * convolve.cpp; but always done in single-precision FP
 */
   DATA_T input[BufSize];
   DATA_T output[BufSize];
   DATA_T temp_buf[BufSize];

int main() {

#ifndef NO_TIMING
#ifdef __SDK__
  XTime Timer1;
#else
  struct timeval start_time, end_time;
#endif
#endif

#ifdef __SDK__
  printf("*************************\n");
  printf("**Running Zynq ARM code**\n");
  printf("*************************\n\n");
#endif

#ifdef __SDK__
  /*
   * initialize Zynq environment
   */
  Xil_DCacheFlush();

  int error_count = 0;
  zynq_initialize(error_count); // initialize timer and IPs
  if (error_count) 
    return XST_FAILURE;
  printf("Zynq Initialization complete\n\n");
#endif


  Xil_DCacheFlush();

  for (int i=0; i<BufSize; i++){
	  input[i]=0;
  }
  printf("Output pointer address: %x\n", output);


#ifndef NO_TIMING
  printf("Testing and timing kernel. . . .\n\n");
#ifdef __SDK__
  Timer1 = 0;
  XTime_SetTime(Timer1);
#else
  gettimeofday(&start_time, NULL);
#endif
#endif

 ZhangIsfpga15_3(input, output);
#ifndef NO_TIMING
#ifdef __SDK__
  XTime_GetTime(&Timer1);
  printf("Total execution time = %lf (sec)\n\n", double(Timer1)/COUNTS_PER_SECOND);
#else
  gettimeofday(&end_time, NULL);
  printf("Runtime = %0.1f (microsec) \n\n",
	 (end_time.tv_sec - start_time.tv_sec)*1e6 + (end_time.tv_usec - start_time.tv_usec) );
#endif
#else
  printf("NO_TIMING: No timing done.\n\n");
#endif


  printf("%lx\n", sizeof(DATA_T));
  printf("%lx\n", (UINTPTR)(input));

  Xil_DCacheFlush();

  //int ret = XAxiCdma_SimpleTransfer(&cdma_dev_input, (UINTPTR)(input), (u32)BRAM_INPUT_BASEADDR, 8*BufSize*sizeof(DATA_T), NULL, NULL);
  //while (XAxiCdma_IsBusy(&cdma_dev_input));

  Xil_DCacheFlush();

  //int ret2 = XAxiCdma_SimpleTransfer(&cdma_dev_input, (u32)BRAM_INPUT_BASEADDR, (UINTPTR)temp_buf, BufSize*sizeof(DATA_T), NULL, NULL);
  //while (XAxiCdma_IsBusy(&cdma_dev_input));

  printf("%lx %lx %lx\n", XST_SUCCESS, XST_FAILURE, XST_INVALID_PARAM);
 // printf("%x %x\n", ret, ret2);
  for (int i=0; i<BufSize; i++){
   	  printf("%x\n",output[i]);
  }


 for (int i=0; i<4; i++){
	  for (int j=0; j<4; j++){
		  printf("%x",output[4*j+i]);
	  }
 }
 printf("\n");
 return (0);
}
