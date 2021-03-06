-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity eucDis_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 14;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    C                     :in   STD_LOGIC_VECTOR(31 downto 0);
    C_ap_vld              :in   STD_LOGIC;
    A_0_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    A_0_ce0               :in   STD_LOGIC;
    A_0_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    A_1_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    A_1_ce0               :in   STD_LOGIC;
    A_1_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    A_2_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    A_2_ce0               :in   STD_LOGIC;
    A_2_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    A_3_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    A_3_ce0               :in   STD_LOGIC;
    A_3_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    A_4_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    A_4_ce0               :in   STD_LOGIC;
    A_4_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    A_5_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    A_5_ce0               :in   STD_LOGIC;
    A_5_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    A_6_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    A_6_ce0               :in   STD_LOGIC;
    A_6_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    A_7_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    A_7_ce0               :in   STD_LOGIC;
    A_7_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    B_0_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    B_0_ce0               :in   STD_LOGIC;
    B_0_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    B_1_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    B_1_ce0               :in   STD_LOGIC;
    B_1_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    B_2_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    B_2_ce0               :in   STD_LOGIC;
    B_2_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    B_3_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    B_3_ce0               :in   STD_LOGIC;
    B_3_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    B_4_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    B_4_ce0               :in   STD_LOGIC;
    B_4_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    B_5_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    B_5_ce0               :in   STD_LOGIC;
    B_5_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    B_6_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    B_6_ce0               :in   STD_LOGIC;
    B_6_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    B_7_address0          :in   STD_LOGIC_VECTOR(6 downto 0);
    B_7_ce0               :in   STD_LOGIC;
    B_7_q0                :out  STD_LOGIC_VECTOR(31 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity eucDis_control_s_axi;

-- ------------------------Address Info-------------------
-- 0x0000 : Control signals
--          bit 0  - ap_start (Read/Write/COH)
--          bit 1  - ap_done (Read/COR)
--          bit 2  - ap_idle (Read)
--          bit 3  - ap_ready (Read/COR)
--          bit 7  - auto_restart (Read/Write)
--          others - reserved
-- 0x0004 : Global Interrupt Enable Register
--          bit 0  - Global Interrupt Enable (Read/Write)
--          others - reserved
-- 0x0008 : IP Interrupt Enable Register (Read/Write)
--          bit 0  - enable ap_done interrupt (Read/Write)
--          bit 1  - enable ap_ready interrupt (Read/Write)
--          others - reserved
-- 0x000c : IP Interrupt Status Register (Read/TOW)
--          bit 0  - ap_done (COR/TOW)
--          bit 1  - ap_ready (COR/TOW)
--          others - reserved
-- 0x0010 : Data signal of C
--          bit 31~0 - C[31:0] (Read)
-- 0x0014 : Control signal of C
--          bit 0  - C_ap_vld (Read/COR)
--          others - reserved
-- 0x0200 ~
-- 0x03ff : Memory 'A_0' (128 * 32b)
--          Word n : bit [31:0] - A_0[n]
-- 0x0400 ~
-- 0x05ff : Memory 'A_1' (128 * 32b)
--          Word n : bit [31:0] - A_1[n]
-- 0x0600 ~
-- 0x07ff : Memory 'A_2' (128 * 32b)
--          Word n : bit [31:0] - A_2[n]
-- 0x0800 ~
-- 0x09ff : Memory 'A_3' (128 * 32b)
--          Word n : bit [31:0] - A_3[n]
-- 0x0a00 ~
-- 0x0bff : Memory 'A_4' (128 * 32b)
--          Word n : bit [31:0] - A_4[n]
-- 0x0c00 ~
-- 0x0dff : Memory 'A_5' (128 * 32b)
--          Word n : bit [31:0] - A_5[n]
-- 0x0e00 ~
-- 0x0fff : Memory 'A_6' (128 * 32b)
--          Word n : bit [31:0] - A_6[n]
-- 0x1000 ~
-- 0x11ff : Memory 'A_7' (128 * 32b)
--          Word n : bit [31:0] - A_7[n]
-- 0x1200 ~
-- 0x13ff : Memory 'B_0' (128 * 32b)
--          Word n : bit [31:0] - B_0[n]
-- 0x1400 ~
-- 0x15ff : Memory 'B_1' (128 * 32b)
--          Word n : bit [31:0] - B_1[n]
-- 0x1600 ~
-- 0x17ff : Memory 'B_2' (128 * 32b)
--          Word n : bit [31:0] - B_2[n]
-- 0x1800 ~
-- 0x19ff : Memory 'B_3' (128 * 32b)
--          Word n : bit [31:0] - B_3[n]
-- 0x1a00 ~
-- 0x1bff : Memory 'B_4' (128 * 32b)
--          Word n : bit [31:0] - B_4[n]
-- 0x1c00 ~
-- 0x1dff : Memory 'B_5' (128 * 32b)
--          Word n : bit [31:0] - B_5[n]
-- 0x1e00 ~
-- 0x1fff : Memory 'B_6' (128 * 32b)
--          Word n : bit [31:0] - B_6[n]
-- 0x2000 ~
-- 0x21ff : Memory 'B_7' (128 * 32b)
--          Word n : bit [31:0] - B_7[n]
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of eucDis_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL  : INTEGER := 16#0000#;
    constant ADDR_GIE      : INTEGER := 16#0004#;
    constant ADDR_IER      : INTEGER := 16#0008#;
    constant ADDR_ISR      : INTEGER := 16#000c#;
    constant ADDR_C_DATA_0 : INTEGER := 16#0010#;
    constant ADDR_C_CTRL   : INTEGER := 16#0014#;
    constant ADDR_A_0_BASE : INTEGER := 16#0200#;
    constant ADDR_A_0_HIGH : INTEGER := 16#03ff#;
    constant ADDR_A_1_BASE : INTEGER := 16#0400#;
    constant ADDR_A_1_HIGH : INTEGER := 16#05ff#;
    constant ADDR_A_2_BASE : INTEGER := 16#0600#;
    constant ADDR_A_2_HIGH : INTEGER := 16#07ff#;
    constant ADDR_A_3_BASE : INTEGER := 16#0800#;
    constant ADDR_A_3_HIGH : INTEGER := 16#09ff#;
    constant ADDR_A_4_BASE : INTEGER := 16#0a00#;
    constant ADDR_A_4_HIGH : INTEGER := 16#0bff#;
    constant ADDR_A_5_BASE : INTEGER := 16#0c00#;
    constant ADDR_A_5_HIGH : INTEGER := 16#0dff#;
    constant ADDR_A_6_BASE : INTEGER := 16#0e00#;
    constant ADDR_A_6_HIGH : INTEGER := 16#0fff#;
    constant ADDR_A_7_BASE : INTEGER := 16#1000#;
    constant ADDR_A_7_HIGH : INTEGER := 16#11ff#;
    constant ADDR_B_0_BASE : INTEGER := 16#1200#;
    constant ADDR_B_0_HIGH : INTEGER := 16#13ff#;
    constant ADDR_B_1_BASE : INTEGER := 16#1400#;
    constant ADDR_B_1_HIGH : INTEGER := 16#15ff#;
    constant ADDR_B_2_BASE : INTEGER := 16#1600#;
    constant ADDR_B_2_HIGH : INTEGER := 16#17ff#;
    constant ADDR_B_3_BASE : INTEGER := 16#1800#;
    constant ADDR_B_3_HIGH : INTEGER := 16#19ff#;
    constant ADDR_B_4_BASE : INTEGER := 16#1a00#;
    constant ADDR_B_4_HIGH : INTEGER := 16#1bff#;
    constant ADDR_B_5_BASE : INTEGER := 16#1c00#;
    constant ADDR_B_5_HIGH : INTEGER := 16#1dff#;
    constant ADDR_B_6_BASE : INTEGER := 16#1e00#;
    constant ADDR_B_6_HIGH : INTEGER := 16#1fff#;
    constant ADDR_B_7_BASE : INTEGER := 16#2000#;
    constant ADDR_B_7_HIGH : INTEGER := 16#21ff#;
    constant ADDR_BITS         : INTEGER := 14;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_C_ap_vld        : STD_LOGIC;
    signal int_C               : UNSIGNED(31 downto 0) := (others => '0');
    -- memory signals
    signal int_A_0_address0    : UNSIGNED(6 downto 0);
    signal int_A_0_ce0         : STD_LOGIC;
    signal int_A_0_q0          : UNSIGNED(31 downto 0);
    signal int_A_0_address1    : UNSIGNED(6 downto 0);
    signal int_A_0_ce1         : STD_LOGIC;
    signal int_A_0_we1         : STD_LOGIC;
    signal int_A_0_be1         : UNSIGNED(3 downto 0);
    signal int_A_0_d1          : UNSIGNED(31 downto 0);
    signal int_A_0_q1          : UNSIGNED(31 downto 0);
    signal int_A_0_read        : STD_LOGIC;
    signal int_A_0_write       : STD_LOGIC;
    signal int_A_1_address0    : UNSIGNED(6 downto 0);
    signal int_A_1_ce0         : STD_LOGIC;
    signal int_A_1_q0          : UNSIGNED(31 downto 0);
    signal int_A_1_address1    : UNSIGNED(6 downto 0);
    signal int_A_1_ce1         : STD_LOGIC;
    signal int_A_1_we1         : STD_LOGIC;
    signal int_A_1_be1         : UNSIGNED(3 downto 0);
    signal int_A_1_d1          : UNSIGNED(31 downto 0);
    signal int_A_1_q1          : UNSIGNED(31 downto 0);
    signal int_A_1_read        : STD_LOGIC;
    signal int_A_1_write       : STD_LOGIC;
    signal int_A_2_address0    : UNSIGNED(6 downto 0);
    signal int_A_2_ce0         : STD_LOGIC;
    signal int_A_2_q0          : UNSIGNED(31 downto 0);
    signal int_A_2_address1    : UNSIGNED(6 downto 0);
    signal int_A_2_ce1         : STD_LOGIC;
    signal int_A_2_we1         : STD_LOGIC;
    signal int_A_2_be1         : UNSIGNED(3 downto 0);
    signal int_A_2_d1          : UNSIGNED(31 downto 0);
    signal int_A_2_q1          : UNSIGNED(31 downto 0);
    signal int_A_2_read        : STD_LOGIC;
    signal int_A_2_write       : STD_LOGIC;
    signal int_A_3_address0    : UNSIGNED(6 downto 0);
    signal int_A_3_ce0         : STD_LOGIC;
    signal int_A_3_q0          : UNSIGNED(31 downto 0);
    signal int_A_3_address1    : UNSIGNED(6 downto 0);
    signal int_A_3_ce1         : STD_LOGIC;
    signal int_A_3_we1         : STD_LOGIC;
    signal int_A_3_be1         : UNSIGNED(3 downto 0);
    signal int_A_3_d1          : UNSIGNED(31 downto 0);
    signal int_A_3_q1          : UNSIGNED(31 downto 0);
    signal int_A_3_read        : STD_LOGIC;
    signal int_A_3_write       : STD_LOGIC;
    signal int_A_4_address0    : UNSIGNED(6 downto 0);
    signal int_A_4_ce0         : STD_LOGIC;
    signal int_A_4_q0          : UNSIGNED(31 downto 0);
    signal int_A_4_address1    : UNSIGNED(6 downto 0);
    signal int_A_4_ce1         : STD_LOGIC;
    signal int_A_4_we1         : STD_LOGIC;
    signal int_A_4_be1         : UNSIGNED(3 downto 0);
    signal int_A_4_d1          : UNSIGNED(31 downto 0);
    signal int_A_4_q1          : UNSIGNED(31 downto 0);
    signal int_A_4_read        : STD_LOGIC;
    signal int_A_4_write       : STD_LOGIC;
    signal int_A_5_address0    : UNSIGNED(6 downto 0);
    signal int_A_5_ce0         : STD_LOGIC;
    signal int_A_5_q0          : UNSIGNED(31 downto 0);
    signal int_A_5_address1    : UNSIGNED(6 downto 0);
    signal int_A_5_ce1         : STD_LOGIC;
    signal int_A_5_we1         : STD_LOGIC;
    signal int_A_5_be1         : UNSIGNED(3 downto 0);
    signal int_A_5_d1          : UNSIGNED(31 downto 0);
    signal int_A_5_q1          : UNSIGNED(31 downto 0);
    signal int_A_5_read        : STD_LOGIC;
    signal int_A_5_write       : STD_LOGIC;
    signal int_A_6_address0    : UNSIGNED(6 downto 0);
    signal int_A_6_ce0         : STD_LOGIC;
    signal int_A_6_q0          : UNSIGNED(31 downto 0);
    signal int_A_6_address1    : UNSIGNED(6 downto 0);
    signal int_A_6_ce1         : STD_LOGIC;
    signal int_A_6_we1         : STD_LOGIC;
    signal int_A_6_be1         : UNSIGNED(3 downto 0);
    signal int_A_6_d1          : UNSIGNED(31 downto 0);
    signal int_A_6_q1          : UNSIGNED(31 downto 0);
    signal int_A_6_read        : STD_LOGIC;
    signal int_A_6_write       : STD_LOGIC;
    signal int_A_7_address0    : UNSIGNED(6 downto 0);
    signal int_A_7_ce0         : STD_LOGIC;
    signal int_A_7_q0          : UNSIGNED(31 downto 0);
    signal int_A_7_address1    : UNSIGNED(6 downto 0);
    signal int_A_7_ce1         : STD_LOGIC;
    signal int_A_7_we1         : STD_LOGIC;
    signal int_A_7_be1         : UNSIGNED(3 downto 0);
    signal int_A_7_d1          : UNSIGNED(31 downto 0);
    signal int_A_7_q1          : UNSIGNED(31 downto 0);
    signal int_A_7_read        : STD_LOGIC;
    signal int_A_7_write       : STD_LOGIC;
    signal int_B_0_address0    : UNSIGNED(6 downto 0);
    signal int_B_0_ce0         : STD_LOGIC;
    signal int_B_0_q0          : UNSIGNED(31 downto 0);
    signal int_B_0_address1    : UNSIGNED(6 downto 0);
    signal int_B_0_ce1         : STD_LOGIC;
    signal int_B_0_we1         : STD_LOGIC;
    signal int_B_0_be1         : UNSIGNED(3 downto 0);
    signal int_B_0_d1          : UNSIGNED(31 downto 0);
    signal int_B_0_q1          : UNSIGNED(31 downto 0);
    signal int_B_0_read        : STD_LOGIC;
    signal int_B_0_write       : STD_LOGIC;
    signal int_B_1_address0    : UNSIGNED(6 downto 0);
    signal int_B_1_ce0         : STD_LOGIC;
    signal int_B_1_q0          : UNSIGNED(31 downto 0);
    signal int_B_1_address1    : UNSIGNED(6 downto 0);
    signal int_B_1_ce1         : STD_LOGIC;
    signal int_B_1_we1         : STD_LOGIC;
    signal int_B_1_be1         : UNSIGNED(3 downto 0);
    signal int_B_1_d1          : UNSIGNED(31 downto 0);
    signal int_B_1_q1          : UNSIGNED(31 downto 0);
    signal int_B_1_read        : STD_LOGIC;
    signal int_B_1_write       : STD_LOGIC;
    signal int_B_2_address0    : UNSIGNED(6 downto 0);
    signal int_B_2_ce0         : STD_LOGIC;
    signal int_B_2_q0          : UNSIGNED(31 downto 0);
    signal int_B_2_address1    : UNSIGNED(6 downto 0);
    signal int_B_2_ce1         : STD_LOGIC;
    signal int_B_2_we1         : STD_LOGIC;
    signal int_B_2_be1         : UNSIGNED(3 downto 0);
    signal int_B_2_d1          : UNSIGNED(31 downto 0);
    signal int_B_2_q1          : UNSIGNED(31 downto 0);
    signal int_B_2_read        : STD_LOGIC;
    signal int_B_2_write       : STD_LOGIC;
    signal int_B_3_address0    : UNSIGNED(6 downto 0);
    signal int_B_3_ce0         : STD_LOGIC;
    signal int_B_3_q0          : UNSIGNED(31 downto 0);
    signal int_B_3_address1    : UNSIGNED(6 downto 0);
    signal int_B_3_ce1         : STD_LOGIC;
    signal int_B_3_we1         : STD_LOGIC;
    signal int_B_3_be1         : UNSIGNED(3 downto 0);
    signal int_B_3_d1          : UNSIGNED(31 downto 0);
    signal int_B_3_q1          : UNSIGNED(31 downto 0);
    signal int_B_3_read        : STD_LOGIC;
    signal int_B_3_write       : STD_LOGIC;
    signal int_B_4_address0    : UNSIGNED(6 downto 0);
    signal int_B_4_ce0         : STD_LOGIC;
    signal int_B_4_q0          : UNSIGNED(31 downto 0);
    signal int_B_4_address1    : UNSIGNED(6 downto 0);
    signal int_B_4_ce1         : STD_LOGIC;
    signal int_B_4_we1         : STD_LOGIC;
    signal int_B_4_be1         : UNSIGNED(3 downto 0);
    signal int_B_4_d1          : UNSIGNED(31 downto 0);
    signal int_B_4_q1          : UNSIGNED(31 downto 0);
    signal int_B_4_read        : STD_LOGIC;
    signal int_B_4_write       : STD_LOGIC;
    signal int_B_5_address0    : UNSIGNED(6 downto 0);
    signal int_B_5_ce0         : STD_LOGIC;
    signal int_B_5_q0          : UNSIGNED(31 downto 0);
    signal int_B_5_address1    : UNSIGNED(6 downto 0);
    signal int_B_5_ce1         : STD_LOGIC;
    signal int_B_5_we1         : STD_LOGIC;
    signal int_B_5_be1         : UNSIGNED(3 downto 0);
    signal int_B_5_d1          : UNSIGNED(31 downto 0);
    signal int_B_5_q1          : UNSIGNED(31 downto 0);
    signal int_B_5_read        : STD_LOGIC;
    signal int_B_5_write       : STD_LOGIC;
    signal int_B_6_address0    : UNSIGNED(6 downto 0);
    signal int_B_6_ce0         : STD_LOGIC;
    signal int_B_6_q0          : UNSIGNED(31 downto 0);
    signal int_B_6_address1    : UNSIGNED(6 downto 0);
    signal int_B_6_ce1         : STD_LOGIC;
    signal int_B_6_we1         : STD_LOGIC;
    signal int_B_6_be1         : UNSIGNED(3 downto 0);
    signal int_B_6_d1          : UNSIGNED(31 downto 0);
    signal int_B_6_q1          : UNSIGNED(31 downto 0);
    signal int_B_6_read        : STD_LOGIC;
    signal int_B_6_write       : STD_LOGIC;
    signal int_B_7_address0    : UNSIGNED(6 downto 0);
    signal int_B_7_ce0         : STD_LOGIC;
    signal int_B_7_q0          : UNSIGNED(31 downto 0);
    signal int_B_7_address1    : UNSIGNED(6 downto 0);
    signal int_B_7_ce1         : STD_LOGIC;
    signal int_B_7_we1         : STD_LOGIC;
    signal int_B_7_be1         : UNSIGNED(3 downto 0);
    signal int_B_7_d1          : UNSIGNED(31 downto 0);
    signal int_B_7_q1          : UNSIGNED(31 downto 0);
    signal int_B_7_read        : STD_LOGIC;
    signal int_B_7_write       : STD_LOGIC;

    component eucDis_control_s_axi_ram is
        generic (
            MEM_STYLE : STRING :="auto";
            MEM_TYPE  : STRING :="S2P";
            BYTES   : INTEGER :=4;
            DEPTH   : INTEGER :=256;
            AWIDTH  : INTEGER :=8);
        port (
            clk0    : in  STD_LOGIC;
            address0: in  UNSIGNED(AWIDTH-1 downto 0);
            ce0     : in  STD_LOGIC;
            we0     : in  UNSIGNED(BYTES-1 downto 0);
            d0      : in  UNSIGNED(BYTES*8-1 downto 0);
            q0      : out UNSIGNED(BYTES*8-1 downto 0);
            clk1    : in  STD_LOGIC;
            address1: in  UNSIGNED(AWIDTH-1 downto 0);
            ce1     : in  STD_LOGIC;
            we1     : in  UNSIGNED(BYTES-1 downto 0);
            d1      : in  UNSIGNED(BYTES*8-1 downto 0);
            q1      : out UNSIGNED(BYTES*8-1 downto 0));
    end component eucDis_control_s_axi_ram;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 1;
        m := 2;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

begin
-- ----------------------- Instantiation------------------
-- int_A_0
int_A_0 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_A_0_address0,
     ce0       => int_A_0_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_0_q0,
     clk1      => ACLK,
     address1  => int_A_0_address1,
     ce1       => int_A_0_ce1,
     we1       => int_A_0_be1,
     d1        => int_A_0_d1,
     q1        => int_A_0_q1);
