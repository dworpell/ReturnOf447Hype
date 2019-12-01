#include <stdio.h>
#include <stdint.h>
#include "aes_kernel.h"
#include "ap_cint.h"
//#define DEBUG

#define ENCRYPT
//#define DECRYPT

#define XTIME_E(x) (xtime8(x)^xtime4(x)^xtime(x))
#define XTIME_B(x) (xtime8(x)^xtime(x)^x)
#define XTIME_D(x) (xtime8(x)^xtime4(x)^x)
#define XTIME_9(x) (xtime8(x)^x)

#ifdef ENCRYPT
static const uint8 sbox[256] = {
  //0     1    2      3     4    5     6     7      8    9     A      B    C     D     E     F
  0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
  0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
  0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
  0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
  0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
  0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
  0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
  0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
  0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
  0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
  0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
  0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
  0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
  0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
  0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
  0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16 };

static const uint8 rsbox[256] = {
		0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
		  0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
		  0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
		  0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
		  0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
		  0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
		  0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
		  0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
		  0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
		  0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
		  0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
		  0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
		  0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
		  0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
		  0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
		  0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16 };
#endif
#ifdef DECRYPT
static const uint8 sbox[256] = {
  //0     1    2      3     4    5     6     7      8    9     A      B    C     D     E     F
  0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
  0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
  0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
  0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
  0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
  0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
  0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
  0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
  0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
  0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
  0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
  0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
  0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
  0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
  0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
  0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16 };

static const uint8 rsbox[256] = {
  0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 0xbf, 0x40, 0xa3, 0x9e, 0x81, 0xf3, 0xd7, 0xfb,
  0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f, 0xff, 0x87, 0x34, 0x8e, 0x43, 0x44, 0xc4, 0xde, 0xe9, 0xcb,
  0x54, 0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 0xee, 0x4c, 0x95, 0x0b, 0x42, 0xfa, 0xc3, 0x4e,
  0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24, 0xb2, 0x76, 0x5b, 0xa2, 0x49, 0x6d, 0x8b, 0xd1, 0x25,
  0x72, 0xf8, 0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xd4, 0xa4, 0x5c, 0xcc, 0x5d, 0x65, 0xb6, 0x92,
  0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda, 0x5e, 0x15, 0x46, 0x57, 0xa7, 0x8d, 0x9d, 0x84,
  0x90, 0xd8, 0xab, 0x00, 0x8c, 0xbc, 0xd3, 0x0a, 0xf7, 0xe4, 0x58, 0x05, 0xb8, 0xb3, 0x45, 0x06,
  0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 0xc1, 0xaf, 0xbd, 0x03, 0x01, 0x13, 0x8a, 0x6b,
  0x3a, 0x91, 0x11, 0x41, 0x4f, 0x67, 0xdc, 0xea, 0x97, 0xf2, 0xcf, 0xce, 0xf0, 0xb4, 0xe6, 0x73,
  0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 0xe2, 0xf9, 0x37, 0xe8, 0x1c, 0x75, 0xdf, 0x6e,
  0x47, 0xf1, 0x1a, 0x71, 0x1d, 0x29, 0xc5, 0x89, 0x6f, 0xb7, 0x62, 0x0e, 0xaa, 0x18, 0xbe, 0x1b,
  0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 0x9a, 0xdb, 0xc0, 0xfe, 0x78, 0xcd, 0x5a, 0xf4,
  0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07, 0xc7, 0x31, 0xb1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xec, 0x5f,
  0x60, 0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 0x2d, 0xe5, 0x7a, 0x9f, 0x93, 0xc9, 0x9c, 0xef,
  0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5, 0xb0, 0xc8, 0xeb, 0xbb, 0x3c, 0x83, 0x53, 0x99, 0x61,
  0x17, 0x2b, 0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 0xe1, 0x69, 0x14, 0x63, 0x55, 0x21, 0x0c, 0x7d };
#endif
// The round constant word array, Rcon[i], contains the values given by
// x to the power (i-1) being powers of x (x is denoted as {02}) in the field GF(2^8)
void print_state(uint8 State[4][4])
{
#ifdef DEBUG
	for (int d=0; d<4; d++) {
		for (int dd=0; dd<4; dd++) {
			printf("|%02x",State[d][dd]);
		}
		printf("|\n");
	}
	printf("\n");
#endif
}
void print_roundkeys(uint32 round_key[4], int32 round)
{
#ifdef DEBUG
	printf("\nRound %d key: \n", round);

	for (int d=0; d<4; d++) {
		printf("%08x\n",round_key[d]);
	}
	printf("\n");
#endif
}
static uint8_t xtime (uint8_t x) {
	uint8 temp = (x<<1);
	return (x&0x80) ? temp^0x1b : temp;
}
static uint8_t xtime4 (uint8_t x) {
	return xtime(xtime(x));
}

