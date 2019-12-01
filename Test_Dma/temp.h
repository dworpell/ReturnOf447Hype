#include <stdint.h>
#include "ap_cint.h"

void aes_decrypt(uint32 input[16], uint32 output[16],uint32 block_key[4]);
uint32 XAxiCdma_SimpleTransfer(volatile uint32 reg[12], uint32 SrcAddr, uint32 DstAddr,uint32 length);
void aes_main(uint32 input[16], uint32 output[16], uint32 block_key[4], volatile uint32 input_dma_config[12], volatile uint32* inputDMA_addr, volatile uint32* dramDMA_addr);
uint32 isBusy(volatile uint32 reg[12]);