-- int_A_1
int_A_1 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_A_1_address0,
     ce0       => int_A_1_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_1_q0,
     clk1      => ACLK,
     address1  => int_A_1_address1,
     ce1       => int_A_1_ce1,
     we1       => int_A_1_be1,
     d1        => int_A_1_d1,
     q1        => int_A_1_q1);
-- int_A_2
int_A_2 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_A_2_address0,
     ce0       => int_A_2_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_2_q0,
     clk1      => ACLK,
     address1  => int_A_2_address1,
     ce1       => int_A_2_ce1,
     we1       => int_A_2_be1,
     d1        => int_A_2_d1,
     q1        => int_A_2_q1);
-- int_A_3
int_A_3 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_A_3_address0,
     ce0       => int_A_3_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_3_q0,
     clk1      => ACLK,
     address1  => int_A_3_address1,
     ce1       => int_A_3_ce1,
     we1       => int_A_3_be1,
     d1        => int_A_3_d1,
     q1        => int_A_3_q1);
-- int_A_4
int_A_4 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_A_4_address0,
     ce0       => int_A_4_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_4_q0,
     clk1      => ACLK,
     address1  => int_A_4_address1,
     ce1       => int_A_4_ce1,
     we1       => int_A_4_be1,
     d1        => int_A_4_d1,
     q1        => int_A_4_q1);
