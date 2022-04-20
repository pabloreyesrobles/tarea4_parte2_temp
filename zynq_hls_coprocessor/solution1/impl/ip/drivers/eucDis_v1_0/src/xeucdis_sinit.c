// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xeucdis.h"

extern XEucdis_Config XEucdis_ConfigTable[];

XEucdis_Config *XEucdis_LookupConfig(u16 DeviceId) {
	XEucdis_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XEUCDIS_NUM_INSTANCES; Index++) {
		if (XEucdis_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XEucdis_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XEucdis_Initialize(XEucdis *InstancePtr, u16 DeviceId) {
	XEucdis_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XEucdis_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XEucdis_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

