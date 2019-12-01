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
 * The implementations in this file are based on Zhang'15:
 *    C. Zhang, et al., "Optimizing FPGA-based Accelerator
 *    Design for Deep Convolutional Neural Networks," FPGA, 2015.
 * Refer to Zhang'15 for discussion of the algorithms
 */

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <sys/time.h>

#include "config.h"
#include "convolve.h"
#include "sdk.h"


/****************************************************************
 * Fully implemented blocked convolution layer implementation
 * (with local memory promotion) based on Figure 9:
 *    C. Zhang, et al., "Optimizing FPGA-based Accelerator
 *    Design for Deep Convolutional Neural Networks," FPGA, 2015.
 ****************************************************************/

/*
 * Local buffers used by convolve_kernel().  In HLS, these become
 * blockRAMs holding active regions of input/output feature maps
 * and weights
 */
void ZhangIsfpga15_3(DATA_T *input, DATA_T *output) {

#ifndef __SDK__
	  /*
	   * This is the kernel to be implemented on the fabric using
	   * HLS.
	   *
	   * Call as software for Linux and HLS simulation testbench
	   */
	  aes_main(BufI, BufW);
#else
	  /*
	   * Prepare in-fabric BRAM interface buffers and
	   * invoke the in-fabric kernel from ARM core.
	   */

	  // flush D-cache before DMA
	  Xil_DCacheFlush();

      // DMA BufI->BRAM, 16*sizeof(DATA_T) bytes
	  XAxiCdma_SimpleTransfer(&cdma_dev_input, (UINTPTR)(input), (u32)BRAM_INPUT_BASEADDR, BufSize*sizeof(DATA_T), NULL, NULL);
	  //Wait till DMA completion
	  
	  while (XAxiCdma_IsBusy(&cdma_dev_input));
	  Xil_DCacheFlush();

	  // start in-fabric aes_main
	  XAes_main_Start(&aes_main_dev);
	  // wait till done
	  Xil_DCacheFlush();

	  while (!XAes_main_IsDone(&aes_main_dev));
	  Xil_DCacheFlush();

      // DMA BRAM->BufO, Tm*Tr*Tc*sizeof(DATA_T) bytes
	  printf("Output pointer address BITCH: %x\n", output);
	  Xil_DCacheFlush();

	  XAxiCdma_SimpleTransfer(&cdma_dev_weight, (u32)BRAM_WEIGHT_BASEADDR, (UINTPTR)output, BufSize*sizeof(DATA_T), NULL, NULL);
	  //Wait till DMA completion
	  while (XAxiCdma_IsBusy(&cdma_dev_weight));
#endif

}