-- int_A_5
int_A_5 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_A_5_address0,
     ce0       => int_A_5_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_5_q0,
     clk1      => ACLK,
     address1  => int_A_5_address1,
     ce1       => int_A_5_ce1,
     we1       => int_A_5_be1,
     d1        => int_A_5_d1,
     q1        => int_A_5_q1);
-- int_A_6
int_A_6 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_A_6_address0,
     ce0       => int_A_6_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_6_q0,
     clk1      => ACLK,
     address1  => int_A_6_address1,
     ce1       => int_A_6_ce1,
     we1       => int_A_6_be1,
     d1        => int_A_6_d1,
     q1        => int_A_6_q1);
-- int_A_7
int_A_7 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_A_7_address0,
     ce0       => int_A_7_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_A_7_q0,
     clk1      => ACLK,
     address1  => int_A_7_address1,
     ce1       => int_A_7_ce1,
     we1       => int_A_7_be1,
     d1        => int_A_7_d1,
     q1        => int_A_7_q1);
-- int_B_0
int_B_0 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_B_0_address0,
     ce0       => int_B_0_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_0_q0,
     clk1      => ACLK,
     address1  => int_B_0_address1,
     ce1       => int_B_0_ce1,
     we1       => int_B_0_be1,
     d1        => int_B_0_d1,
     q1        => int_B_0_q1);
