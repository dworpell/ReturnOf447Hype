#include <stdint.h>
#include "ap_cint.h"

void aes_main(uint32 input[16], uint32 output[16],uint32 block_key[4], volatile uint32* stall);
void aes_decrypt(uint32 input[16], uint32 output[16],uint32 block_key[4]);
