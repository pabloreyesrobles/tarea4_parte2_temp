// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XEUCDIS_H
#define XEUCDIS_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xeucdis_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XEucdis_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XEucdis;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEucdis_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEucdis_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEucdis_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEucdis_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XEucdis_Initialize(XEucdis *InstancePtr, u16 DeviceId);
XEucdis_Config* XEucdis_LookupConfig(u16 DeviceId);
int XEucdis_CfgInitialize(XEucdis *InstancePtr, XEucdis_Config *ConfigPtr);
#else
int XEucdis_Initialize(XEucdis *InstancePtr, const char* InstanceName);
int XEucdis_Release(XEucdis *InstancePtr);
#endif

void XEucdis_Start(XEucdis *InstancePtr);
u32 XEucdis_IsDone(XEucdis *InstancePtr);
u32 XEucdis_IsIdle(XEucdis *InstancePtr);
u32 XEucdis_IsReady(XEucdis *InstancePtr);
void XEucdis_EnableAutoRestart(XEucdis *InstancePtr);
void XEucdis_DisableAutoRestart(XEucdis *InstancePtr);

u32 XEucdis_Get_C(XEucdis *InstancePtr);
u32 XEucdis_Get_C_vld(XEucdis *InstancePtr);
u32 XEucdis_Get_A_0_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_0_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_0_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_A_0_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_A_0_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_A_0_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_A_0_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_A_0_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_A_0_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_A_1_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_1_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_1_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_A_1_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_A_1_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_A_1_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_A_1_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_A_1_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_A_1_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_A_2_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_2_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_2_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_A_2_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_A_2_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_A_2_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_A_2_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_A_2_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_A_2_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_A_3_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_3_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_3_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_A_3_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_A_3_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_A_3_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_A_3_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_A_3_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_A_3_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_A_4_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_4_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_4_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_A_4_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_A_4_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_A_4_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_A_4_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_A_4_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_A_4_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_A_5_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_5_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_5_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_A_5_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_A_5_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_A_5_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_A_5_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_A_5_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_A_5_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_A_6_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_6_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_6_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_A_6_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_A_6_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_A_6_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_A_6_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_A_6_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_A_6_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_A_7_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_7_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_A_7_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_A_7_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_A_7_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_A_7_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_A_7_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_A_7_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_A_7_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_B_0_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_0_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_0_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_B_0_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_B_0_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_B_0_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_B_0_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_B_0_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_B_0_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_B_1_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_1_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_1_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_B_1_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_B_1_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_B_1_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_B_1_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_B_1_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_B_1_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_B_2_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_2_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_2_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_B_2_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_B_2_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_B_2_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_B_2_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_B_2_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_B_2_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_B_3_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_3_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_3_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_B_3_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_B_3_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_B_3_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_B_3_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_B_3_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_B_3_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_B_4_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_4_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_4_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_B_4_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_B_4_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_B_4_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_B_4_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_B_4_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_B_4_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_B_5_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_5_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_5_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_B_5_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_B_5_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_B_5_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_B_5_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_B_5_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_B_5_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_B_6_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_6_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_6_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_B_6_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_B_6_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_B_6_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_B_6_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_B_6_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_B_6_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Get_B_7_BaseAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_7_HighAddress(XEucdis *InstancePtr);
u32 XEucdis_Get_B_7_TotalBytes(XEucdis *InstancePtr);
u32 XEucdis_Get_B_7_BitWidth(XEucdis *InstancePtr);
u32 XEucdis_Get_B_7_Depth(XEucdis *InstancePtr);
u32 XEucdis_Write_B_7_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Read_B_7_Words(XEucdis *InstancePtr, int offset, word_type *data, int length);
u32 XEucdis_Write_B_7_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);
u32 XEucdis_Read_B_7_Bytes(XEucdis *InstancePtr, int offset, char *data, int length);

void XEucdis_InterruptGlobalEnable(XEucdis *InstancePtr);
void XEucdis_InterruptGlobalDisable(XEucdis *InstancePtr);
void XEucdis_InterruptEnable(XEucdis *InstancePtr, u32 Mask);
void XEucdis_InterruptDisable(XEucdis *InstancePtr, u32 Mask);
void XEucdis_InterruptClear(XEucdis *InstancePtr, u32 Mask);
u32 XEucdis_InterruptGetEnabled(XEucdis *InstancePtr);
u32 XEucdis_InterruptGetStatus(XEucdis *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