-- int_B_1
int_B_1 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_B_1_address0,
     ce0       => int_B_1_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_1_q0,
     clk1      => ACLK,
     address1  => int_B_1_address1,
     ce1       => int_B_1_ce1,
     we1       => int_B_1_be1,
     d1        => int_B_1_d1,
     q1        => int_B_1_q1);
-- int_B_2
int_B_2 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_B_2_address0,
     ce0       => int_B_2_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_2_q0,
     clk1      => ACLK,
     address1  => int_B_2_address1,
     ce1       => int_B_2_ce1,
     we1       => int_B_2_be1,
     d1        => int_B_2_d1,
     q1        => int_B_2_q1);
-- int_B_3
int_B_3 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_B_3_address0,
     ce0       => int_B_3_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_3_q0,
     clk1      => ACLK,
     address1  => int_B_3_address1,
     ce1       => int_B_3_ce1,
     we1       => int_B_3_be1,
     d1        => int_B_3_d1,
     q1        => int_B_3_q1);
-- int_B_4
int_B_4 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_B_4_address0,
     ce0       => int_B_4_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_4_q0,
     clk1      => ACLK,
     address1  => int_B_4_address1,
     ce1       => int_B_4_ce1,
     we1       => int_B_4_be1,
     d1        => int_B_4_d1,
     q1        => int_B_4_q1);
