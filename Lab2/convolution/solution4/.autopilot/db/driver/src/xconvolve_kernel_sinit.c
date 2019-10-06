// ==============================================================
// File generated on Sun Oct 06 17:59:51 -0400 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xconvolve_kernel.h"

extern XConvolve_kernel_Config XConvolve_kernel_ConfigTable[];

XConvolve_kernel_Config *XConvolve_kernel_LookupConfig(u16 DeviceId) {
	XConvolve_kernel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCONVOLVE_KERNEL_NUM_INSTANCES; Index++) {
		if (XConvolve_kernel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XConvolve_kernel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XConvolve_kernel_Initialize(XConvolve_kernel *InstancePtr, u16 DeviceId) {
	XConvolve_kernel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XConvolve_kernel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XConvolve_kernel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