static uint8_t xtime8(uint8_t x)
{
	return xtime(xtime(xtime(x)));
}
static const uint8 Rcon[11] = {
  0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36 };

void SubBytes(uint8 State[4][4]) {

#ifdef DEBUG
	printf("SubBytes: \n");
	print_state(State);
#endif
	for (int i=0; i<4; i++) {
#pragma HLS PIPELINE
		{
#pragma HLS UNROLL
			State[0][i] = sbox[State[0][i]];
			State[1][i] = rsbox[State[1][i]];
			State[2][i] = rsbox[State[2][i]];
			State[3][i] = sbox[State[3][i]];
		}
	}
#ifdef DEBUG
	print_state(State);
#endif
}

#ifdef DECRYPT
void InvSubBytes(uint8 State[4][4]) {
#ifdef DEBUG
	printf("SubBytes: \n");
	print_state(State);
#endif
	for (int i=0; i<4; i++) {
		for (int j=0; j<4;j++) {
			State[j][i] = rsbox[State[j][i]];
		}
	}
#ifdef DEBUG
	print_state(State);
#endif
}
#endif

void ShiftRows(uint8 State[4][4]) {
#ifdef DEBUG
	printf("ShiftRows: \n");
	print_state(State);
#endif

	uint8 temp1=State[1][0];
	uint8 temp2=0;
	State[1][0]=State[1][1];
	State[1][1]=State[1][2];
	State[1][2]=State[1][3];
	State[1][3]=temp1;

	temp1=State[2][1];
	temp2=State[2][0];
	State[2][0]=State[2][2];
	State[2][1]=State[2][3];
	State[2][3]=temp1;
	State[2][2]=temp2;

	temp1=State[3][3];
	State[3][3]=State[3][2];
	State[3][2]=State[3][1];
	State[3][1]=State[3][0];
	State[3][0]=temp1;


/*
	uint32_t* temp_arr;//[4];
	temp_arr=(uint32_t*)State[0];
	temp_arr[1]=(temp_arr[1]>>8)  | (temp_arr[1]<<24);
	temp_arr[2]=(temp_arr[2]>>16) | (temp_arr[2]<<16);
	temp_arr[3]=(temp_arr[3]>>24) | (temp_arr[3]<<8);
*/
#ifdef DEBUG
	print_state(State);
#endif
}

#ifdef DECRYPT
void InvMixColumns(uint8 State[4][4]){
#ifdef DEBUG
	printf("MixCol: \n");
	print_state(State);
#endif
	for (int i =0; i<4; i++) {
		uint8 c0=State[0][i];
		uint8 c1=State[1][i];
		uint8 c2=State[2][i];
		uint8 c3=State[3][i];
		State[0][i]=XTIME_E(c0) ^ XTIME_B(c1) ^ XTIME_D(c2) ^ XTIME_9(c3);
		State[1][i]=XTIME_9(c0) ^ XTIME_E(c1) ^ XTIME_B(c2) ^ XTIME_D(c3);
		State[2][i]=XTIME_D(c0) ^ XTIME_9(c1) ^ XTIME_E(c2) ^ XTIME_B(c3);
		State[3][i]=XTIME_B(c0) ^ XTIME_D(c1) ^ XTIME_9(c2) ^ XTIME_E(c3);
	}
#ifdef DEBUG
	print_state(State);
#endif
}
#endif

#ifdef DECRYPT
void InvShiftRows(uint8 State[4][4]) {
#ifdef DEBUG
	printf("ShiftRows: \n");
	print_state(State);
#endif
	uint32* temp_arr;//[4];
	temp_arr=(uint32*)State[0];
	temp_arr[1]=(temp_arr[1]>>24) | (temp_arr[1]<<8);
	temp_arr[2]=(temp_arr[2]>>16) | (temp_arr[2]<<16);
	temp_arr[3]=(temp_arr[3]>>8)  | (temp_arr[3]<<24);
#ifdef DEBUG
	print_state(State);
#endif
}
#endif