-- int_B_5
int_B_5 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_B_5_address0,
     ce0       => int_B_5_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_5_q0,
     clk1      => ACLK,
     address1  => int_B_5_address1,
     ce1       => int_B_5_ce1,
     we1       => int_B_5_be1,
     d1        => int_B_5_d1,
     q1        => int_B_5_q1);
-- int_B_6
int_B_6 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_B_6_address0,
     ce0       => int_B_6_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_6_q0,
     clk1      => ACLK,
     address1  => int_B_6_address1,
     ce1       => int_B_6_ce1,
     we1       => int_B_6_be1,
     d1        => int_B_6_d1,
     q1        => int_B_6_q1);
-- int_B_7
int_B_7 : eucDis_control_s_axi_ram
generic map (
     MEM_STYLE => "block",
     MEM_TYPE  => "2P",
     BYTES     => 4,
     DEPTH     => 128,
     AWIDTH    => log2(128))
port map (
     clk0      => ACLK,
     address0  => int_B_7_address0,
     ce0       => int_B_7_ce0,
     we0       => (others=>'0'),
     d0        => (others=>'0'),
     q0        => int_B_7_q0,
     clk1      => ACLK,
     address1  => int_B_7_address1,
     ce1       => int_B_7_ce1,
     we1       => int_B_7_be1,
     d1        => int_B_7_d1,
     q1        => int_B_7_q1);


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata and ar_hs = '0' else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, w_hs, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (w_hs = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) and (int_A_0_read = '0') and (int_A_1_read = '0') and (int_A_2_read = '0') and (int_A_3_read = '0') and (int_A_4_read = '0') and (int_A_5_read = '0') and (int_A_6_read = '0') and (int_A_7_read = '0') and (int_B_0_read = '0') and (int_B_1_read = '0') and (int_B_2_read = '0') and (int_B_3_read = '0') and (int_B_4_read = '0') and (int_B_5_read = '0') and (int_B_6_read = '0') and (int_B_7_read = '0') else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_C_DATA_0 =>
                        rdata_data <= RESIZE(int_C(31 downto 0), 32);
                    when ADDR_C_CTRL =>
                        rdata_data(0) <= int_C_ap_vld;
                    when others =>
                        NULL;
                    end case;
                elsif (int_A_0_read = '1') then
                    rdata_data <= int_A_0_q1;
                elsif (int_A_1_read = '1') then
                    rdata_data <= int_A_1_q1;
                elsif (int_A_2_read = '1') then
                    rdata_data <= int_A_2_q1;
                elsif (int_A_3_read = '1') then
                    rdata_data <= int_A_3_q1;
                elsif (int_A_4_read = '1') then
                    rdata_data <= int_A_4_q1;
                elsif (int_A_5_read = '1') then
                    rdata_data <= int_A_5_q1;
                elsif (int_A_6_read = '1') then
                    rdata_data <= int_A_6_q1;
                elsif (int_A_7_read = '1') then
                    rdata_data <= int_A_7_q1;
                elsif (int_B_0_read = '1') then
                    rdata_data <= int_B_0_q1;
                elsif (int_B_1_read = '1') then
                    rdata_data <= int_B_1_q1;
                elsif (int_B_2_read = '1') then
                    rdata_data <= int_B_2_q1;
                elsif (int_B_3_read = '1') then
                    rdata_data <= int_B_3_q1;
                elsif (int_B_4_read = '1') then
                    rdata_data <= int_B_4_q1;
                elsif (int_B_5_read = '1') then
                    rdata_data <= int_B_5_q1;
                elsif (int_B_6_read = '1') then
                    rdata_data <= int_B_6_q1;
                elsif (int_B_7_read = '1') then
                    rdata_data <= int_B_7_q1;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1));
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_C <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (C_ap_vld = '1') then
                    int_C <= UNSIGNED(C);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_C_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (C_ap_vld = '1') then
                    int_C_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_C_CTRL) then
                    int_C_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------
    -- A_0
    int_A_0_address0     <= UNSIGNED(A_0_address0);
    int_A_0_ce0          <= A_0_ce0;
    A_0_q0               <= STD_LOGIC_VECTOR(RESIZE(int_A_0_q0, 32));
    int_A_0_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_A_0_ce1          <= '1' when ar_hs = '1' or (int_A_0_write = '1' and WVALID  = '1') else '0';
    int_A_0_we1          <= '1' when int_A_0_write = '1' and w_hs = '1' else '0';
    int_A_0_be1          <= UNSIGNED(WSTRB) when int_A_0_we1 = '1' else (others=>'0');
    int_A_0_d1           <= UNSIGNED(WDATA);
    -- A_1
    int_A_1_address0     <= UNSIGNED(A_1_address0);
    int_A_1_ce0          <= A_1_ce0;
    A_1_q0               <= STD_LOGIC_VECTOR(RESIZE(int_A_1_q0, 32));
    int_A_1_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_A_1_ce1          <= '1' when ar_hs = '1' or (int_A_1_write = '1' and WVALID  = '1') else '0';
    int_A_1_we1          <= '1' when int_A_1_write = '1' and w_hs = '1' else '0';
    int_A_1_be1          <= UNSIGNED(WSTRB) when int_A_1_we1 = '1' else (others=>'0');
    int_A_1_d1           <= UNSIGNED(WDATA);
    -- A_2
    int_A_2_address0     <= UNSIGNED(A_2_address0);
    int_A_2_ce0          <= A_2_ce0;
    A_2_q0               <= STD_LOGIC_VECTOR(RESIZE(int_A_2_q0, 32));
    int_A_2_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_A_2_ce1          <= '1' when ar_hs = '1' or (int_A_2_write = '1' and WVALID  = '1') else '0';
    int_A_2_we1          <= '1' when int_A_2_write = '1' and w_hs = '1' else '0';
    int_A_2_be1          <= UNSIGNED(WSTRB) when int_A_2_we1 = '1' else (others=>'0');
    int_A_2_d1           <= UNSIGNED(WDATA);
    -- A_3
    int_A_3_address0     <= UNSIGNED(A_3_address0);
    int_A_3_ce0          <= A_3_ce0;
    A_3_q0               <= STD_LOGIC_VECTOR(RESIZE(int_A_3_q0, 32));
    int_A_3_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_A_3_ce1          <= '1' when ar_hs = '1' or (int_A_3_write = '1' and WVALID  = '1') else '0';
    int_A_3_we1          <= '1' when int_A_3_write = '1' and w_hs = '1' else '0';
    int_A_3_be1          <= UNSIGNED(WSTRB) when int_A_3_we1 = '1' else (others=>'0');
    int_A_3_d1           <= UNSIGNED(WDATA);
    -- A_4
    int_A_4_address0     <= UNSIGNED(A_4_address0);
    int_A_4_ce0          <= A_4_ce0;
    A_4_q0               <= STD_LOGIC_VECTOR(RESIZE(int_A_4_q0, 32));
    int_A_4_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_A_4_ce1          <= '1' when ar_hs = '1' or (int_A_4_write = '1' and WVALID  = '1') else '0';
    int_A_4_we1          <= '1' when int_A_4_write = '1' and w_hs = '1' else '0';
    int_A_4_be1          <= UNSIGNED(WSTRB) when int_A_4_we1 = '1' else (others=>'0');
    int_A_4_d1           <= UNSIGNED(WDATA);
    -- A_5
    int_A_5_address0     <= UNSIGNED(A_5_address0);
    int_A_5_ce0          <= A_5_ce0;
    A_5_q0               <= STD_LOGIC_VECTOR(RESIZE(int_A_5_q0, 32));
    int_A_5_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_A_5_ce1          <= '1' when ar_hs = '1' or (int_A_5_write = '1' and WVALID  = '1') else '0';
    int_A_5_we1          <= '1' when int_A_5_write = '1' and w_hs = '1' else '0';
    int_A_5_be1          <= UNSIGNED(WSTRB) when int_A_5_we1 = '1' else (others=>'0');
    int_A_5_d1           <= UNSIGNED(WDATA);
    -- A_6
    int_A_6_address0     <= UNSIGNED(A_6_address0);
    int_A_6_ce0          <= A_6_ce0;
    A_6_q0               <= STD_LOGIC_VECTOR(RESIZE(int_A_6_q0, 32));
    int_A_6_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_A_6_ce1          <= '1' when ar_hs = '1' or (int_A_6_write = '1' and WVALID  = '1') else '0';
    int_A_6_we1          <= '1' when int_A_6_write = '1' and w_hs = '1' else '0';
    int_A_6_be1          <= UNSIGNED(WSTRB) when int_A_6_we1 = '1' else (others=>'0');
    int_A_6_d1           <= UNSIGNED(WDATA);
    -- A_7
    int_A_7_address0     <= UNSIGNED(A_7_address0);
    int_A_7_ce0          <= A_7_ce0;
    A_7_q0               <= STD_LOGIC_VECTOR(RESIZE(int_A_7_q0, 32));
    int_A_7_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_A_7_ce1          <= '1' when ar_hs = '1' or (int_A_7_write = '1' and WVALID  = '1') else '0';
    int_A_7_we1          <= '1' when int_A_7_write = '1' and w_hs = '1' else '0';
    int_A_7_be1          <= UNSIGNED(WSTRB) when int_A_7_we1 = '1' else (others=>'0');
    int_A_7_d1           <= UNSIGNED(WDATA);
    -- B_0
    int_B_0_address0     <= UNSIGNED(B_0_address0);
    int_B_0_ce0          <= B_0_ce0;
    B_0_q0               <= STD_LOGIC_VECTOR(RESIZE(int_B_0_q0, 32));
    int_B_0_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_B_0_ce1          <= '1' when ar_hs = '1' or (int_B_0_write = '1' and WVALID  = '1') else '0';
    int_B_0_we1          <= '1' when int_B_0_write = '1' and w_hs = '1' else '0';
    int_B_0_be1          <= UNSIGNED(WSTRB) when int_B_0_we1 = '1' else (others=>'0');
    int_B_0_d1           <= UNSIGNED(WDATA);
    -- B_1
    int_B_1_address0     <= UNSIGNED(B_1_address0);
    int_B_1_ce0          <= B_1_ce0;
    B_1_q0               <= STD_LOGIC_VECTOR(RESIZE(int_B_1_q0, 32));
    int_B_1_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_B_1_ce1          <= '1' when ar_hs = '1' or (int_B_1_write = '1' and WVALID  = '1') else '0';
    int_B_1_we1          <= '1' when int_B_1_write = '1' and w_hs = '1' else '0';
    int_B_1_be1          <= UNSIGNED(WSTRB) when int_B_1_we1 = '1' else (others=>'0');
    int_B_1_d1           <= UNSIGNED(WDATA);
    -- B_2
    int_B_2_address0     <= UNSIGNED(B_2_address0);
    int_B_2_ce0          <= B_2_ce0;
    B_2_q0               <= STD_LOGIC_VECTOR(RESIZE(int_B_2_q0, 32));
    int_B_2_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_B_2_ce1          <= '1' when ar_hs = '1' or (int_B_2_write = '1' and WVALID  = '1') else '0';
    int_B_2_we1          <= '1' when int_B_2_write = '1' and w_hs = '1' else '0';
    int_B_2_be1          <= UNSIGNED(WSTRB) when int_B_2_we1 = '1' else (others=>'0');
    int_B_2_d1           <= UNSIGNED(WDATA);
    -- B_3
    int_B_3_address0     <= UNSIGNED(B_3_address0);
    int_B_3_ce0          <= B_3_ce0;
    B_3_q0               <= STD_LOGIC_VECTOR(RESIZE(int_B_3_q0, 32));
    int_B_3_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_B_3_ce1          <= '1' when ar_hs = '1' or (int_B_3_write = '1' and WVALID  = '1') else '0';
    int_B_3_we1          <= '1' when int_B_3_write = '1' and w_hs = '1' else '0';
    int_B_3_be1          <= UNSIGNED(WSTRB) when int_B_3_we1 = '1' else (others=>'0');
    int_B_3_d1           <= UNSIGNED(WDATA);
    -- B_4
    int_B_4_address0     <= UNSIGNED(B_4_address0);
    int_B_4_ce0          <= B_4_ce0;
    B_4_q0               <= STD_LOGIC_VECTOR(RESIZE(int_B_4_q0, 32));
    int_B_4_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_B_4_ce1          <= '1' when ar_hs = '1' or (int_B_4_write = '1' and WVALID  = '1') else '0';
    int_B_4_we1          <= '1' when int_B_4_write = '1' and w_hs = '1' else '0';
    int_B_4_be1          <= UNSIGNED(WSTRB) when int_B_4_we1 = '1' else (others=>'0');
    int_B_4_d1           <= UNSIGNED(WDATA);
    -- B_5
    int_B_5_address0     <= UNSIGNED(B_5_address0);
    int_B_5_ce0          <= B_5_ce0;
    B_5_q0               <= STD_LOGIC_VECTOR(RESIZE(int_B_5_q0, 32));
    int_B_5_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_B_5_ce1          <= '1' when ar_hs = '1' or (int_B_5_write = '1' and WVALID  = '1') else '0';
    int_B_5_we1          <= '1' when int_B_5_write = '1' and w_hs = '1' else '0';
    int_B_5_be1          <= UNSIGNED(WSTRB) when int_B_5_we1 = '1' else (others=>'0');
    int_B_5_d1           <= UNSIGNED(WDATA);
    -- B_6
    int_B_6_address0     <= UNSIGNED(B_6_address0);
    int_B_6_ce0          <= B_6_ce0;
    B_6_q0               <= STD_LOGIC_VECTOR(RESIZE(int_B_6_q0, 32));
    int_B_6_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_B_6_ce1          <= '1' when ar_hs = '1' or (int_B_6_write = '1' and WVALID  = '1') else '0';
    int_B_6_we1          <= '1' when int_B_6_write = '1' and w_hs = '1' else '0';
    int_B_6_be1          <= UNSIGNED(WSTRB) when int_B_6_we1 = '1' else (others=>'0');
    int_B_6_d1           <= UNSIGNED(WDATA);
    -- B_7
    int_B_7_address0     <= UNSIGNED(B_7_address0);
    int_B_7_ce0          <= B_7_ce0;
    B_7_q0               <= STD_LOGIC_VECTOR(RESIZE(int_B_7_q0, 32));
    int_B_7_address1     <= raddr(8 downto 2) when ar_hs = '1' else waddr(8 downto 2);
    int_B_7_ce1          <= '1' when ar_hs = '1' or (int_B_7_write = '1' and WVALID  = '1') else '0';
    int_B_7_we1          <= '1' when int_B_7_write = '1' and w_hs = '1' else '0';
    int_B_7_be1          <= UNSIGNED(WSTRB) when int_B_7_we1 = '1' else (others=>'0');
    int_B_7_d1           <= UNSIGNED(WDATA);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_0_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_0_BASE and raddr <= ADDR_A_0_HIGH) then
                    int_A_0_read <= '1';
                else
                    int_A_0_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_0_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_0_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_0_HIGH) then
                    int_A_0_write <= '1';
                elsif (w_hs = '1') then
                    int_A_0_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_1_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_1_BASE and raddr <= ADDR_A_1_HIGH) then
                    int_A_1_read <= '1';
                else
                    int_A_1_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_1_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_1_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_1_HIGH) then
                    int_A_1_write <= '1';
                elsif (w_hs = '1') then
                    int_A_1_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_2_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_2_BASE and raddr <= ADDR_A_2_HIGH) then
                    int_A_2_read <= '1';
                else
                    int_A_2_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_2_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_2_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_2_HIGH) then
                    int_A_2_write <= '1';
                elsif (w_hs = '1') then
                    int_A_2_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_3_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_3_BASE and raddr <= ADDR_A_3_HIGH) then
                    int_A_3_read <= '1';
                else
                    int_A_3_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_3_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_3_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_3_HIGH) then
                    int_A_3_write <= '1';
                elsif (w_hs = '1') then
                    int_A_3_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_4_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_4_BASE and raddr <= ADDR_A_4_HIGH) then
                    int_A_4_read <= '1';
                else
                    int_A_4_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_4_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_4_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_4_HIGH) then
                    int_A_4_write <= '1';
                elsif (w_hs = '1') then
                    int_A_4_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_5_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_5_BASE and raddr <= ADDR_A_5_HIGH) then
                    int_A_5_read <= '1';
                else
                    int_A_5_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_5_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_5_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_5_HIGH) then
                    int_A_5_write <= '1';
                elsif (w_hs = '1') then
                    int_A_5_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_6_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_6_BASE and raddr <= ADDR_A_6_HIGH) then
                    int_A_6_read <= '1';
                else
                    int_A_6_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_6_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_6_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_6_HIGH) then
                    int_A_6_write <= '1';
                elsif (w_hs = '1') then
                    int_A_6_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_7_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_A_7_BASE and raddr <= ADDR_A_7_HIGH) then
                    int_A_7_read <= '1';
                else
                    int_A_7_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_7_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_A_7_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_A_7_HIGH) then
                    int_A_7_write <= '1';
                elsif (w_hs = '1') then
                    int_A_7_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_0_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_0_BASE and raddr <= ADDR_B_0_HIGH) then
                    int_B_0_read <= '1';
                else
                    int_B_0_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_0_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_0_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_0_HIGH) then
                    int_B_0_write <= '1';
                elsif (w_hs = '1') then
                    int_B_0_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_1_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_1_BASE and raddr <= ADDR_B_1_HIGH) then
                    int_B_1_read <= '1';
                else
                    int_B_1_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_1_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_1_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_1_HIGH) then
                    int_B_1_write <= '1';
                elsif (w_hs = '1') then
                    int_B_1_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_2_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_2_BASE and raddr <= ADDR_B_2_HIGH) then
                    int_B_2_read <= '1';
                else
                    int_B_2_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_2_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_2_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_2_HIGH) then
                    int_B_2_write <= '1';
                elsif (w_hs = '1') then
                    int_B_2_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_3_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_3_BASE and raddr <= ADDR_B_3_HIGH) then
                    int_B_3_read <= '1';
                else
                    int_B_3_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_3_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_3_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_3_HIGH) then
                    int_B_3_write <= '1';
                elsif (w_hs = '1') then
                    int_B_3_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_4_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_4_BASE and raddr <= ADDR_B_4_HIGH) then
                    int_B_4_read <= '1';
                else
                    int_B_4_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_4_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_4_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_4_HIGH) then
                    int_B_4_write <= '1';
                elsif (w_hs = '1') then
                    int_B_4_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_5_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_5_BASE and raddr <= ADDR_B_5_HIGH) then
                    int_B_5_read <= '1';
                else
                    int_B_5_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_5_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_5_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_5_HIGH) then
                    int_B_5_write <= '1';
                elsif (w_hs = '1') then
                    int_B_5_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_6_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_6_BASE and raddr <= ADDR_B_6_HIGH) then
                    int_B_6_read <= '1';
                else
                    int_B_6_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_6_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_6_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_6_HIGH) then
                    int_B_6_write <= '1';
                elsif (w_hs = '1') then
                    int_B_6_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_7_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_B_7_BASE and raddr <= ADDR_B_7_HIGH) then
                    int_B_7_read <= '1';
                else
                    int_B_7_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_7_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_B_7_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_B_7_HIGH) then
                    int_B_7_write <= '1';
                elsif (w_hs = '1') then
                    int_B_7_write <= '0';
                end if;
            end if;
        end if;
    end process;


