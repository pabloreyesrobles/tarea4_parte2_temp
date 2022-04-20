// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xeucdis.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XEucdis_CfgInitialize(XEucdis *InstancePtr, XEucdis_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XEucdis_Start(XEucdis *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEucdis_ReadReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XEucdis_WriteReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XEucdis_IsDone(XEucdis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEucdis_ReadReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XEucdis_IsIdle(XEucdis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEucdis_ReadReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XEucdis_IsReady(XEucdis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEucdis_ReadReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XEucdis_EnableAutoRestart(XEucdis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEucdis_WriteReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XEucdis_DisableAutoRestart(XEucdis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEucdis_WriteReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XEucdis_Get_C(XEucdis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEucdis_ReadReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_C_DATA);
    return Data;
}

u32 XEucdis_Get_C_vld(XEucdis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEucdis_ReadReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_C_CTRL);
    return Data & 0x1;
}

u32 XEucdis_Get_A_0_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_0_BASE);
}

u32 XEucdis_Get_A_0_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_0_HIGH);
}

u32 XEucdis_Get_A_0_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_A_0_HIGH - XEUCDIS_CONTROL_ADDR_A_0_BASE + 1);
}

u32 XEucdis_Get_A_0_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_A_0;
}

u32 XEucdis_Get_A_0_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_A_0;
}

u32 XEucdis_Write_A_0_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_0_HIGH - XEUCDIS_CONTROL_ADDR_A_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_0_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_0_HIGH - XEUCDIS_CONTROL_ADDR_A_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_A_0_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_0_HIGH - XEUCDIS_CONTROL_ADDR_A_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_0_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_0_HIGH - XEUCDIS_CONTROL_ADDR_A_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_0_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_A_1_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_1_BASE);
}

u32 XEucdis_Get_A_1_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_1_HIGH);
}

u32 XEucdis_Get_A_1_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_A_1_HIGH - XEUCDIS_CONTROL_ADDR_A_1_BASE + 1);
}

u32 XEucdis_Get_A_1_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_A_1;
}

u32 XEucdis_Get_A_1_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_A_1;
}

u32 XEucdis_Write_A_1_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_1_HIGH - XEUCDIS_CONTROL_ADDR_A_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_1_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_1_HIGH - XEUCDIS_CONTROL_ADDR_A_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_A_1_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_1_HIGH - XEUCDIS_CONTROL_ADDR_A_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_1_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_1_HIGH - XEUCDIS_CONTROL_ADDR_A_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_1_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_A_2_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_2_BASE);
}

u32 XEucdis_Get_A_2_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_2_HIGH);
}

u32 XEucdis_Get_A_2_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_A_2_HIGH - XEUCDIS_CONTROL_ADDR_A_2_BASE + 1);
}

u32 XEucdis_Get_A_2_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_A_2;
}

u32 XEucdis_Get_A_2_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_A_2;
}

u32 XEucdis_Write_A_2_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_2_HIGH - XEUCDIS_CONTROL_ADDR_A_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_2_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_2_HIGH - XEUCDIS_CONTROL_ADDR_A_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_A_2_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_2_HIGH - XEUCDIS_CONTROL_ADDR_A_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_2_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_2_HIGH - XEUCDIS_CONTROL_ADDR_A_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_2_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_A_3_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_3_BASE);
}

u32 XEucdis_Get_A_3_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_3_HIGH);
}

u32 XEucdis_Get_A_3_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_A_3_HIGH - XEUCDIS_CONTROL_ADDR_A_3_BASE + 1);
}

u32 XEucdis_Get_A_3_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_A_3;
}

u32 XEucdis_Get_A_3_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_A_3;
}

u32 XEucdis_Write_A_3_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_3_HIGH - XEUCDIS_CONTROL_ADDR_A_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_3_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_3_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_3_HIGH - XEUCDIS_CONTROL_ADDR_A_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_3_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_A_3_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_3_HIGH - XEUCDIS_CONTROL_ADDR_A_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_3_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_3_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_3_HIGH - XEUCDIS_CONTROL_ADDR_A_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_3_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_A_4_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_4_BASE);
}

u32 XEucdis_Get_A_4_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_4_HIGH);
}

u32 XEucdis_Get_A_4_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_A_4_HIGH - XEUCDIS_CONTROL_ADDR_A_4_BASE + 1);
}

u32 XEucdis_Get_A_4_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_A_4;
}

u32 XEucdis_Get_A_4_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_A_4;
}

u32 XEucdis_Write_A_4_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_4_HIGH - XEUCDIS_CONTROL_ADDR_A_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_4_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_4_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_4_HIGH - XEUCDIS_CONTROL_ADDR_A_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_4_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_A_4_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_4_HIGH - XEUCDIS_CONTROL_ADDR_A_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_4_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_4_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_4_HIGH - XEUCDIS_CONTROL_ADDR_A_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_4_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_A_5_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_5_BASE);
}

u32 XEucdis_Get_A_5_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_5_HIGH);
}

