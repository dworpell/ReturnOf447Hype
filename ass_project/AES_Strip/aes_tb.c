#include "aes_kernel.h"
#include <stdio.h>
#include "ap_cint.h"

int main() {
	uint32 input[16];
	uint32 output[16];
	uint32 key[4];
	uint32 output_golden[16];
	uint32 decrypted_to[16];
	int i=0;
	for (i=0; i<16; i++){
		input[i]=0;
	}
	for (i=0; i<4; i++) {
		key[i]=0;
	}
	volatile uint32 stall=0;
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
