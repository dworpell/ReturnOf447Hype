#include <stdint.h>
void aes_main(uint32_t input[16], uint32_t output[16],uint32_t block_key[4], volatile uint32_t* stall);
void aes_decrypt(uint32_t input[16], uint32_t output[16],uint32_t block_key[4]);
