#include "aes_kernel.h"
#include <stdio.h>
int main() {
	uint32_t input[16];
	uint32_t output[16];
	uint32_t key[4];
	uint32_t output_golden[16];
	uint32_t decrypted_to[16];
	int i=0;
	for (i=0; i<16; i++){
		input[i]=0;
	}
	for (i=0; i<4; i++) {
		key[i]=0;
	}
	volatile uint32_t stall=0;
	aes_main(input,output,key,&stall);
	for(i=0; i<4; i++) {
		for (int j=0; j<4; j++) {
			printf("%x",output[(j*4 +i)]);
		}
	}
	printf("\n");
	/*
	printf("Decrypting: \n\n");
	aes_decrypt(output,decrypted_to,key);
	for(i=0; i<4; i++) {
		for (int j=0; j<4; j++) {
			printf("%x",input[(j*4 +i)]);
		}
	}
	printf("\n");
	for (i=0; i<16; i++){
		if (input[i] != decrypted_to[i]){
			printf("%d: %02x =?= %02x\n", i,input[i], decrypted_to[i]);
			return 1;
		}
	}*/
	return 0;
}