end architecture behave;

library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity eucDis_control_s_axi_ram is
    generic (
        MEM_STYLE : STRING :="auto";
        MEM_TYPE  : STRING :="S2P";
        BYTES   : INTEGER :=4;
        DEPTH   : INTEGER :=256;
        AWIDTH  : INTEGER :=8);
    port (
        clk0    : in  STD_LOGIC;
        address0: in  UNSIGNED(AWIDTH-1 downto 0);
        ce0     : in  STD_LOGIC;
        we0     : in  UNSIGNED(BYTES-1 downto 0);
        d0      : in  UNSIGNED(BYTES*8-1 downto 0);
        q0      : out UNSIGNED(BYTES*8-1 downto 0);
        clk1    : in  STD_LOGIC;
        address1: in  UNSIGNED(AWIDTH-1 downto 0);
        ce1     : in  STD_LOGIC;
        we1     : in  UNSIGNED(BYTES-1 downto 0);
        d1      : in  UNSIGNED(BYTES*8-1 downto 0);
        q1      : out UNSIGNED(BYTES*8-1 downto 0));

end entity eucDis_control_s_axi_ram;

architecture behave of eucDis_control_s_axi_ram is
    signal address0_tmp : UNSIGNED(AWIDTH-1 downto 0);
    signal address1_tmp : UNSIGNED(AWIDTH-1 downto 0);
    type RAM_T is array (0 to DEPTH - 1) of UNSIGNED(BYTES*8 - 1 downto 0);
    shared variable mem : RAM_T := (others => (others => '0'));
    attribute ram_style: string;
    attribute ram_style of mem: variable is MEM_STYLE;
    constant BYTE_WIDTH :INTEGER := 8;

    function port_type_gen( MEM_TYPE: STRING; MEM_STYLE: STRING; PORT_NAME: STRING) return STRING is
    begin
        if (MEM_TYPE = "S2P") and (PORT_NAME = "PORT0") then
            return "WO";
        elsif((MEM_TYPE = "S2P") and (PORT_NAME = "PORT1")) or ((MEM_TYPE = "2P") and (PORT_NAME = "PORT0")) then
            return "RO";
        elsif (MEM_STYLE = "hls_ultra") then
            return "RWNC";
        else
            return "RWRF";
        end if;
    end port_type_gen;
    constant PORT0 :STRING := port_type_gen(MEM_TYPE, MEM_STYLE, "PORT0");
    constant PORT1 :STRING := port_type_gen(MEM_TYPE, MEM_STYLE, "PORT1");

    function or_reduce( V: UNSIGNED) return std_logic is
    variable result: std_logic;
    begin
        for i in V'range loop
            if i = V'left then
                result := V(i);
            else
                result := result OR V(i);
            end if;
            exit when result = '1';
        end loop;
        return result;
    end or_reduce;

