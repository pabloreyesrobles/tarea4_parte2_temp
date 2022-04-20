// 0x0000 : Control signals
//          bit 0  - ap_start (Read/Write/COH)
//          bit 1  - ap_done (Read/COR)
//          bit 2  - ap_idle (Read)
//          bit 3  - ap_ready (Read/COR)
//          bit 7  - auto_restart (Read/Write)
//          others - reserved
// 0x0004 : Global Interrupt Enable Register
//          bit 0  - Global Interrupt Enable (Read/Write)
//          others - reserved
// 0x0008 : IP Interrupt Enable Register (Read/Write)
//          bit 0  - enable ap_done interrupt (Read/Write)
//          bit 1  - enable ap_ready interrupt (Read/Write)
//          others - reserved
// 0x000c : IP Interrupt Status Register (Read/TOW)
//          bit 0  - ap_done (COR/TOW)
//          bit 1  - ap_ready (COR/TOW)
//          others - reserved
// 0x0010 : Data signal of C
//          bit 31~0 - C[31:0] (Read)
// 0x0014 : Control signal of C
//          bit 0  - C_ap_vld (Read/COR)
//          others - reserved
// 0x0200 ~
// 0x03ff : Memory 'A_0' (128 * 32b)
//          Word n : bit [31:0] - A_0[n]
// 0x0400 ~
// 0x05ff : Memory 'A_1' (128 * 32b)
//          Word n : bit [31:0] - A_1[n]
// 0x0600 ~
// 0x07ff : Memory 'A_2' (128 * 32b)
//          Word n : bit [31:0] - A_2[n]
// 0x0800 ~
// 0x09ff : Memory 'A_3' (128 * 32b)
//          Word n : bit [31:0] - A_3[n]
// 0x0a00 ~
// 0x0bff : Memory 'A_4' (128 * 32b)
//          Word n : bit [31:0] - A_4[n]
// 0x0c00 ~
// 0x0dff : Memory 'A_5' (128 * 32b)
//          Word n : bit [31:0] - A_5[n]
// 0x0e00 ~
// 0x0fff : Memory 'A_6' (128 * 32b)
//          Word n : bit [31:0] - A_6[n]
// 0x1000 ~
// 0x11ff : Memory 'A_7' (128 * 32b)
//          Word n : bit [31:0] - A_7[n]
// 0x1200 ~
// 0x13ff : Memory 'B_0' (128 * 32b)
//          Word n : bit [31:0] - B_0[n]
// 0x1400 ~
// 0x15ff : Memory 'B_1' (128 * 32b)
//          Word n : bit [31:0] - B_1[n]
// 0x1600 ~
// 0x17ff : Memory 'B_2' (128 * 32b)
//          Word n : bit [31:0] - B_2[n]
// 0x1800 ~
// 0x19ff : Memory 'B_3' (128 * 32b)
//          Word n : bit [31:0] - B_3[n]
// 0x1a00 ~
// 0x1bff : Memory 'B_4' (128 * 32b)
//          Word n : bit [31:0] - B_4[n]
// 0x1c00 ~
// 0x1dff : Memory 'B_5' (128 * 32b)
//          Word n : bit [31:0] - B_5[n]
// 0x1e00 ~
// 0x1fff : Memory 'B_6' (128 * 32b)
//          Word n : bit [31:0] - B_6[n]
// 0x2000 ~
// 0x21ff : Memory 'B_7' (128 * 32b)
//          Word n : bit [31:0] - B_7[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL  0x0000
#define CONTROL_ADDR_GIE      0x0004
#define CONTROL_ADDR_IER      0x0008
#define CONTROL_ADDR_ISR      0x000c
#define CONTROL_ADDR_C_DATA   0x0010
#define CONTROL_BITS_C_DATA   32
#define CONTROL_ADDR_C_CTRL   0x0014
#define CONTROL_ADDR_A_0_BASE 0x0200
#define CONTROL_ADDR_A_0_HIGH 0x03ff
#define CONTROL_WIDTH_A_0     32
#define CONTROL_DEPTH_A_0     128
#define CONTROL_ADDR_A_1_BASE 0x0400
#define CONTROL_ADDR_A_1_HIGH 0x05ff
#define CONTROL_WIDTH_A_1     32
#define CONTROL_DEPTH_A_1     128
#define CONTROL_ADDR_A_2_BASE 0x0600
#define CONTROL_ADDR_A_2_HIGH 0x07ff
#define CONTROL_WIDTH_A_2     32
#define CONTROL_DEPTH_A_2     128
#define CONTROL_ADDR_A_3_BASE 0x0800
#define CONTROL_ADDR_A_3_HIGH 0x09ff
#define CONTROL_WIDTH_A_3     32
#define CONTROL_DEPTH_A_3     128
#define CONTROL_ADDR_A_4_BASE 0x0a00
#define CONTROL_ADDR_A_4_HIGH 0x0bff
#define CONTROL_WIDTH_A_4     32
#define CONTROL_DEPTH_A_4     128
#define CONTROL_ADDR_A_5_BASE 0x0c00
#define CONTROL_ADDR_A_5_HIGH 0x0dff
#define CONTROL_WIDTH_A_5     32
#define CONTROL_DEPTH_A_5     128
#define CONTROL_ADDR_A_6_BASE 0x0e00
#define CONTROL_ADDR_A_6_HIGH 0x0fff
#define CONTROL_WIDTH_A_6     32
#define CONTROL_DEPTH_A_6     128
#define CONTROL_ADDR_A_7_BASE 0x1000
#define CONTROL_ADDR_A_7_HIGH 0x11ff
#define CONTROL_WIDTH_A_7     32
#define CONTROL_DEPTH_A_7     128
#define CONTROL_ADDR_B_0_BASE 0x1200
#define CONTROL_ADDR_B_0_HIGH 0x13ff
#define CONTROL_WIDTH_B_0     32
#define CONTROL_DEPTH_B_0     128
#define CONTROL_ADDR_B_1_BASE 0x1400
#define CONTROL_ADDR_B_1_HIGH 0x15ff
#define CONTROL_WIDTH_B_1     32
#define CONTROL_DEPTH_B_1     128
#define CONTROL_ADDR_B_2_BASE 0x1600
#define CONTROL_ADDR_B_2_HIGH 0x17ff
#define CONTROL_WIDTH_B_2     32
#define CONTROL_DEPTH_B_2     128
#define CONTROL_ADDR_B_3_BASE 0x1800
#define CONTROL_ADDR_B_3_HIGH 0x19ff
#define CONTROL_WIDTH_B_3     32
#define CONTROL_DEPTH_B_3     128
#define CONTROL_ADDR_B_4_BASE 0x1a00
#define CONTROL_ADDR_B_4_HIGH 0x1bff
#define CONTROL_WIDTH_B_4     32
#define CONTROL_DEPTH_B_4     128
#define CONTROL_ADDR_B_5_BASE 0x1c00
#define CONTROL_ADDR_B_5_HIGH 0x1dff
#define CONTROL_WIDTH_B_5     32
#define CONTROL_DEPTH_B_5     128
#define CONTROL_ADDR_B_6_BASE 0x1e00
#define CONTROL_ADDR_B_6_HIGH 0x1fff
#define CONTROL_WIDTH_B_6     32
#define CONTROL_DEPTH_B_6     128
#define CONTROL_ADDR_B_7_BASE 0x2000
#define CONTROL_ADDR_B_7_HIGH 0x21ff
#define CONTROL_WIDTH_B_7     32
#define CONTROL_DEPTH_B_7     128