u32 XEucdis_Get_A_5_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_A_5_HIGH - XEUCDIS_CONTROL_ADDR_A_5_BASE + 1);
}

u32 XEucdis_Get_A_5_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_A_5;
}

u32 XEucdis_Get_A_5_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_A_5;
}

u32 XEucdis_Write_A_5_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_5_HIGH - XEUCDIS_CONTROL_ADDR_A_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_5_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_5_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_5_HIGH - XEUCDIS_CONTROL_ADDR_A_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_5_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_A_5_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_5_HIGH - XEUCDIS_CONTROL_ADDR_A_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_5_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_5_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_5_HIGH - XEUCDIS_CONTROL_ADDR_A_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_5_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_A_6_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_6_BASE);
}

u32 XEucdis_Get_A_6_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_6_HIGH);
}

u32 XEucdis_Get_A_6_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_A_6_HIGH - XEUCDIS_CONTROL_ADDR_A_6_BASE + 1);
}

u32 XEucdis_Get_A_6_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_A_6;
}

u32 XEucdis_Get_A_6_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_A_6;
}

u32 XEucdis_Write_A_6_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_6_HIGH - XEUCDIS_CONTROL_ADDR_A_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_6_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_6_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_6_HIGH - XEUCDIS_CONTROL_ADDR_A_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_6_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_A_6_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_6_HIGH - XEUCDIS_CONTROL_ADDR_A_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_6_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_6_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_6_HIGH - XEUCDIS_CONTROL_ADDR_A_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_6_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_A_7_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_7_BASE);
}

u32 XEucdis_Get_A_7_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_7_HIGH);
}

u32 XEucdis_Get_A_7_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_A_7_HIGH - XEUCDIS_CONTROL_ADDR_A_7_BASE + 1);
}

u32 XEucdis_Get_A_7_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_A_7;
}

u32 XEucdis_Get_A_7_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_A_7;
}

u32 XEucdis_Write_A_7_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_7_HIGH - XEUCDIS_CONTROL_ADDR_A_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_7_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_7_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_A_7_HIGH - XEUCDIS_CONTROL_ADDR_A_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_7_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_A_7_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_7_HIGH - XEUCDIS_CONTROL_ADDR_A_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_7_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_A_7_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_A_7_HIGH - XEUCDIS_CONTROL_ADDR_A_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_A_7_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_B_0_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_0_BASE);
}

u32 XEucdis_Get_B_0_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_0_HIGH);
}

u32 XEucdis_Get_B_0_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_B_0_HIGH - XEUCDIS_CONTROL_ADDR_B_0_BASE + 1);
}

u32 XEucdis_Get_B_0_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_B_0;
}

u32 XEucdis_Get_B_0_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_B_0;
}

u32 XEucdis_Write_B_0_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_0_HIGH - XEUCDIS_CONTROL_ADDR_B_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_0_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_0_HIGH - XEUCDIS_CONTROL_ADDR_B_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_B_0_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_0_HIGH - XEUCDIS_CONTROL_ADDR_B_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_0_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_0_HIGH - XEUCDIS_CONTROL_ADDR_B_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_0_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_B_1_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_1_BASE);
}

u32 XEucdis_Get_B_1_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_1_HIGH);
}

u32 XEucdis_Get_B_1_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_B_1_HIGH - XEUCDIS_CONTROL_ADDR_B_1_BASE + 1);
}

u32 XEucdis_Get_B_1_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_B_1;
}

u32 XEucdis_Get_B_1_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_B_1;
}

u32 XEucdis_Write_B_1_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_1_HIGH - XEUCDIS_CONTROL_ADDR_B_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_1_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_1_HIGH - XEUCDIS_CONTROL_ADDR_B_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_B_1_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_1_HIGH - XEUCDIS_CONTROL_ADDR_B_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_1_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_1_HIGH - XEUCDIS_CONTROL_ADDR_B_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_1_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_B_2_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_2_BASE);
}

u32 XEucdis_Get_B_2_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_2_HIGH);
}

u32 XEucdis_Get_B_2_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_B_2_HIGH - XEUCDIS_CONTROL_ADDR_B_2_BASE + 1);
}

u32 XEucdis_Get_B_2_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_B_2;
}

u32 XEucdis_Get_B_2_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_B_2;
}

u32 XEucdis_Write_B_2_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_2_HIGH - XEUCDIS_CONTROL_ADDR_B_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_2_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_2_HIGH - XEUCDIS_CONTROL_ADDR_B_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_B_2_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_2_HIGH - XEUCDIS_CONTROL_ADDR_B_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_2_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_2_HIGH - XEUCDIS_CONTROL_ADDR_B_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_2_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_B_3_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_3_BASE);
}

u32 XEucdis_Get_B_3_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_3_HIGH);
}

u32 XEucdis_Get_B_3_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_B_3_HIGH - XEUCDIS_CONTROL_ADDR_B_3_BASE + 1);
}

u32 XEucdis_Get_B_3_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_B_3;
}

u32 XEucdis_Get_B_3_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_B_3;
}