begin

    process (address0)
    begin
    address0_tmp <= address0;
    --synthesis translate_off
        if (address0 > DEPTH-1) then
            address0_tmp <= (others => '0');
        else
            address0_tmp <= address0;
        end if;
    --synthesis translate_on
    end process;

    process (address1)
    begin
    address1_tmp <= address1;
    --synthesis translate_off
        if (address1 > DEPTH-1) then
            address1_tmp <= (others => '0');
        else
            address1_tmp <= address1;
        end if;
    --synthesis translate_on
    end process;

    --read port 0
    read_p0_rf : if (PORT0 = "RO" or PORT0 = "RWRF") generate
        process (clk0) begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                    q0 <= mem(to_integer(address0_tmp));
                end if;
            end if;
        end process;
    end generate read_p0_rf;

    read_p0_nc : if (PORT0 = "RWNC") generate
        process (clk0) begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                    if (we0 = (we0'range => '0')) then
                        q0 <= mem(to_integer(address0_tmp));
                    end if;
                end if;
            end if;
        end process;
    end generate read_p0_nc;

    --read port 1
    read_p1_rf : if (PORT1 = "RO" or PORT1 = "RWRF") generate
        process (clk1) begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                    q1 <= mem(to_integer(address1_tmp));
                end if;
            end if;
        end process;
    end generate read_p1_rf;

    read_p1_nc : if (PORT1 = "RWNC") generate
        process (clk1) begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                    if (we1 = (we1'range => '0')) then
                        q1 <= mem(to_integer(address1_tmp));
                    end if;
                end if;
            end if;
        end process;
    end generate read_p1_nc;

    --write port 0
    write_p0 : if (PORT0 /= "RO") generate
        process (clk0)
        begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                for i in 0 to BYTES - 1 loop
                    if (we0(i) = '1') then
                        mem(to_integer(address0_tmp))((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH) := d0((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH);
                    end if;
                end loop;
                end if;
            end if;
        end process;
    end generate write_p0;

    --write port 1
    write_p1 : if (PORT1 /= "RO") generate
        process (clk1)
        begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                for i in 0 to BYTES - 1 loop
                    if (we1(i) = '1') then
                        mem(to_integer(address1_tmp))((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH) := d1((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH);
                    end if;
                end loop;
                end if;
            end if;
        end process;
    end generate write_p1;

end architecture behave;