void MixColumns(uint8 State[4][4])
{
	//Mix Columns Written to Avoid ShiftRows Step
	/*for (int i =0; i<4; i++) {
		uint8_t c0=State[0][i];
		uint8_t c1=State[1][(i+1)&0x3];
		uint8_t c2=State[2][(i+2)&0x3];
		uint8_t c3=State[3][(i+3)&0x3];
		State[0][i            ]=xtime(c0)^c1^xtime(c1)^c2^c3;
		State[1][ (i+1) & 0x3 ]=c0^xtime(c1)^xtime(c2)^c2^c3;
		State[2][ (i+2) & 0x3 ]=c0^c1^xtime(c2)^xtime(c3)^c3;
		State[3][ (i+3) & 0x3 ]=xtime(c0)^xtime(c0)^c1^c2^xtime(c3);
	}*/
#ifdef DEBUG
	printf("MixCol: \n");
	print_state(State);
#endif
	for (int i =0; i<4; i++) {
#pragma HLS UNROLL
			uint8 c0=State[0][i];
			uint8 c1=State[1][i];
			uint8 c2=State[2][i];
			uint8 c3=State[3][i];
			State[0][i]=xtime(c0)^c1^xtime(c1)^c2^c3;

			State[1][i]=c0^xtime(c1)^xtime(c2)^c2^c3;

			State[2][i]=c0^c1^xtime(c2)^xtime(c3)^c3;

			State[3][i]=xtime(c0)^c0^c1^c2^xtime(c3);
		}
#ifdef DEBUG
	print_state(State);
#endif
}
//Nb * (Nr+1) words -> 4*11 = 44 Words = 176 bytes
void AddRoundKey(uint8 State[4][4], uint32 round_key[4], unsigned round)
{
#ifdef DEBUG
	printf("AddRoundKey: \n");
	print_state(State);
#endif
	int i = 0;

	uint32 c0=apint_concatenate(apint_concatenate(State[3][0],State[2][0]),apint_concatenate(State[1][0],State[0][0]));
	uint32 c1=apint_concatenate(apint_concatenate(State[3][1],State[2][1]),apint_concatenate(State[1][1],State[0][1]));
	uint32 c2=apint_concatenate(apint_concatenate(State[3][2],State[2][2]),apint_concatenate(State[1][2],State[0][2]));
	uint32 c3=apint_concatenate(apint_concatenate(State[3][3],State[2][3]),apint_concatenate(State[1][3],State[0][3]));

	uint32 c0t=c0^round_key[0];
	uint32 c1t=c1^round_key[1];
	uint32 c2t=c2^round_key[2];
	uint32 c3t=c3^round_key[3];

	State[0][0] = apint_get_range(c0t, 7, 0);
	State[1][0] = apint_get_range(c0t, 15, 8);
	State[2][0] = apint_get_range(c0t, 23, 16);
	State[3][0] = apint_get_range(c0t, 31, 24);

	State[0][1] = apint_get_range(c1t, 7, 0);
	State[1][1] = apint_get_range(c1t, 15, 8);
	State[2][1] = apint_get_range(c1t, 23, 16);
	State[3][1] = apint_get_range(c1t, 31, 24);

	State[0][2] = apint_get_range(c2t, 7, 0);
	State[1][2] = apint_get_range(c2t, 15, 8);
	State[2][2] = apint_get_range(c2t, 23, 16);
	State[3][2] = apint_get_range(c2t, 31, 24);

	State[0][3] = apint_get_range(c3t, 7, 0);
	State[1][3] = apint_get_range(c3t, 15, 8);
	State[2][3] = apint_get_range(c3t, 23, 16);
	State[3][3] = apint_get_range(c3t, 31, 24);


#ifdef DEBUG
	print_state(State);
#endif
}
inline uint32 RotateWord(uint32 word)
{
	uint32 temp=0;
	temp=apint_set_range(temp,23,0,apint_get_range(word,31,8));
	temp=apint_set_range(temp,31,24,apint_get_range(word,7,0));
	return temp;
}
inline uint32 SBoxWord(uint32 word)
{
	uint32 temp=0;
	temp=apint_set_range(temp,31,24,sbox[apint_get_range(word,31,24)]);
	temp=apint_set_range(temp,23,16,rsbox[apint_get_range(word,23,16)]);
	temp=apint_set_range(temp,15,8,rsbox[apint_get_range(word,15,8)]);
	temp=apint_set_range(temp,7,0,sbox[apint_get_range(word,7,0)]);

	/*temp= (sbox[word >>24])<<24;
	temp|=(sbox[(word>>16 ) & 0xff])<<16;
	temp|=(sbox[(word>>8  ) & 0xff]) <<8;
	temp|=(sbox[(word     ) & 0xff]);*/
	return temp;
}
void KeyExpansion(uint32 round_key[4], uint32 new_key[4], uint32 round)
{
#pragma HLS PIPELINE
	//Round 0 - copy all keys into first 16
	//uint32_t* round_word;
	//round_word=(*((uint32_t**) &round_key));
	//round_word = (uint32_t*)round_key;

	uint32 temp;

	for (int i=0; i<4;i++) {
		if (i==0){
			temp = (SBoxWord(RotateWord(round_key[3])))^Rcon[round];
		}
		else{
			temp = new_key[i-1];
		}
		new_key[i]=round_key[i]^temp;
	}
}