u32 XEucdis_Write_B_3_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_3_HIGH - XEUCDIS_CONTROL_ADDR_B_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_3_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_3_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_3_HIGH - XEUCDIS_CONTROL_ADDR_B_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_3_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_B_3_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_3_HIGH - XEUCDIS_CONTROL_ADDR_B_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_3_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_3_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_3_HIGH - XEUCDIS_CONTROL_ADDR_B_3_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_3_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_B_4_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_4_BASE);
}

u32 XEucdis_Get_B_4_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_4_HIGH);
}

u32 XEucdis_Get_B_4_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_B_4_HIGH - XEUCDIS_CONTROL_ADDR_B_4_BASE + 1);
}

u32 XEucdis_Get_B_4_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_B_4;
}

u32 XEucdis_Get_B_4_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_B_4;
}

u32 XEucdis_Write_B_4_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_4_HIGH - XEUCDIS_CONTROL_ADDR_B_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_4_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_4_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_4_HIGH - XEUCDIS_CONTROL_ADDR_B_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_4_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_B_4_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_4_HIGH - XEUCDIS_CONTROL_ADDR_B_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_4_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_4_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_4_HIGH - XEUCDIS_CONTROL_ADDR_B_4_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_4_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_B_5_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_5_BASE);
}

u32 XEucdis_Get_B_5_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_5_HIGH);
}

u32 XEucdis_Get_B_5_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_B_5_HIGH - XEUCDIS_CONTROL_ADDR_B_5_BASE + 1);
}

u32 XEucdis_Get_B_5_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_B_5;
}

u32 XEucdis_Get_B_5_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_B_5;
}

u32 XEucdis_Write_B_5_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_5_HIGH - XEUCDIS_CONTROL_ADDR_B_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_5_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_5_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_5_HIGH - XEUCDIS_CONTROL_ADDR_B_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_5_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_B_5_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_5_HIGH - XEUCDIS_CONTROL_ADDR_B_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_5_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_5_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_5_HIGH - XEUCDIS_CONTROL_ADDR_B_5_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_5_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_B_6_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_6_BASE);
}

u32 XEucdis_Get_B_6_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_6_HIGH);
}

u32 XEucdis_Get_B_6_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_B_6_HIGH - XEUCDIS_CONTROL_ADDR_B_6_BASE + 1);
}

u32 XEucdis_Get_B_6_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_B_6;
}

u32 XEucdis_Get_B_6_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_B_6;
}

u32 XEucdis_Write_B_6_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_6_HIGH - XEUCDIS_CONTROL_ADDR_B_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_6_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_6_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_6_HIGH - XEUCDIS_CONTROL_ADDR_B_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_6_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_B_6_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_6_HIGH - XEUCDIS_CONTROL_ADDR_B_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_6_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_6_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_6_HIGH - XEUCDIS_CONTROL_ADDR_B_6_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_6_BASE + offset + i);
    }
    return length;
}

u32 XEucdis_Get_B_7_BaseAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_7_BASE);
}

u32 XEucdis_Get_B_7_HighAddress(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_7_HIGH);
}

u32 XEucdis_Get_B_7_TotalBytes(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XEUCDIS_CONTROL_ADDR_B_7_HIGH - XEUCDIS_CONTROL_ADDR_B_7_BASE + 1);
}

u32 XEucdis_Get_B_7_BitWidth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_WIDTH_B_7;
}

u32 XEucdis_Get_B_7_Depth(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEUCDIS_CONTROL_DEPTH_B_7;
}

u32 XEucdis_Write_B_7_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_7_HIGH - XEUCDIS_CONTROL_ADDR_B_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_7_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_7_Words(XEucdis *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XEUCDIS_CONTROL_ADDR_B_7_HIGH - XEUCDIS_CONTROL_ADDR_B_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_7_BASE + (offset + i)*4);
    }
    return length;
}

u32 XEucdis_Write_B_7_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_7_HIGH - XEUCDIS_CONTROL_ADDR_B_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_7_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XEucdis_Read_B_7_Bytes(XEucdis *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XEUCDIS_CONTROL_ADDR_B_7_HIGH - XEUCDIS_CONTROL_ADDR_B_7_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XEUCDIS_CONTROL_ADDR_B_7_BASE + offset + i);
    }
    return length;
}

void XEucdis_InterruptGlobalEnable(XEucdis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEucdis_WriteReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_GIE, 1);
}

void XEucdis_InterruptGlobalDisable(XEucdis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEucdis_WriteReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_GIE, 0);
}

void XEucdis_InterruptEnable(XEucdis *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEucdis_ReadReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_IER);
    XEucdis_WriteReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_IER, Register | Mask);
}

void XEucdis_InterruptDisable(XEucdis *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEucdis_ReadReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_IER);
    XEucdis_WriteReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XEucdis_InterruptClear(XEucdis *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEucdis_WriteReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_ISR, Mask);
}

u32 XEucdis_InterruptGetEnabled(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEucdis_ReadReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_IER);
}

u32 XEucdis_InterruptGetStatus(XEucdis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEucdis_ReadReg(InstancePtr->Control_BaseAddress, XEUCDIS_CONTROL_ADDR_ISR);
}

