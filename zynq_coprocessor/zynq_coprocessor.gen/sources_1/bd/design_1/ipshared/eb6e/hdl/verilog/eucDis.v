// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="eucDis_eucDis,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.119750,HLS_SYN_LAT=144,HLS_SYN_TPT=none,HLS_SYN_MEM=32,HLS_SYN_DSP=0,HLS_SYN_FF=6224,HLS_SYN_LUT=5049,HLS_VERSION=2021_1}" *)

module eucDis (
        ap_clk,
        ap_rst_n,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_pp0_stage0 = 13'd2;
parameter    ap_ST_fsm_state8 = 13'd4;
parameter    ap_ST_fsm_state9 = 13'd8;
parameter    ap_ST_fsm_state10 = 13'd16;
parameter    ap_ST_fsm_state11 = 13'd32;
parameter    ap_ST_fsm_state12 = 13'd64;
parameter    ap_ST_fsm_state13 = 13'd128;
parameter    ap_ST_fsm_state14 = 13'd256;
parameter    ap_ST_fsm_state15 = 13'd512;
parameter    ap_ST_fsm_state16 = 13'd1024;
parameter    ap_ST_fsm_state17 = 13'd2048;
parameter    ap_ST_fsm_state18 = 13'd4096;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 14;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [6:0] A_0_address0;
reg    A_0_ce0;
wire   [31:0] A_0_q0;
wire   [6:0] A_1_address0;
reg    A_1_ce0;
wire   [31:0] A_1_q0;
wire   [6:0] A_2_address0;
reg    A_2_ce0;
wire   [31:0] A_2_q0;
wire   [6:0] A_3_address0;
reg    A_3_ce0;
wire   [31:0] A_3_q0;
wire   [6:0] A_4_address0;
reg    A_4_ce0;
wire   [31:0] A_4_q0;
wire   [6:0] A_5_address0;
reg    A_5_ce0;
wire   [31:0] A_5_q0;
wire   [6:0] A_6_address0;
reg    A_6_ce0;
wire   [31:0] A_6_q0;
wire   [6:0] A_7_address0;
reg    A_7_ce0;
wire   [31:0] A_7_q0;
wire   [6:0] B_0_address0;
reg    B_0_ce0;
wire   [31:0] B_0_q0;
wire   [6:0] B_1_address0;
reg    B_1_ce0;
wire   [31:0] B_1_q0;
wire   [6:0] B_2_address0;
reg    B_2_ce0;
wire   [31:0] B_2_q0;
wire   [6:0] B_3_address0;
reg    B_3_ce0;
wire   [31:0] B_3_q0;
wire   [6:0] B_4_address0;
reg    B_4_ce0;
wire   [31:0] B_4_q0;
wire   [6:0] B_5_address0;
reg    B_5_ce0;
wire   [31:0] B_5_q0;
wire   [6:0] B_6_address0;
reg    B_6_ce0;
wire   [31:0] B_6_q0;
wire   [6:0] B_7_address0;
reg    B_7_ce0;
wire   [31:0] B_7_q0;
wire   [31:0] C;
reg    C_ap_vld;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_375_p3;
wire   [0:0] icmp_ln12_fu_424_p2;
reg   [0:0] icmp_ln12_reg_824;
reg   [0:0] icmp_ln12_reg_824_pp0_iter2_reg;
reg   [0:0] icmp_ln12_reg_824_pp0_iter3_reg;
wire  signed [31:0] sub_ln13_fu_430_p2;
reg  signed [31:0] sub_ln13_reg_829;
wire  signed [31:0] sub_ln16_fu_436_p2;
reg  signed [31:0] sub_ln16_reg_835;
wire   [0:0] icmp_ln12_1_fu_442_p2;
reg   [0:0] icmp_ln12_1_reg_841;
reg   [0:0] icmp_ln12_1_reg_841_pp0_iter2_reg;
reg   [0:0] icmp_ln12_1_reg_841_pp0_iter3_reg;
wire  signed [31:0] sub_ln13_1_fu_448_p2;
reg  signed [31:0] sub_ln13_1_reg_846;
wire  signed [31:0] sub_ln16_1_fu_454_p2;
reg  signed [31:0] sub_ln16_1_reg_852;
wire   [0:0] icmp_ln12_2_fu_460_p2;
reg   [0:0] icmp_ln12_2_reg_858;
reg   [0:0] icmp_ln12_2_reg_858_pp0_iter2_reg;
reg   [0:0] icmp_ln12_2_reg_858_pp0_iter3_reg;
wire  signed [31:0] sub_ln13_2_fu_466_p2;
reg  signed [31:0] sub_ln13_2_reg_863;
wire  signed [31:0] sub_ln16_2_fu_472_p2;
reg  signed [31:0] sub_ln16_2_reg_869;
wire   [0:0] icmp_ln12_3_fu_478_p2;
reg   [0:0] icmp_ln12_3_reg_875;
reg   [0:0] icmp_ln12_3_reg_875_pp0_iter2_reg;
reg   [0:0] icmp_ln12_3_reg_875_pp0_iter3_reg;
wire  signed [31:0] sub_ln13_3_fu_484_p2;
reg  signed [31:0] sub_ln13_3_reg_880;
wire  signed [31:0] sub_ln16_3_fu_490_p2;
reg  signed [31:0] sub_ln16_3_reg_886;
wire   [0:0] icmp_ln12_4_fu_496_p2;
reg   [0:0] icmp_ln12_4_reg_892;
reg   [0:0] icmp_ln12_4_reg_892_pp0_iter2_reg;
reg   [0:0] icmp_ln12_4_reg_892_pp0_iter3_reg;
wire  signed [31:0] sub_ln13_4_fu_502_p2;
reg  signed [31:0] sub_ln13_4_reg_897;
wire  signed [31:0] sub_ln16_4_fu_508_p2;
reg  signed [31:0] sub_ln16_4_reg_903;
wire   [0:0] icmp_ln12_5_fu_514_p2;
reg   [0:0] icmp_ln12_5_reg_909;
reg   [0:0] icmp_ln12_5_reg_909_pp0_iter2_reg;
reg   [0:0] icmp_ln12_5_reg_909_pp0_iter3_reg;
wire  signed [31:0] sub_ln13_5_fu_520_p2;
reg  signed [31:0] sub_ln13_5_reg_914;
wire  signed [31:0] sub_ln16_5_fu_526_p2;
reg  signed [31:0] sub_ln16_5_reg_920;
wire   [0:0] icmp_ln12_6_fu_532_p2;
reg   [0:0] icmp_ln12_6_reg_926;
reg   [0:0] icmp_ln12_6_reg_926_pp0_iter2_reg;
reg   [0:0] icmp_ln12_6_reg_926_pp0_iter3_reg;
wire  signed [31:0] sub_ln13_6_fu_538_p2;
reg  signed [31:0] sub_ln13_6_reg_931;
wire  signed [31:0] sub_ln16_6_fu_544_p2;
reg  signed [31:0] sub_ln16_6_reg_937;
wire   [0:0] icmp_ln12_7_fu_550_p2;
reg   [0:0] icmp_ln12_7_reg_943;
reg   [0:0] icmp_ln12_7_reg_943_pp0_iter2_reg;
reg   [0:0] icmp_ln12_7_reg_943_pp0_iter3_reg;
wire  signed [31:0] sub_ln13_7_fu_556_p2;
reg  signed [31:0] sub_ln13_7_reg_948;
wire  signed [31:0] sub_ln16_7_fu_562_p2;
reg  signed [31:0] sub_ln16_7_reg_954;
wire   [31:0] grp_fu_568_p2;
reg   [31:0] mul_ln13_reg_960;
wire   [31:0] grp_fu_572_p2;
reg   [31:0] mul_ln16_reg_965;
wire   [31:0] grp_fu_576_p2;
reg   [31:0] mul_ln13_1_reg_970;
wire   [31:0] grp_fu_580_p2;
reg   [31:0] mul_ln16_1_reg_975;
wire   [31:0] grp_fu_584_p2;
reg   [31:0] mul_ln13_2_reg_980;
wire   [31:0] grp_fu_588_p2;
reg   [31:0] mul_ln16_2_reg_985;
wire   [31:0] grp_fu_592_p2;
reg   [31:0] mul_ln13_3_reg_990;
wire   [31:0] grp_fu_596_p2;
reg   [31:0] mul_ln16_3_reg_995;
wire   [31:0] grp_fu_600_p2;
reg   [31:0] mul_ln13_4_reg_1000;
wire   [31:0] grp_fu_604_p2;
reg   [31:0] mul_ln16_4_reg_1005;
wire   [31:0] grp_fu_608_p2;
reg   [31:0] mul_ln13_5_reg_1010;
wire   [31:0] grp_fu_612_p2;
reg   [31:0] mul_ln16_5_reg_1015;
wire   [31:0] grp_fu_616_p2;
reg   [31:0] mul_ln13_6_reg_1020;
wire   [31:0] grp_fu_620_p2;
reg   [31:0] mul_ln16_6_reg_1025;
wire   [31:0] grp_fu_624_p2;
reg   [31:0] mul_ln13_7_reg_1030;
wire   [31:0] grp_fu_628_p2;
reg   [31:0] mul_ln16_7_reg_1035;
wire   [31:0] add_ln9_fu_678_p2;
reg   [31:0] add_ln9_reg_1040;
wire   [31:0] add_ln9_2_fu_702_p2;
reg   [31:0] add_ln9_2_reg_1045;
wire    ap_CS_fsm_state8;
wire   [16:0] grp_sqrt_fixed_33_33_s_fu_353_ap_return;
reg   [16:0] p_Val2_s_reg_1055;
wire    ap_CS_fsm_state17;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
wire   [63:0] zext_ln12_fu_393_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] xf_V_fu_130;
wire   [31:0] temp_fu_712_p2;
reg   [10:0] index_fu_134;
wire   [10:0] add_ln10_fu_413_p2;
wire    ap_CS_fsm_state18;
wire   [6:0] lshr_ln_fu_383_p4;
wire   [31:0] select_ln12_2_fu_642_p3;
wire   [31:0] select_ln12_3_fu_647_p3;
wire   [31:0] add_ln9_1_fu_672_p2;
wire   [31:0] select_ln12_1_fu_637_p3;
wire   [31:0] select_ln12_6_fu_662_p3;
wire   [31:0] select_ln12_7_fu_667_p3;
wire   [31:0] select_ln12_4_fu_652_p3;
wire   [31:0] select_ln12_5_fu_657_p3;
wire   [31:0] add_ln9_3_fu_690_p2;
wire   [31:0] add_ln9_4_fu_684_p2;
wire   [31:0] add_ln9_5_fu_696_p2;
wire   [31:0] select_ln12_fu_632_p3;
wire   [31:0] add_ln9_6_fu_708_p2;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
end

