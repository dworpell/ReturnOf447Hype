void ShiftRows(uint8_t State[4][4]) {
#pragma HLS DEPENDENCE inter true
#ifdef DEBUG
	printf("ShiftRows: \n");
	print_state(State);
#endif

	uint32_t* temp_arr;//[4];
#pragma HLS DEPENDENCE variable=temp_arr pointer inter RAW true

	temp_arr=(uint32_t*)State[0];
	temp_arr[1]=(temp_arr[1]>>8)  | (temp_arr[1]<<24);
	temp_arr[2]=(temp_arr[2]>>16) | (temp_arr[2]<<16);
	temp_arr[3]=(temp_arr[3]>>24) | (temp_arr[3]<<8);
#ifdef DEBUG
	print_state(State);
#endif
}