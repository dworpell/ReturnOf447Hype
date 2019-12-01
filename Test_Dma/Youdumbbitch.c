#include <stdio.h>
#include <stdint.h>
#include "temp.h"
#include "ap_cint.h"
void aes_main2(volatile uint32 input_dma_config[12],
		volatile uint32* inputDMA_addr, volatile uint32* dramDMA_addr, volatile uint32* result) {

#pragma HLS INTERFACE m_axi depth=50 port=input_dma_config offset=slave bundle=inputbram_dma
#pragma HLS INTERFACE s_axilite port=dramDMA_addr bundle=control
#pragma HLS INTERFACE s_axilite port=inputDMA_addr bundle=control
#pragma HLS INTERFACE s_axilite bundle=control port=return
	int stat=XAxiCdma_SimpleTransfer(input_dma_config, *inputDMA_addr, *dramDMA_addr,64);
	while (isBusy(input_dma_config));
	*result=stat;
}
