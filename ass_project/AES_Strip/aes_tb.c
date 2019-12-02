#include "aes_kernel.h"
#include <stdio.h>
#include "ap_cint.h"

int main() {
	uint32 input[BUFSIZE];
	uint32 output[BUFSIZE];
	uint32 key[4];
	uint32 output_golden[4];
	uint32 decrypted_to[4];
	int i=0;
	for (i=0; i<BUFSIZE; i++){
		input[i]=0;
	}
	for (i=0; i<4; i++) {
		key[i]=0;
	}
	//volatile uint32 stall=0;
	aes_main(input,output,key);//,&stall);
	for(i=0; i<BUFSIZE; i++) {
		uint32 temp=output[i];
		for (int j=0; j<4; j++) {
			printf("%02x",temp&0xff);
			temp=temp>>8;
		}
		if (i%4==3){
			printf("\n");
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
