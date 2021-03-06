#include "xparameters.h"
#include "xgpiops.h"
#include "xplatform_info.h"
#include "xeucdis.h"
#include <stdio.h>
#include <stdlib.h>
#include "math.h"
#include <xscugic.h>
#include <xil_printf.h>

#define INTC_DEVICE_ID			XPAR_PS7_SCUGIC_0_DEVICE_ID
#define EXTP_DEVICE_ID			XPAR_AXI_GPIO_0_DEVICE_ID

#define XHLS_DEVICE_ID			XPAR_EUCDIS_0_DEVICE_ID
#define INTC_EUCDIS_INT_ID	XPAR_FABRIC_EUCDIS_0_INTERRUPT_INTR

#define GPIO_DEVICE_ID      XPAR_XGPIOPS_0_DEVICE_ID

#define EUC_RAND_FACTOR     (1023.0f / (double)RAND_MAX)

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

u32 tx_A_data[BUFFER_SIZE];
u32 tx_B_data[BUFFER_SIZE];
u32 rx_data[2];

u32 A_data[VECTOR_SIZE], B_data[VECTOR_SIZE];
volatile int ip_status;

void TxVectors(XEucdis *instance_ptr, u32 vec_a[VECTOR_SIZE], u32 vec_b[VECTOR_SIZE]);
int Intc_InitFunction(u16 device_id);
void EucDis_ReceiveHandler(void *instance_ptr);
void GenVectors(u32 vec_a[VECTOR_SIZE], u32 vec_b[VECTOR_SIZE]);

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

  for (int i = 0; i < 10; i++)
  {
    GenVectors(A_data, B_data);
    TxVectors(&eucdis_ip, A_data, B_data);

    double sum = 0;
    u32 result_sw;

    for (int i = 0; i < VECTOR_SIZE; i++) {
      sum += (double)((A_data[i] - B_data[i]) * (A_data[i] - B_data[i]));
    }

    result_sw = (u32)sqrt(sum);
    printf("Resultado SW: %lu\n", result_sw);

    ip_status = 0x01;
    XEucdis_Start(&eucdis_ip);
    while (ip_status);
  }

  return 0;
}

void EucDis_ReceiveHandler(void *instance_ptr) {
  //u32 result;
  XEucdis_InterruptDisable(instance_ptr, 1);

  rx_data[0] = XEucdis_Get_C(instance_ptr);
  printf("Resultado HW: %lu\n\n", rx_data[0]);

  ip_status = 0x00;
  XEucdis_InterruptClear(instance_ptr, 1);
  XEucdis_InterruptEnable(instance_ptr, 1);
}

void TxVectors(XEucdis *instance_ptr, u32 vec_a[VECTOR_SIZE], u32 vec_b[VECTOR_SIZE]) {
  for (int bram = 0; bram < BRAMS; bram++) {
    for (int buf_pos = 0; buf_pos < BUFFER_SIZE; buf_pos++) {
      u16 t_pos = buf_pos * BRAMS + bram;
      tx_A_data[buf_pos] = t_pos < VECTOR_SIZE ? vec_a[t_pos] : 0;
      tx_B_data[buf_pos] = t_pos < VECTOR_SIZE ? vec_b[t_pos] : 0;
    }
    XEucdis_Write_A[bram](instance_ptr, 0, tx_A_data, BUFFER_SIZE);
    XEucdis_Write_B[bram](instance_ptr, 0, tx_B_data, BUFFER_SIZE);
  }  
}

void GenVectors(u32 vec_a[VECTOR_SIZE], u32 vec_b[VECTOR_SIZE]) {
  for (int i = 0; i < VECTOR_SIZE; i++) {
    vec_a[i] = (u32)(((double)rand()) * EUC_RAND_FACTOR);
    vec_b[i] = (u32)(((double)rand()) * EUC_RAND_FACTOR);
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
                   (Xil_InterruptHandler) EucDis_ReceiveHandler,
                   (void *) (&eucdis_ip));

  XEucdis_InterruptEnable(&eucdis_ip, 1);
  XEucdis_InterruptGlobalEnable(&eucdis_ip);
  XScuGic_Enable(&intc, INTC_EUCDIS_INT_ID);

  return XST_SUCCESS;
}
