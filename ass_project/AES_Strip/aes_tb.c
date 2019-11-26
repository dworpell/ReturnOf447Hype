#include "aes_kernel.h"
#include <stdio.h>
int main() {
	uint8_t input[16];
	uint8_t output[16];
	int i=0;
	for (i=0; i<16; i++){
		input[i]=0;
	}
	aes_main(input,output);
	for(i=0; i<4; i++) {
		for (int j=0; j<4; j++) {
			printf("%x",output[(j*4 +i)]);
		}
	}
	printf("\n");
	printf("Decrypting: \n\n");
	aes_decrypt(output, input);
	for(i=0; i<4; i++) {
		for (int j=0; j<4; j++) {
			printf("%x",input[(j*4 +i)]);
		}
	}
}