eucDis_sqrt_fixed_33_33_s grp_sqrt_fixed_33_33_s_fu_353(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .x(xf_V_fu_130),
    .ap_return(grp_sqrt_fixed_33_33_s_fu_353_ap_return)
);

eucDis_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .C(C),
    .C_ap_vld(C_ap_vld),
    .A_0_address0(A_0_address0),
    .A_0_ce0(A_0_ce0),
    .A_0_q0(A_0_q0),
    .A_1_address0(A_1_address0),
    .A_1_ce0(A_1_ce0),
    .A_1_q0(A_1_q0),
    .A_2_address0(A_2_address0),
    .A_2_ce0(A_2_ce0),
    .A_2_q0(A_2_q0),
    .A_3_address0(A_3_address0),
    .A_3_ce0(A_3_ce0),
    .A_3_q0(A_3_q0),
    .A_4_address0(A_4_address0),
    .A_4_ce0(A_4_ce0),
    .A_4_q0(A_4_q0),
    .A_5_address0(A_5_address0),
    .A_5_ce0(A_5_ce0),
    .A_5_q0(A_5_q0),
    .A_6_address0(A_6_address0),
    .A_6_ce0(A_6_ce0),
    .A_6_q0(A_6_q0),
    .A_7_address0(A_7_address0),
    .A_7_ce0(A_7_ce0),
    .A_7_q0(A_7_q0),
    .B_0_address0(B_0_address0),
    .B_0_ce0(B_0_ce0),
    .B_0_q0(B_0_q0),
    .B_1_address0(B_1_address0),
    .B_1_ce0(B_1_ce0),
    .B_1_q0(B_1_q0),
    .B_2_address0(B_2_address0),
    .B_2_ce0(B_2_ce0),
    .B_2_q0(B_2_q0),
    .B_3_address0(B_3_address0),
    .B_3_ce0(B_3_ce0),
    .B_3_q0(B_3_q0),
    .B_4_address0(B_4_address0),
    .B_4_ce0(B_4_ce0),
    .B_4_q0(B_4_q0),
    .B_5_address0(B_5_address0),
    .B_5_ce0(B_5_ce0),
    .B_5_q0(B_5_q0),
    .B_6_address0(B_6_address0),
    .B_6_ce0(B_6_ce0),
    .B_6_q0(B_6_q0),
    .B_7_address0(B_7_address0),
    .B_7_ce0(B_7_ce0),
    .B_7_q0(B_7_q0),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln13_reg_829),
    .din1(sub_ln13_reg_829),
    .ce(1'b1),
    .dout(grp_fu_568_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln16_reg_835),
    .din1(sub_ln16_reg_835),
    .ce(1'b1),
    .dout(grp_fu_572_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln13_1_reg_846),
    .din1(sub_ln13_1_reg_846),
    .ce(1'b1),
    .dout(grp_fu_576_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln16_1_reg_852),
    .din1(sub_ln16_1_reg_852),
    .ce(1'b1),
    .dout(grp_fu_580_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln13_2_reg_863),
    .din1(sub_ln13_2_reg_863),
    .ce(1'b1),
    .dout(grp_fu_584_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln16_2_reg_869),
    .din1(sub_ln16_2_reg_869),
    .ce(1'b1),
    .dout(grp_fu_588_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U8(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln13_3_reg_880),
    .din1(sub_ln13_3_reg_880),
    .ce(1'b1),
    .dout(grp_fu_592_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U9(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln16_3_reg_886),
    .din1(sub_ln16_3_reg_886),
    .ce(1'b1),
    .dout(grp_fu_596_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U10(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln13_4_reg_897),
    .din1(sub_ln13_4_reg_897),
    .ce(1'b1),
    .dout(grp_fu_600_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U11(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln16_4_reg_903),
    .din1(sub_ln16_4_reg_903),
    .ce(1'b1),
    .dout(grp_fu_604_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U12(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln13_5_reg_914),
    .din1(sub_ln13_5_reg_914),
    .ce(1'b1),
    .dout(grp_fu_608_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U13(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln16_5_reg_920),
    .din1(sub_ln16_5_reg_920),
    .ce(1'b1),
    .dout(grp_fu_612_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U14(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln13_6_reg_931),
    .din1(sub_ln13_6_reg_931),
    .ce(1'b1),
    .dout(grp_fu_616_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U15(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln16_6_reg_937),
    .din1(sub_ln16_6_reg_937),
    .ce(1'b1),
    .dout(grp_fu_620_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U16(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln13_7_reg_948),
    .din1(sub_ln13_7_reg_948),
    .ce(1'b1),
    .dout(grp_fu_624_p2)
);

eucDis_mul_32s_32s_32_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U17(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(sub_ln16_7_reg_954),
    .din1(sub_ln16_7_reg_954),
    .ce(1'b1),
    .dout(grp_fu_628_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        index_fu_134 <= 11'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_fu_375_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        index_fu_134 <= add_ln10_fu_413_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        xf_V_fu_130 <= 32'd0;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        xf_V_fu_130 <= temp_fu_712_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln9_2_reg_1045 <= add_ln9_2_fu_702_p2;
        add_ln9_reg_1040 <= add_ln9_fu_678_p2;
        icmp_ln12_1_reg_841_pp0_iter2_reg <= icmp_ln12_1_reg_841;
        icmp_ln12_1_reg_841_pp0_iter3_reg <= icmp_ln12_1_reg_841_pp0_iter2_reg;
        icmp_ln12_2_reg_858_pp0_iter2_reg <= icmp_ln12_2_reg_858;
        icmp_ln12_2_reg_858_pp0_iter3_reg <= icmp_ln12_2_reg_858_pp0_iter2_reg;
        icmp_ln12_3_reg_875_pp0_iter2_reg <= icmp_ln12_3_reg_875;
        icmp_ln12_3_reg_875_pp0_iter3_reg <= icmp_ln12_3_reg_875_pp0_iter2_reg;
        icmp_ln12_4_reg_892_pp0_iter2_reg <= icmp_ln12_4_reg_892;
        icmp_ln12_4_reg_892_pp0_iter3_reg <= icmp_ln12_4_reg_892_pp0_iter2_reg;
        icmp_ln12_5_reg_909_pp0_iter2_reg <= icmp_ln12_5_reg_909;
        icmp_ln12_5_reg_909_pp0_iter3_reg <= icmp_ln12_5_reg_909_pp0_iter2_reg;
        icmp_ln12_6_reg_926_pp0_iter2_reg <= icmp_ln12_6_reg_926;
        icmp_ln12_6_reg_926_pp0_iter3_reg <= icmp_ln12_6_reg_926_pp0_iter2_reg;
        icmp_ln12_7_reg_943_pp0_iter2_reg <= icmp_ln12_7_reg_943;
        icmp_ln12_7_reg_943_pp0_iter3_reg <= icmp_ln12_7_reg_943_pp0_iter2_reg;
        icmp_ln12_reg_824_pp0_iter2_reg <= icmp_ln12_reg_824;
        icmp_ln12_reg_824_pp0_iter3_reg <= icmp_ln12_reg_824_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln12_1_reg_841 <= icmp_ln12_1_fu_442_p2;
        icmp_ln12_2_reg_858 <= icmp_ln12_2_fu_460_p2;
        icmp_ln12_3_reg_875 <= icmp_ln12_3_fu_478_p2;
        icmp_ln12_4_reg_892 <= icmp_ln12_4_fu_496_p2;
        icmp_ln12_5_reg_909 <= icmp_ln12_5_fu_514_p2;
        icmp_ln12_6_reg_926 <= icmp_ln12_6_fu_532_p2;
        icmp_ln12_7_reg_943 <= icmp_ln12_7_fu_550_p2;
        icmp_ln12_reg_824 <= icmp_ln12_fu_424_p2;
        sub_ln13_1_reg_846 <= sub_ln13_1_fu_448_p2;
        sub_ln13_2_reg_863 <= sub_ln13_2_fu_466_p2;
        sub_ln13_3_reg_880 <= sub_ln13_3_fu_484_p2;
        sub_ln13_4_reg_897 <= sub_ln13_4_fu_502_p2;
        sub_ln13_5_reg_914 <= sub_ln13_5_fu_520_p2;
        sub_ln13_6_reg_931 <= sub_ln13_6_fu_538_p2;
        sub_ln13_7_reg_948 <= sub_ln13_7_fu_556_p2;
        sub_ln13_reg_829 <= sub_ln13_fu_430_p2;
        sub_ln16_1_reg_852 <= sub_ln16_1_fu_454_p2;
        sub_ln16_2_reg_869 <= sub_ln16_2_fu_472_p2;
        sub_ln16_3_reg_886 <= sub_ln16_3_fu_490_p2;
        sub_ln16_4_reg_903 <= sub_ln16_4_fu_508_p2;
        sub_ln16_5_reg_920 <= sub_ln16_5_fu_526_p2;
        sub_ln16_6_reg_937 <= sub_ln16_6_fu_544_p2;
        sub_ln16_7_reg_954 <= sub_ln16_7_fu_562_p2;
        sub_ln16_reg_835 <= sub_ln16_fu_436_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_1_reg_841_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln13_1_reg_970 <= grp_fu_576_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_2_reg_858_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln13_2_reg_980 <= grp_fu_584_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_3_reg_875_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln13_3_reg_990 <= grp_fu_592_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_4_reg_892_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln13_4_reg_1000 <= grp_fu_600_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_5_reg_909_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln13_5_reg_1010 <= grp_fu_608_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_6_reg_926_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln13_6_reg_1020 <= grp_fu_616_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_7_reg_943_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln13_7_reg_1030 <= grp_fu_624_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_824_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln13_reg_960 <= grp_fu_568_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_1_reg_841_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln16_1_reg_975 <= grp_fu_580_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_2_reg_858_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln16_2_reg_985 <= grp_fu_588_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_3_reg_875_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln16_3_reg_995 <= grp_fu_596_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_4_reg_892_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln16_4_reg_1005 <= grp_fu_604_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_5_reg_909_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln16_5_reg_1015 <= grp_fu_612_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_6_reg_926_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln16_6_reg_1025 <= grp_fu_620_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_7_reg_943_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln16_7_reg_1035 <= grp_fu_628_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln12_reg_824_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln16_reg_965 <= grp_fu_572_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        p_Val2_s_reg_1055 <= grp_sqrt_fixed_33_33_s_fu_353_ap_return;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        A_0_ce0 = 1'b1;
    end else begin
        A_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        A_1_ce0 = 1'b1;
    end else begin
        A_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        A_2_ce0 = 1'b1;
    end else begin
        A_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        A_3_ce0 = 1'b1;
    end else begin
        A_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        A_4_ce0 = 1'b1;
    end else begin
        A_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        A_5_ce0 = 1'b1;
    end else begin
        A_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        A_6_ce0 = 1'b1;
    end else begin
        A_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        A_7_ce0 = 1'b1;
    end else begin
        A_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        B_0_ce0 = 1'b1;
    end else begin
        B_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        B_1_ce0 = 1'b1;
    end else begin
        B_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        B_2_ce0 = 1'b1;
    end else begin
        B_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        B_3_ce0 = 1'b1;
    end else begin
        B_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        B_4_ce0 = 1'b1;
    end else begin
        B_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        B_5_ce0 = 1'b1;
    end else begin
        B_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        B_6_ce0 = 1'b1;
    end else begin
        B_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        B_7_ce0 = 1'b1;
    end else begin
        B_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        C_ap_vld = 1'b1;
    end else begin
        C_ap_vld = 1'b0;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

assign ap_ST_fsm_state17_blk = 1'b0;

assign ap_ST_fsm_state18_blk = 1'b0;

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if ((tmp_fu_375_p3 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_375_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter5 == 1'b1) & (ap_enable_reg_pp0_iter4 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (ap_enable_reg_pp0_iter4 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_375_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_0_address0 = zext_ln12_fu_393_p1;

assign A_1_address0 = zext_ln12_fu_393_p1;

assign A_2_address0 = zext_ln12_fu_393_p1;

assign A_3_address0 = zext_ln12_fu_393_p1;

assign A_4_address0 = zext_ln12_fu_393_p1;

assign A_5_address0 = zext_ln12_fu_393_p1;

assign A_6_address0 = zext_ln12_fu_393_p1;

assign A_7_address0 = zext_ln12_fu_393_p1;

assign B_0_address0 = zext_ln12_fu_393_p1;

assign B_1_address0 = zext_ln12_fu_393_p1;

assign B_2_address0 = zext_ln12_fu_393_p1;

assign B_3_address0 = zext_ln12_fu_393_p1;

assign B_4_address0 = zext_ln12_fu_393_p1;

assign B_5_address0 = zext_ln12_fu_393_p1;

assign B_6_address0 = zext_ln12_fu_393_p1;

assign B_7_address0 = zext_ln12_fu_393_p1;

assign C = p_Val2_s_reg_1055;

assign add_ln10_fu_413_p2 = (index_fu_134 + 11'd8);

assign add_ln9_1_fu_672_p2 = (select_ln12_2_fu_642_p3 + select_ln12_3_fu_647_p3);

assign add_ln9_2_fu_702_p2 = (add_ln9_5_fu_696_p2 + select_ln12_fu_632_p3);

assign add_ln9_3_fu_690_p2 = (select_ln12_4_fu_652_p3 + select_ln12_5_fu_657_p3);

assign add_ln9_4_fu_684_p2 = (select_ln12_6_fu_662_p3 + select_ln12_7_fu_667_p3);

assign add_ln9_5_fu_696_p2 = (add_ln9_3_fu_690_p2 + add_ln9_4_fu_684_p2);

assign add_ln9_6_fu_708_p2 = (add_ln9_2_reg_1045 + add_ln9_reg_1040);

assign add_ln9_fu_678_p2 = (add_ln9_1_fu_672_p2 + select_ln12_1_fu_637_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign icmp_ln12_1_fu_442_p2 = ((A_1_q0 > B_1_q0) ? 1'b1 : 1'b0);

assign icmp_ln12_2_fu_460_p2 = ((A_2_q0 > B_2_q0) ? 1'b1 : 1'b0);

assign icmp_ln12_3_fu_478_p2 = ((A_3_q0 > B_3_q0) ? 1'b1 : 1'b0);

assign icmp_ln12_4_fu_496_p2 = ((A_4_q0 > B_4_q0) ? 1'b1 : 1'b0);

assign icmp_ln12_5_fu_514_p2 = ((A_5_q0 > B_5_q0) ? 1'b1 : 1'b0);

assign icmp_ln12_6_fu_532_p2 = ((A_6_q0 > B_6_q0) ? 1'b1 : 1'b0);

assign icmp_ln12_7_fu_550_p2 = ((A_7_q0 > B_7_q0) ? 1'b1 : 1'b0);

assign icmp_ln12_fu_424_p2 = ((A_0_q0 > B_0_q0) ? 1'b1 : 1'b0);

assign lshr_ln_fu_383_p4 = {{index_fu_134[9:3]}};

assign select_ln12_1_fu_637_p3 = ((icmp_ln12_1_reg_841_pp0_iter3_reg[0:0] == 1'b1) ? mul_ln13_1_reg_970 : mul_ln16_1_reg_975);

assign select_ln12_2_fu_642_p3 = ((icmp_ln12_2_reg_858_pp0_iter3_reg[0:0] == 1'b1) ? mul_ln13_2_reg_980 : mul_ln16_2_reg_985);

assign select_ln12_3_fu_647_p3 = ((icmp_ln12_3_reg_875_pp0_iter3_reg[0:0] == 1'b1) ? mul_ln13_3_reg_990 : mul_ln16_3_reg_995);

assign select_ln12_4_fu_652_p3 = ((icmp_ln12_4_reg_892_pp0_iter3_reg[0:0] == 1'b1) ? mul_ln13_4_reg_1000 : mul_ln16_4_reg_1005);

assign select_ln12_5_fu_657_p3 = ((icmp_ln12_5_reg_909_pp0_iter3_reg[0:0] == 1'b1) ? mul_ln13_5_reg_1010 : mul_ln16_5_reg_1015);

assign select_ln12_6_fu_662_p3 = ((icmp_ln12_6_reg_926_pp0_iter3_reg[0:0] == 1'b1) ? mul_ln13_6_reg_1020 : mul_ln16_6_reg_1025);

assign select_ln12_7_fu_667_p3 = ((icmp_ln12_7_reg_943_pp0_iter3_reg[0:0] == 1'b1) ? mul_ln13_7_reg_1030 : mul_ln16_7_reg_1035);

assign select_ln12_fu_632_p3 = ((icmp_ln12_reg_824_pp0_iter3_reg[0:0] == 1'b1) ? mul_ln13_reg_960 : mul_ln16_reg_965);

assign sub_ln13_1_fu_448_p2 = (A_1_q0 - B_1_q0);

assign sub_ln13_2_fu_466_p2 = (A_2_q0 - B_2_q0);

assign sub_ln13_3_fu_484_p2 = (A_3_q0 - B_3_q0);

assign sub_ln13_4_fu_502_p2 = (A_4_q0 - B_4_q0);

assign sub_ln13_5_fu_520_p2 = (A_5_q0 - B_5_q0);

assign sub_ln13_6_fu_538_p2 = (A_6_q0 - B_6_q0);

assign sub_ln13_7_fu_556_p2 = (A_7_q0 - B_7_q0);

assign sub_ln13_fu_430_p2 = (A_0_q0 - B_0_q0);

assign sub_ln16_1_fu_454_p2 = (B_1_q0 - A_1_q0);

assign sub_ln16_2_fu_472_p2 = (B_2_q0 - A_2_q0);

assign sub_ln16_3_fu_490_p2 = (B_3_q0 - A_3_q0);

assign sub_ln16_4_fu_508_p2 = (B_4_q0 - A_4_q0);

assign sub_ln16_5_fu_526_p2 = (B_5_q0 - A_5_q0);

assign sub_ln16_6_fu_544_p2 = (B_6_q0 - A_6_q0);

assign sub_ln16_7_fu_562_p2 = (B_7_q0 - A_7_q0);

assign sub_ln16_fu_436_p2 = (B_0_q0 - A_0_q0);

assign temp_fu_712_p2 = (add_ln9_6_fu_708_p2 + xf_V_fu_130);

assign tmp_fu_375_p3 = index_fu_134[32'd10];

assign zext_ln12_fu_393_p1 = lshr_ln_fu_383_p4;

endmodule //eucDis
