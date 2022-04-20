// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_write_data_finish,
    TRAN_control_read_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_out,
    TRAN_control_ready_out,
    TRAN_control_ready_in,
    TRAN_control_done_out,
    TRAN_control_write_start_in   ,
    TRAN_control_write_start_finish,
    TRAN_control_interrupt,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_A_0 "../tv/cdatafile/c.eucDis.autotvin_A_0.dat"
`define TV_IN_A_1 "../tv/cdatafile/c.eucDis.autotvin_A_1.dat"
`define TV_IN_A_2 "../tv/cdatafile/c.eucDis.autotvin_A_2.dat"
`define TV_IN_A_3 "../tv/cdatafile/c.eucDis.autotvin_A_3.dat"
`define TV_IN_A_4 "../tv/cdatafile/c.eucDis.autotvin_A_4.dat"
`define TV_IN_A_5 "../tv/cdatafile/c.eucDis.autotvin_A_5.dat"
`define TV_IN_A_6 "../tv/cdatafile/c.eucDis.autotvin_A_6.dat"
`define TV_IN_A_7 "../tv/cdatafile/c.eucDis.autotvin_A_7.dat"
`define TV_IN_B_0 "../tv/cdatafile/c.eucDis.autotvin_B_0.dat"
`define TV_IN_B_1 "../tv/cdatafile/c.eucDis.autotvin_B_1.dat"
`define TV_IN_B_2 "../tv/cdatafile/c.eucDis.autotvin_B_2.dat"
`define TV_IN_B_3 "../tv/cdatafile/c.eucDis.autotvin_B_3.dat"
`define TV_IN_B_4 "../tv/cdatafile/c.eucDis.autotvin_B_4.dat"
`define TV_IN_B_5 "../tv/cdatafile/c.eucDis.autotvin_B_5.dat"
`define TV_IN_B_6 "../tv/cdatafile/c.eucDis.autotvin_B_6.dat"
`define TV_IN_B_7 "../tv/cdatafile/c.eucDis.autotvin_B_7.dat"
`define TV_OUT_C "../tv/rtldatafile/rtl.eucDis.autotvout_C.dat"
parameter ADDR_WIDTH = 14;
parameter DATA_WIDTH = 32;
parameter A_0_DEPTH = 128;
reg [31 : 0] A_0_OPERATE_DEPTH = 0;
parameter A_0_c_bitwidth = 32;
parameter A_1_DEPTH = 128;
reg [31 : 0] A_1_OPERATE_DEPTH = 0;
parameter A_1_c_bitwidth = 32;
parameter A_2_DEPTH = 128;
reg [31 : 0] A_2_OPERATE_DEPTH = 0;
parameter A_2_c_bitwidth = 32;
parameter A_3_DEPTH = 128;
reg [31 : 0] A_3_OPERATE_DEPTH = 0;
parameter A_3_c_bitwidth = 32;
parameter A_4_DEPTH = 128;
reg [31 : 0] A_4_OPERATE_DEPTH = 0;
parameter A_4_c_bitwidth = 32;
parameter A_5_DEPTH = 128;
reg [31 : 0] A_5_OPERATE_DEPTH = 0;
parameter A_5_c_bitwidth = 32;
parameter A_6_DEPTH = 128;
reg [31 : 0] A_6_OPERATE_DEPTH = 0;
parameter A_6_c_bitwidth = 32;
parameter A_7_DEPTH = 128;
reg [31 : 0] A_7_OPERATE_DEPTH = 0;
parameter A_7_c_bitwidth = 32;
parameter B_0_DEPTH = 128;
reg [31 : 0] B_0_OPERATE_DEPTH = 0;
parameter B_0_c_bitwidth = 32;
parameter B_1_DEPTH = 128;
reg [31 : 0] B_1_OPERATE_DEPTH = 0;
parameter B_1_c_bitwidth = 32;
parameter B_2_DEPTH = 128;
reg [31 : 0] B_2_OPERATE_DEPTH = 0;
parameter B_2_c_bitwidth = 32;
parameter B_3_DEPTH = 128;
reg [31 : 0] B_3_OPERATE_DEPTH = 0;
parameter B_3_c_bitwidth = 32;
parameter B_4_DEPTH = 128;
reg [31 : 0] B_4_OPERATE_DEPTH = 0;
parameter B_4_c_bitwidth = 32;
parameter B_5_DEPTH = 128;
reg [31 : 0] B_5_OPERATE_DEPTH = 0;
parameter B_5_c_bitwidth = 32;
parameter B_6_DEPTH = 128;
reg [31 : 0] B_6_OPERATE_DEPTH = 0;
parameter B_6_c_bitwidth = 32;
parameter B_7_DEPTH = 128;
reg [31 : 0] B_7_OPERATE_DEPTH = 0;
parameter B_7_c_bitwidth = 32;
parameter C_DEPTH = 1;
reg [31 : 0] C_OPERATE_DEPTH = 0;
parameter C_c_bitwidth = 32;
parameter START_ADDR = 0;
parameter eucDis_continue_addr = 0;
parameter eucDis_auto_start_addr = 0;
parameter A_0_data_in_addr = 512;
parameter A_1_data_in_addr = 1024;
parameter A_2_data_in_addr = 1536;
parameter A_3_data_in_addr = 2048;
parameter A_4_data_in_addr = 2560;
parameter A_5_data_in_addr = 3072;
parameter A_6_data_in_addr = 3584;
parameter A_7_data_in_addr = 4096;
parameter B_0_data_in_addr = 4608;
parameter B_1_data_in_addr = 5120;
parameter B_2_data_in_addr = 5632;
parameter B_3_data_in_addr = 6144;
parameter B_4_data_in_addr = 6656;
parameter B_5_data_in_addr = 7168;
parameter B_6_data_in_addr = 7680;
parameter B_7_data_in_addr = 8192;
parameter C_data_out_addr = 16;
parameter C_valid_out_addr = 20;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_write_data_finish;
output TRAN_control_read_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
output    TRAN_control_done_out;
output    TRAN_control_ready_out;
input     TRAN_control_ready_in;
output    TRAN_control_idle_out;
input  TRAN_control_write_start_in   ;
output TRAN_control_write_start_finish;
input     TRAN_control_interrupt;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_A_0 [A_0_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_0 [ (A_0_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_0_DEPTH -1 : 0] = '{default : 'hz};
reg A_0_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_A_1 [A_1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_1 [ (A_1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_1_DEPTH -1 : 0] = '{default : 'hz};
reg A_1_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_A_2 [A_2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_2 [ (A_2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_2_DEPTH -1 : 0] = '{default : 'hz};
reg A_2_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_A_3 [A_3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_3 [ (A_3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_3_DEPTH -1 : 0] = '{default : 'hz};
reg A_3_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_A_4 [A_4_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_4 [ (A_4_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_4_DEPTH -1 : 0] = '{default : 'hz};
reg A_4_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_A_5 [A_5_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_5 [ (A_5_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_5_DEPTH -1 : 0] = '{default : 'hz};
reg A_5_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_A_6 [A_6_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_6 [ (A_6_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_6_DEPTH -1 : 0] = '{default : 'hz};
reg A_6_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_A_7 [A_7_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_7 [ (A_7_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_7_DEPTH -1 : 0] = '{default : 'hz};
reg A_7_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_0 [B_0_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_0 [ (B_0_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_0_DEPTH -1 : 0] = '{default : 'hz};
reg B_0_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_1 [B_1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_1 [ (B_1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_1_DEPTH -1 : 0] = '{default : 'hz};
reg B_1_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_2 [B_2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_2 [ (B_2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_2_DEPTH -1 : 0] = '{default : 'hz};
reg B_2_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_3 [B_3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_3 [ (B_3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_3_DEPTH -1 : 0] = '{default : 'hz};
reg B_3_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_4 [B_4_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_4 [ (B_4_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_4_DEPTH -1 : 0] = '{default : 'hz};
reg B_4_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_5 [B_5_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_5 [ (B_5_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_5_DEPTH -1 : 0] = '{default : 'hz};
reg B_5_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_6 [B_6_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_6 [ (B_6_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_6_DEPTH -1 : 0] = '{default : 'hz};
reg B_6_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_7 [B_7_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_7 [ (B_7_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_7_DEPTH -1 : 0] = '{default : 'hz};
reg B_7_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_C [C_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_C [ (C_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * C_DEPTH -1 : 0] = '{default : 'hz};
reg C_read_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
reg process_9_finish = 0;
reg process_10_finish = 0;
reg process_11_finish = 0;
reg process_12_finish = 0;
reg process_13_finish = 0;
reg process_14_finish = 0;
reg process_15_finish = 0;
reg process_16_finish = 0;
reg process_17_finish = 0;
reg process_18_finish = 0;
//write A_0 reg
reg [31 : 0] write_A_0_count = 0;
reg write_A_0_run_flag = 0;
reg write_one_A_0_data_done = 0;
//write A_1 reg
reg [31 : 0] write_A_1_count = 0;
reg write_A_1_run_flag = 0;
reg write_one_A_1_data_done = 0;
//write A_2 reg
reg [31 : 0] write_A_2_count = 0;
reg write_A_2_run_flag = 0;
reg write_one_A_2_data_done = 0;
//write A_3 reg
reg [31 : 0] write_A_3_count = 0;
reg write_A_3_run_flag = 0;
reg write_one_A_3_data_done = 0;
//write A_4 reg
reg [31 : 0] write_A_4_count = 0;
reg write_A_4_run_flag = 0;
reg write_one_A_4_data_done = 0;
//write A_5 reg
reg [31 : 0] write_A_5_count = 0;
reg write_A_5_run_flag = 0;
reg write_one_A_5_data_done = 0;
//write A_6 reg
reg [31 : 0] write_A_6_count = 0;
reg write_A_6_run_flag = 0;
reg write_one_A_6_data_done = 0;
//write A_7 reg
reg [31 : 0] write_A_7_count = 0;
reg write_A_7_run_flag = 0;
reg write_one_A_7_data_done = 0;
//write B_0 reg
reg [31 : 0] write_B_0_count = 0;
reg write_B_0_run_flag = 0;
reg write_one_B_0_data_done = 0;
//write B_1 reg
reg [31 : 0] write_B_1_count = 0;
reg write_B_1_run_flag = 0;
reg write_one_B_1_data_done = 0;
//write B_2 reg
reg [31 : 0] write_B_2_count = 0;
reg write_B_2_run_flag = 0;
reg write_one_B_2_data_done = 0;
//write B_3 reg
reg [31 : 0] write_B_3_count = 0;
reg write_B_3_run_flag = 0;
reg write_one_B_3_data_done = 0;
//write B_4 reg
reg [31 : 0] write_B_4_count = 0;
reg write_B_4_run_flag = 0;
reg write_one_B_4_data_done = 0;
//write B_5 reg
reg [31 : 0] write_B_5_count = 0;
reg write_B_5_run_flag = 0;
reg write_one_B_5_data_done = 0;
//write B_6 reg
reg [31 : 0] write_B_6_count = 0;
reg write_B_6_run_flag = 0;
reg write_one_B_6_data_done = 0;
//write B_7 reg
reg [31 : 0] write_B_7_count = 0;
reg write_B_7_run_flag = 0;
reg write_one_B_7_data_done = 0;
//read C reg
reg [31 : 0] read_C_count = 0;
reg read_C_run_flag = 0;
reg read_one_C_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_start_finish = AESL_write_start_finish;
assign TRAN_control_done_out = AESL_done_index_reg;
assign TRAN_control_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_idle_out = AESL_idle_index_reg;
assign TRAN_control_read_data_finish = 1 & C_read_data_finish;
assign TRAN_control_write_data_finish = 1 & A_0_write_data_finish & A_1_write_data_finish & A_2_write_data_finish & A_3_write_data_finish & A_4_write_data_finish & A_5_write_data_finish & A_6_write_data_finish & A_7_write_data_finish & B_0_write_data_finish & B_1_write_data_finish & B_2_write_data_finish & B_3_write_data_finish & B_4_write_data_finish & B_5_write_data_finish & B_6_write_data_finish & B_7_write_data_finish;
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish or process_11_finish or process_12_finish or process_13_finish or process_14_finish or process_15_finish or process_16_finish or process_17_finish or process_18_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 9 && process_9_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 10 && process_10_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 11 && process_11_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 12 && process_12_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 13 && process_13_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 14 && process_14_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 15 && process_15_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 16 && process_16_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 17 && process_17_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 18 && process_18_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_0_write_data_finish <= 0;
        write_A_0_run_flag <= 0; 
        write_A_0_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_0_c_bitwidth, A_0_DEPTH, A_0_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_0_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_0_run_flag <= 1; 
            write_A_0_count = 0;
        end
        if (write_one_A_0_data_done === 1) begin
            write_A_0_count = write_A_0_count + 1;
            if (write_A_0_count == A_0_OPERATE_DEPTH) begin
                write_A_0_run_flag <= 0; 
                A_0_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_0
    integer write_A_0_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_0_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_0_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_0_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_0 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_0_c_bitwidth < 32) begin
                        A_0_data_tmp_reg = mem_A_0[write_A_0_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_0_c_bitwidth) begin
                                A_0_data_tmp_reg[j] = mem_A_0[write_A_0_count][i*32 + j];
                            end
                            else begin
                                A_0_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_A_0[write_A_0_count * four_byte_num  + i]!==A_0_data_tmp_reg) begin
                    write (A_0_data_in_addr + write_A_0_count * four_byte_num * 4 + i * 4, A_0_data_tmp_reg, write_A_0_resp);
                    image_mem_A_0[write_A_0_count * four_byte_num + i]=A_0_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_A_0_data_done <= 1;
                @(posedge clk);
                write_one_A_0_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_1_write_data_finish <= 0;
        write_A_1_run_flag <= 0; 
        write_A_1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_1_c_bitwidth, A_1_DEPTH, A_1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_1_run_flag <= 1; 
            write_A_1_count = 0;
        end
        if (write_one_A_1_data_done === 1) begin
            write_A_1_count = write_A_1_count + 1;
            if (write_A_1_count == A_1_OPERATE_DEPTH) begin
                write_A_1_run_flag <= 0; 
                A_1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_1
    integer write_A_1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_1_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_1_c_bitwidth < 32) begin
                        A_1_data_tmp_reg = mem_A_1[write_A_1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_1_c_bitwidth) begin
                                A_1_data_tmp_reg[j] = mem_A_1[write_A_1_count][i*32 + j];
                            end
                            else begin
                                A_1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_A_1[write_A_1_count * four_byte_num  + i]!==A_1_data_tmp_reg) begin
                    write (A_1_data_in_addr + write_A_1_count * four_byte_num * 4 + i * 4, A_1_data_tmp_reg, write_A_1_resp);
                    image_mem_A_1[write_A_1_count * four_byte_num + i]=A_1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_A_1_data_done <= 1;
                @(posedge clk);
                write_one_A_1_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_2_write_data_finish <= 0;
        write_A_2_run_flag <= 0; 
        write_A_2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_2_c_bitwidth, A_2_DEPTH, A_2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_2_run_flag <= 1; 
            write_A_2_count = 0;
        end
        if (write_one_A_2_data_done === 1) begin
            write_A_2_count = write_A_2_count + 1;
            if (write_A_2_count == A_2_OPERATE_DEPTH) begin
                write_A_2_run_flag <= 0; 
                A_2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_2
    integer write_A_2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_2_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_2_c_bitwidth < 32) begin
                        A_2_data_tmp_reg = mem_A_2[write_A_2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_2_c_bitwidth) begin
                                A_2_data_tmp_reg[j] = mem_A_2[write_A_2_count][i*32 + j];
                            end
                            else begin
                                A_2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_A_2[write_A_2_count * four_byte_num  + i]!==A_2_data_tmp_reg) begin
                    write (A_2_data_in_addr + write_A_2_count * four_byte_num * 4 + i * 4, A_2_data_tmp_reg, write_A_2_resp);
                    image_mem_A_2[write_A_2_count * four_byte_num + i]=A_2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_A_2_data_done <= 1;
                @(posedge clk);
                write_one_A_2_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_3_write_data_finish <= 0;
        write_A_3_run_flag <= 0; 
        write_A_3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_3_c_bitwidth, A_3_DEPTH, A_3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_3_run_flag <= 1; 
            write_A_3_count = 0;
        end
        if (write_one_A_3_data_done === 1) begin
            write_A_3_count = write_A_3_count + 1;
            if (write_A_3_count == A_3_OPERATE_DEPTH) begin
                write_A_3_run_flag <= 0; 
                A_3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_3
    integer write_A_3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_3_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_3_c_bitwidth < 32) begin
                        A_3_data_tmp_reg = mem_A_3[write_A_3_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_3_c_bitwidth) begin
                                A_3_data_tmp_reg[j] = mem_A_3[write_A_3_count][i*32 + j];
                            end
                            else begin
                                A_3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_A_3[write_A_3_count * four_byte_num  + i]!==A_3_data_tmp_reg) begin
                    write (A_3_data_in_addr + write_A_3_count * four_byte_num * 4 + i * 4, A_3_data_tmp_reg, write_A_3_resp);
                    image_mem_A_3[write_A_3_count * four_byte_num + i]=A_3_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_A_3_data_done <= 1;
                @(posedge clk);
                write_one_A_3_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_4_write_data_finish <= 0;
        write_A_4_run_flag <= 0; 
        write_A_4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_4_c_bitwidth, A_4_DEPTH, A_4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_4_run_flag <= 1; 
            write_A_4_count = 0;
        end
        if (write_one_A_4_data_done === 1) begin
            write_A_4_count = write_A_4_count + 1;
            if (write_A_4_count == A_4_OPERATE_DEPTH) begin
                write_A_4_run_flag <= 0; 
                A_4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_4
    integer write_A_4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_4_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_4_c_bitwidth < 32) begin
                        A_4_data_tmp_reg = mem_A_4[write_A_4_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_4_c_bitwidth) begin
                                A_4_data_tmp_reg[j] = mem_A_4[write_A_4_count][i*32 + j];
                            end
                            else begin
                                A_4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_A_4[write_A_4_count * four_byte_num  + i]!==A_4_data_tmp_reg) begin
                    write (A_4_data_in_addr + write_A_4_count * four_byte_num * 4 + i * 4, A_4_data_tmp_reg, write_A_4_resp);
                    image_mem_A_4[write_A_4_count * four_byte_num + i]=A_4_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_A_4_data_done <= 1;
                @(posedge clk);
                write_one_A_4_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_5_write_data_finish <= 0;
        write_A_5_run_flag <= 0; 
        write_A_5_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_5_c_bitwidth, A_5_DEPTH, A_5_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_5_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_5_run_flag <= 1; 
            write_A_5_count = 0;
        end
        if (write_one_A_5_data_done === 1) begin
            write_A_5_count = write_A_5_count + 1;
            if (write_A_5_count == A_5_OPERATE_DEPTH) begin
                write_A_5_run_flag <= 0; 
                A_5_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_5
    integer write_A_5_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_5_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_5_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_5_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_5 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_5_c_bitwidth < 32) begin
                        A_5_data_tmp_reg = mem_A_5[write_A_5_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_5_c_bitwidth) begin
                                A_5_data_tmp_reg[j] = mem_A_5[write_A_5_count][i*32 + j];
                            end
                            else begin
                                A_5_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_A_5[write_A_5_count * four_byte_num  + i]!==A_5_data_tmp_reg) begin
                    write (A_5_data_in_addr + write_A_5_count * four_byte_num * 4 + i * 4, A_5_data_tmp_reg, write_A_5_resp);
                    image_mem_A_5[write_A_5_count * four_byte_num + i]=A_5_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_A_5_data_done <= 1;
                @(posedge clk);
                write_one_A_5_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_6_write_data_finish <= 0;
        write_A_6_run_flag <= 0; 
        write_A_6_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_6_c_bitwidth, A_6_DEPTH, A_6_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_6_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_6_run_flag <= 1; 
            write_A_6_count = 0;
        end
        if (write_one_A_6_data_done === 1) begin
            write_A_6_count = write_A_6_count + 1;
            if (write_A_6_count == A_6_OPERATE_DEPTH) begin
                write_A_6_run_flag <= 0; 
                A_6_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_6
    integer write_A_6_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_6_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_6_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_6_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_6 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_6_c_bitwidth < 32) begin
                        A_6_data_tmp_reg = mem_A_6[write_A_6_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_6_c_bitwidth) begin
                                A_6_data_tmp_reg[j] = mem_A_6[write_A_6_count][i*32 + j];
                            end
                            else begin
                                A_6_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_A_6[write_A_6_count * four_byte_num  + i]!==A_6_data_tmp_reg) begin
                    write (A_6_data_in_addr + write_A_6_count * four_byte_num * 4 + i * 4, A_6_data_tmp_reg, write_A_6_resp);
                    image_mem_A_6[write_A_6_count * four_byte_num + i]=A_6_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_A_6_data_done <= 1;
                @(posedge clk);
                write_one_A_6_data_done <= 0;
            end   
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_7_write_data_finish <= 0;
        write_A_7_run_flag <= 0; 
        write_A_7_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_7_c_bitwidth, A_7_DEPTH, A_7_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_7_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_7_run_flag <= 1; 
            write_A_7_count = 0;
        end
        if (write_one_A_7_data_done === 1) begin
            write_A_7_count = write_A_7_count + 1;
            if (write_A_7_count == A_7_OPERATE_DEPTH) begin
                write_A_7_run_flag <= 0; 
                A_7_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_7
    integer write_A_7_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_7_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_7_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_7_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_7 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_7_c_bitwidth < 32) begin
                        A_7_data_tmp_reg = mem_A_7[write_A_7_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_7_c_bitwidth) begin
                                A_7_data_tmp_reg[j] = mem_A_7[write_A_7_count][i*32 + j];
                            end
                            else begin
                                A_7_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_A_7[write_A_7_count * four_byte_num  + i]!==A_7_data_tmp_reg) begin
                    write (A_7_data_in_addr + write_A_7_count * four_byte_num * 4 + i * 4, A_7_data_tmp_reg, write_A_7_resp);
                    image_mem_A_7[write_A_7_count * four_byte_num + i]=A_7_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_A_7_data_done <= 1;
                @(posedge clk);
                write_one_A_7_data_done <= 0;
            end   
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_0_write_data_finish <= 0;
        write_B_0_run_flag <= 0; 
        write_B_0_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_0_c_bitwidth, B_0_DEPTH, B_0_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_0_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_0_run_flag <= 1; 
            write_B_0_count = 0;
        end
        if (write_one_B_0_data_done === 1) begin
            write_B_0_count = write_B_0_count + 1;
            if (write_B_0_count == B_0_OPERATE_DEPTH) begin
                write_B_0_run_flag <= 0; 
                B_0_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_0
    integer write_B_0_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_0_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_0_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_9_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_0_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_0 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_0_c_bitwidth < 32) begin
                        B_0_data_tmp_reg = mem_B_0[write_B_0_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_0_c_bitwidth) begin
                                B_0_data_tmp_reg[j] = mem_B_0[write_B_0_count][i*32 + j];
                            end
                            else begin
                                B_0_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_0[write_B_0_count * four_byte_num  + i]!==B_0_data_tmp_reg) begin
                    write (B_0_data_in_addr + write_B_0_count * four_byte_num * 4 + i * 4, B_0_data_tmp_reg, write_B_0_resp);
                    image_mem_B_0[write_B_0_count * four_byte_num + i]=B_0_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_0_data_done <= 1;
                @(posedge clk);
                write_one_B_0_data_done <= 0;
            end   
            process_9_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_1_write_data_finish <= 0;
        write_B_1_run_flag <= 0; 
        write_B_1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_1_c_bitwidth, B_1_DEPTH, B_1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_1_run_flag <= 1; 
            write_B_1_count = 0;
        end
        if (write_one_B_1_data_done === 1) begin
            write_B_1_count = write_B_1_count + 1;
            if (write_B_1_count == B_1_OPERATE_DEPTH) begin
                write_B_1_run_flag <= 0; 
                B_1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_1
    integer write_B_1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_1_c_bitwidth;
    process_num = 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_10_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_1_c_bitwidth < 32) begin
                        B_1_data_tmp_reg = mem_B_1[write_B_1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_1_c_bitwidth) begin
                                B_1_data_tmp_reg[j] = mem_B_1[write_B_1_count][i*32 + j];
                            end
                            else begin
                                B_1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_1[write_B_1_count * four_byte_num  + i]!==B_1_data_tmp_reg) begin
                    write (B_1_data_in_addr + write_B_1_count * four_byte_num * 4 + i * 4, B_1_data_tmp_reg, write_B_1_resp);
                    image_mem_B_1[write_B_1_count * four_byte_num + i]=B_1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_1_data_done <= 1;
                @(posedge clk);
                write_one_B_1_data_done <= 0;
            end   
            process_10_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_2_write_data_finish <= 0;
        write_B_2_run_flag <= 0; 
        write_B_2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_2_c_bitwidth, B_2_DEPTH, B_2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_2_run_flag <= 1; 
            write_B_2_count = 0;
        end
        if (write_one_B_2_data_done === 1) begin
            write_B_2_count = write_B_2_count + 1;
            if (write_B_2_count == B_2_OPERATE_DEPTH) begin
                write_B_2_run_flag <= 0; 
                B_2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_2
    integer write_B_2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_2_c_bitwidth;
    process_num = 11;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_11_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_2_c_bitwidth < 32) begin
                        B_2_data_tmp_reg = mem_B_2[write_B_2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_2_c_bitwidth) begin
                                B_2_data_tmp_reg[j] = mem_B_2[write_B_2_count][i*32 + j];
                            end
                            else begin
                                B_2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_2[write_B_2_count * four_byte_num  + i]!==B_2_data_tmp_reg) begin
                    write (B_2_data_in_addr + write_B_2_count * four_byte_num * 4 + i * 4, B_2_data_tmp_reg, write_B_2_resp);
                    image_mem_B_2[write_B_2_count * four_byte_num + i]=B_2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_2_data_done <= 1;
                @(posedge clk);
                write_one_B_2_data_done <= 0;
            end   
            process_11_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_3_write_data_finish <= 0;
        write_B_3_run_flag <= 0; 
        write_B_3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_3_c_bitwidth, B_3_DEPTH, B_3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_3_run_flag <= 1; 
            write_B_3_count = 0;
        end
        if (write_one_B_3_data_done === 1) begin
            write_B_3_count = write_B_3_count + 1;
            if (write_B_3_count == B_3_OPERATE_DEPTH) begin
                write_B_3_run_flag <= 0; 
                B_3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_3
    integer write_B_3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_3_c_bitwidth;
    process_num = 12;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_12_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_3_c_bitwidth < 32) begin
                        B_3_data_tmp_reg = mem_B_3[write_B_3_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_3_c_bitwidth) begin
                                B_3_data_tmp_reg[j] = mem_B_3[write_B_3_count][i*32 + j];
                            end
                            else begin
                                B_3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_3[write_B_3_count * four_byte_num  + i]!==B_3_data_tmp_reg) begin
                    write (B_3_data_in_addr + write_B_3_count * four_byte_num * 4 + i * 4, B_3_data_tmp_reg, write_B_3_resp);
                    image_mem_B_3[write_B_3_count * four_byte_num + i]=B_3_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_3_data_done <= 1;
                @(posedge clk);
                write_one_B_3_data_done <= 0;
            end   
            process_12_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_4_write_data_finish <= 0;
        write_B_4_run_flag <= 0; 
        write_B_4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_4_c_bitwidth, B_4_DEPTH, B_4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_4_run_flag <= 1; 
            write_B_4_count = 0;
        end
        if (write_one_B_4_data_done === 1) begin
            write_B_4_count = write_B_4_count + 1;
            if (write_B_4_count == B_4_OPERATE_DEPTH) begin
                write_B_4_run_flag <= 0; 
                B_4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_4
    integer write_B_4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_4_c_bitwidth;
    process_num = 13;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_13_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_4_c_bitwidth < 32) begin
                        B_4_data_tmp_reg = mem_B_4[write_B_4_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_4_c_bitwidth) begin
                                B_4_data_tmp_reg[j] = mem_B_4[write_B_4_count][i*32 + j];
                            end
                            else begin
                                B_4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_4[write_B_4_count * four_byte_num  + i]!==B_4_data_tmp_reg) begin
                    write (B_4_data_in_addr + write_B_4_count * four_byte_num * 4 + i * 4, B_4_data_tmp_reg, write_B_4_resp);
                    image_mem_B_4[write_B_4_count * four_byte_num + i]=B_4_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_4_data_done <= 1;
                @(posedge clk);
                write_one_B_4_data_done <= 0;
            end   
            process_13_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_5_write_data_finish <= 0;
        write_B_5_run_flag <= 0; 
        write_B_5_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_5_c_bitwidth, B_5_DEPTH, B_5_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_5_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_5_run_flag <= 1; 
            write_B_5_count = 0;
        end
        if (write_one_B_5_data_done === 1) begin
            write_B_5_count = write_B_5_count + 1;
            if (write_B_5_count == B_5_OPERATE_DEPTH) begin
                write_B_5_run_flag <= 0; 
                B_5_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_5
    integer write_B_5_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_5_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_5_c_bitwidth;
    process_num = 14;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_14_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_5_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_5 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_5_c_bitwidth < 32) begin
                        B_5_data_tmp_reg = mem_B_5[write_B_5_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_5_c_bitwidth) begin
                                B_5_data_tmp_reg[j] = mem_B_5[write_B_5_count][i*32 + j];
                            end
                            else begin
                                B_5_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_5[write_B_5_count * four_byte_num  + i]!==B_5_data_tmp_reg) begin
                    write (B_5_data_in_addr + write_B_5_count * four_byte_num * 4 + i * 4, B_5_data_tmp_reg, write_B_5_resp);
                    image_mem_B_5[write_B_5_count * four_byte_num + i]=B_5_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_5_data_done <= 1;
                @(posedge clk);
                write_one_B_5_data_done <= 0;
            end   
            process_14_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_6_write_data_finish <= 0;
        write_B_6_run_flag <= 0; 
        write_B_6_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_6_c_bitwidth, B_6_DEPTH, B_6_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_6_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_6_run_flag <= 1; 
            write_B_6_count = 0;
        end
        if (write_one_B_6_data_done === 1) begin
            write_B_6_count = write_B_6_count + 1;
            if (write_B_6_count == B_6_OPERATE_DEPTH) begin
                write_B_6_run_flag <= 0; 
                B_6_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_6
    integer write_B_6_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_6_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_6_c_bitwidth;
    process_num = 15;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_15_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_6_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_6 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_6_c_bitwidth < 32) begin
                        B_6_data_tmp_reg = mem_B_6[write_B_6_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_6_c_bitwidth) begin
                                B_6_data_tmp_reg[j] = mem_B_6[write_B_6_count][i*32 + j];
                            end
                            else begin
                                B_6_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_6[write_B_6_count * four_byte_num  + i]!==B_6_data_tmp_reg) begin
                    write (B_6_data_in_addr + write_B_6_count * four_byte_num * 4 + i * 4, B_6_data_tmp_reg, write_B_6_resp);
                    image_mem_B_6[write_B_6_count * four_byte_num + i]=B_6_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_6_data_done <= 1;
                @(posedge clk);
                write_one_B_6_data_done <= 0;
            end   
            process_15_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_7_write_data_finish <= 0;
        write_B_7_run_flag <= 0; 
        write_B_7_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_7_c_bitwidth, B_7_DEPTH, B_7_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_7_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_7_run_flag <= 1; 
            write_B_7_count = 0;
        end
        if (write_one_B_7_data_done === 1) begin
            write_B_7_count = write_B_7_count + 1;
            if (write_B_7_count == B_7_OPERATE_DEPTH) begin
                write_B_7_run_flag <= 0; 
                B_7_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_7
    integer write_B_7_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_7_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_7_c_bitwidth;
    process_num = 16;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_16_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_7_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_7 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_7_c_bitwidth < 32) begin
                        B_7_data_tmp_reg = mem_B_7[write_B_7_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_7_c_bitwidth) begin
                                B_7_data_tmp_reg[j] = mem_B_7[write_B_7_count][i*32 + j];
                            end
                            else begin
                                B_7_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_7[write_B_7_count * four_byte_num  + i]!==B_7_data_tmp_reg) begin
                    write (B_7_data_in_addr + write_B_7_count * four_byte_num * 4 + i * 4, B_7_data_tmp_reg, write_B_7_resp);
                    image_mem_B_7[write_B_7_count * four_byte_num + i]=B_7_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_7_data_done <= 1;
                @(posedge clk);
                write_one_B_7_data_done <= 0;
            end   
            process_16_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_control_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 17;
    while (1) begin
        process_17_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_17_finish <= 1;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        C_read_data_finish <= 0;
        read_C_run_flag <= 0; 
        read_C_count = 0;
        count_operate_depth_by_bitwidth_and_depth (C_c_bitwidth, C_DEPTH, C_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_C_run_flag = 1; 
        end
        if (TRAN_control_transaction_done_in === 1) begin
            C_read_data_finish <= 0;
            read_C_count = 0; 
        end
        if (read_one_C_data_done === 1) begin
            read_C_count = read_C_count + 1;
            if (read_C_count == C_OPERATE_DEPTH) begin
                read_C_run_flag <= 0; 
                C_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_C
    integer read_C_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = C_c_bitwidth;
    process_num = 18;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_18_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_C_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read C vld
                read (C_valid_out_addr, RDATA_reg, read_C_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read C data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (C_data_out_addr + read_C_count * four_byte_num * 4 + i * 4, RDATA_reg, read_C_resp);
                        if (C_c_bitwidth < 32) begin
                            mem_C[read_C_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < C_c_bitwidth) begin
                                    mem_C[read_C_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_C_data_done <= 1;
                    @(posedge clk);
                    read_one_C_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_18_finish <= 1;
        end
        @(posedge clk);
    end    
end
//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_0_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [A_0_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_0_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_0 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_0); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_0_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_A_0 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_0 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_0 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_0 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_0 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [A_1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_A_1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [A_2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_A_2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [A_3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_A_3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_4_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [A_4_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_4_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_4 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_4); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_4_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_A_4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_4 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_4 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_4 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_5_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [A_5_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_5_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_5 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_5); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_5_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_A_5 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_5 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_5 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_5 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_5 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_6_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [A_6_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_6_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_6 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_6); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_6_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_A_6 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_6 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_6 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_6 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_6 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_7_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [A_7_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_7_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_7 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_7); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_7_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_A_7 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_7 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_7 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_7 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_7 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_0_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_0_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_0_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_0 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_0); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_0_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_0 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_0 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_0 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_0 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_0 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_4_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_4_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_4_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_4 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_4); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_4_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_4 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_4 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_4 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_5_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_5_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_5_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_5 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_5); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_5_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_5 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_5 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_5 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_5 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_5 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_6_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_6_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_6_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_6 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_6); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_6_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_6 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_6 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_6 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_6 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_6 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_7_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_7_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_7_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_7 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_7); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_7_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_7 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_7 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_7 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_7 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_7 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_C_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [C_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (C_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (C_read_data_finish !== 1 || TRAN_control_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_C, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_C); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (C_DEPTH - C_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_C[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_C[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_C[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_C[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_C[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_C[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_C[i]);
          end
      end 
      if (factor == 4) begin
          if ((C_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_C[C_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_C[C_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_C[C_DEPTH / factor][23:16]);
          end
          if ((C_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_C[C_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_C[C_DEPTH / factor][15:8]);
          end
          if ((C_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_C[C_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((C_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_C[C_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_control_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
endmodule
