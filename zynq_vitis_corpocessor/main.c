#include "xparameters.h"
#include "xgpiops.h"
#include "xplatform_info.h"
#include "xeucdis.h"
#include <stdlib.h>
#include <xscugic.h>
#include <xil_printf.h>

#define INTC_DEVICE_ID			XPAR_PS7_SCUGIC_0_DEVICE_ID
#define EXTP_DEVICE_ID			XPAR_AXI_GPIO_0_DEVICE_ID

#define XHLS_DEVICE_ID			XPAR_EUCDIS_0_DEVICE_ID
#define INTC_EUCDIS_INT_ID	XPAR_FABRIC_EUCDIS_0_VEC_ID

#define GPIO_DEVICE_ID      XPAR_XGPIOPS_0_DEVICE_ID

#define EUC_RAND_FACTOR     0xFFFFFFFF / RAND_MAX 

#define VECTOR_SIZE				  1024
#define BUFFER_SIZE				  128
#define BRAMS               8

static u32 out_pin;
XGpioPs gpio;
XEucdis eucdis_ip;
XScuGic intc;

void (*XEucdis_Write_A[])() = {XEucdis_Write_A_0_Words,
                               XEucdis_Write_A_1_Words,
                               XEucdis_Write_A_2_Words,
                               XEucdis_Write_A_3_Words,
                               XEucdis_Write_A_4_Words,
                               XEucdis_Write_A_5_Words,
                               XEucdis_Write_A_6_Words,
                               XEucdis_Write_A_7_Words};

void (*XEucdis_Write_B[])() = {XEucdis_Write_B_0_Words,
                               XEucdis_Write_B_1_Words,
                               XEucdis_Write_B_2_Words,
                               XEucdis_Write_B_3_Words,
                               XEucdis_Write_B_4_Words,
                               XEucdis_Write_B_5_Words,
                               XEucdis_Write_B_6_Words,
                               XEucdis_Write_B_7_Words};

u32 tx_data[BUFFER_SIZE];
u32 rx_data[2];

int Intc_InitFunction(u16 device_id);
void EucDis_ReceiveHandler(void *InstPtr);

int main(void) {
  int status;

  XGpioPs_Config *config_ptr;

  config_ptr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	out_pin = 7;

  status = XGpioPs_CfgInitialize(&gpio, config_ptr, config_ptr->BaseAddr);
	if (status != XST_SUCCESS) {
    printf("GPIO Polled Mode Example Test Failed\r\n");
		return XST_FAILURE;
	}

  XGpioPs_SetDirectionPin(&gpio, out_pin, 1);
	XGpioPs_SetOutputEnablePin(&gpio, out_pin, 1);
	XGpioPs_WritePin(&gpio, out_pin, 0x0);

  status = XEucdis_Initialize(&eucdis_ip, XHLS_DEVICE_ID);
  if (status != XST_SUCCESS) {
    printf("Error while initializing Eucdis\r\n");
		return XST_FAILURE;
	}

  status = Intc_InitFunction(INTC_DEVICE_ID);
  if (status != XST_SUCCESS) {
    printf("Error while initializing interruptions\r\n");
		return XST_FAILURE;
	}

  printf(RAND_MAX);
}

void GenVectors(u32 vec_a[VECTOR_SIZE], u32 vec_b[VECTOR_SIZE]) {
  for (int i = 0; i < VECTOR_SIZE; i++) {
    vec_a[i] = rand() * EUC_RAND_FACTOR;
    vec_b[i] = rand() * EUC_RAND_FACTOR;
  }  
}

int Intc_InitFunction(u16 device_id) {
  XScuGic_Config *intc_config;
	int status;

  intc_config = XScuGic_LookupConfig(device_id);
  status = XScuGic_CfgInitialize(&intc, intc_config, intc_config->CpuBaseAddress);
  if (status != XST_SUCCESS) return status;

  Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                              (Xil_ExceptionHandler) XScuGic_InterruptHandler,
                              &intc);
	Xil_ExceptionEnable();

  status = XScuGic_Connect(&intc,
                   INTC_EUCDIS_INT_ID,
                   (Xil_ExceptionHandler) EucDis_ReceiveHandler,
                   (void *) (&eucdis_ip));

  XEucdis_InterruptEnable(&eucdis_ip, 1);
  XEucdis_InterruptGlobalEnable(&eucdis_ip);
  XScuGic_Enable(&intc, INTC_EUCDIS_INT_ID);
}