void aes_main(uint32 input[16], uint32 output[16], uint32 block_key[4], volatile uint32 input_dma_config[12], volatile uint32* inputDMA_addr, volatile uint32* dramDMA_addr)
{
#pragma HLS INTERFACE m_axi depth=50 port=input_dma_config offset=off bundle=inputbram_dma
#pragma HLS INTERFACE s_axilite port=dramDMA_addr bundle=control
#pragma HLS INTERFACE s_axilite port=inputDMA_addr bundle=control
#pragma HLS INTERFACE s_axilite port=block_key bundle=control

#pragma HLS INTERFACE bram port=input
#pragma HLS RESOURCE variable=input core=RAM_1P_BRAM
#pragma HLS INTERFACE bram port=output
#pragma HLS RESOURCE variable=output core=RAM_1P_BRAM
#pragma HLS INTERFACE s_axilite bundle=control port=return

	int stat=XAxiCdma_SimpleTransfer(input_dma_config, *inputDMA_addr, *dramDMA_addr,64);
	while (isBusy(input_dma_config));
	uint8 State[4][4];
//#pragma HLS RESOURCE variable=State core=RAM_2P_LUTRAM
#pragma HLS ARRAY_RESHAPE variable=State complete factor=4 dim=0

	int i=0;
	int j=0;

	Outer: for (i=0; i<4; i++){
		Inner: for (j=0; j<4; j++) {
			State[i][j] = apint_get_range(input[j*4 + i], 7, 0);
			//printf("State[%d][%d]: %x\n", i, j, State[i][j]);
		}
	}

	//uint8 init_key[16]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

	//IV to be added later
	uint32 round_key[4];
#pragma HLS ARRAY_RESHAPE variable=round_key complete dim=0
	uint32 next_key[4];
#pragma HLS ARRAY_RESHAPE variable=next_key complete dim=0
	for (i=0; i<4; i++){
		round_key[i] = block_key[i];
	}

#ifdef DEBUG
	print_roundkeys(round_key, 0);
#endif

	AddRoundKey(State,round_key,0);

	KeyExpansion(round_key, next_key, 1);
	for (i=0; i<4; i++){
		round_key[i] = next_key[i];
	}

	Main_AES_Loop: for (int round=1; round<10; round++) {
#pragma HLS PIPELINE
		KeyExpansion(round_key, next_key, round+1);
#ifdef DEBUG
		print_roundkeys(round_key, round);
#endif
		SubBytes(State);
		ShiftRows(State);
		MixColumns(State);
		AddRoundKey(State, round_key, round);

		for (i=0; i<4; i++){
#pragma HLS PIPELINE
			round_key[i] = next_key[i];
		}
	}
	SubBytes(State);
	ShiftRows(State);
	AddRoundKey(State,round_key, 10);

	//while(*stall);
	ouput_outer: for (i=0; i<4; i++){
		output_inner: for (j=0; j<4; j++) {
			output[i*4+j]=State[i][j];
		}
	}
	output[0]=stat;
	print_state(State);
}
#ifdef DECRYPT
void aes_decrypt(uint32 input[16], uint32 output[16], uint32 block_key[4]) {

	uint8 State[4][4];

	int i=0;
	int j=0;
	for (i=0; i<4; i++){
		for (j=0; j<4; j++) {
			State[i][j] = input[i*4 + j];
		}
	}
	//uint8 init_key[16]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

	//IV to be added later

	uint32 round_key[4];
	uint32 next_key[4];
	for (i=0; i<4; i++){
		round_key[i] = block_key[i];
	}

	KeyExpansion(round_key,next_key, 10);


#ifdef DEBUG
	print_roundkeys(round_key, 0);
	print_state(State);
#endif
	AddRoundKey(State,round_key,10);
	for (i=0; i<4; i++){
		round_key[i] = next_key[i];
	}

#ifdef DEBUG
	print_state(State);
#endif
	for (int round=9; round>0; round--) {
		KeyExpansion(round_key, next_key, round+1);
		print_roundkeys(round_key, round);

		InvShiftRows(State);
		InvSubBytes(State);
		AddRoundKey(State, round_key, round);
		InvMixColumns(State);
		for (i=0; i<4; i++){
			round_key[i] = next_key[i];
		}
	}
	InvSubBytes(State);
	InvShiftRows(State);
	AddRoundKey(State,round_key, 0);

	for (i=0; i<4; i++){
		for (j=0; j<4; j++) {
			output[i*4+j]=State[i][j];
		}
	}
}
#endif
