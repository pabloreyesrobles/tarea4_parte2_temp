-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity eucDis_sqrt_fixed_27_27_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (25 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (13 downto 0) );
end;


architecture behav of eucDis_sqrt_fixed_27_27_s is 
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv14_1000 : STD_LOGIC_VECTOR (13 downto 0) := "01000000000000";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv14_1 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000001";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal x_l_I_V_26_fu_310_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal x_l_I_V_26_reg_1209 : STD_LOGIC_VECTOR (29 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal res_I_V_25_fu_318_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_25_reg_1215 : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_ln489_2_fu_358_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln489_2_reg_1221 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln258_1_fu_364_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal sub_ln258_1_reg_1227 : STD_LOGIC_VECTOR (5 downto 0);
    signal x_l_I_V_29_fu_549_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal x_l_I_V_29_reg_1232 : STD_LOGIC_VECTOR (29 downto 0);
    signal res_I_V_28_fu_557_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_28_reg_1238 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_12_reg_1244 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_Result_13_reg_1249 : STD_LOGIC_VECTOR (8 downto 0);
    signal x_l_I_V_30_fu_706_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal x_l_I_V_30_reg_1255 : STD_LOGIC_VECTOR (29 downto 0);
    signal res_I_V_fu_714_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_reg_1261 : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_ln489_7_fu_754_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln489_7_reg_1267 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln258_6_fu_760_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal sub_ln258_6_reg_1273 : STD_LOGIC_VECTOR (10 downto 0);
    signal x_l_I_V_32_fu_863_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal x_l_I_V_32_reg_1278 : STD_LOGIC_VECTOR (29 downto 0);
    signal res_I_V_31_fu_871_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_31_reg_1284 : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_ln489_9_fu_911_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln489_9_reg_1290 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln258_8_fu_917_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal sub_ln258_8_reg_1296 : STD_LOGIC_VECTOR (12 downto 0);
    signal x_l_I_V_34_fu_1020_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal x_l_I_V_34_reg_1301 : STD_LOGIC_VECTOR (29 downto 0);
    signal res_I_V_33_fu_1028_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_33_reg_1307 : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_ln489_11_fu_1068_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln489_11_reg_1313 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln258_10_fu_1074_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal sub_ln258_10_reg_1319 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_fu_188_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln489_12_fu_198_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln258_fu_208_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln712_fu_184_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal sext_ln323_fu_214_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln489_fu_202_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_38_fu_218_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal select_ln489_fu_246_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal x_l_I_V_25_fu_230_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_2_fu_254_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_Result_5_fu_262_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln489_fu_272_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal sub_ln258_fu_282_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln239_fu_238_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_ln489_1_fu_276_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_39_fu_288_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_40_fu_300_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_8_fu_326_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_3_fu_336_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_Result_9_fu_344_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln489_1_fu_354_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_Result_41_fu_370_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_42_fu_380_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_26_fu_395_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_s_fu_401_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal x_l_I_V_27_fu_389_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_4_fu_411_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_Result_1_fu_419_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln489_2_fu_429_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal sub_ln258_2_fu_439_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln489_3_fu_433_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_43_fu_445_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_44_fu_457_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_27_fu_475_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_6_fu_483_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal x_l_I_V_28_fu_467_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_5_fu_493_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_Result_7_fu_501_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln489_3_fu_511_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sub_ln258_3_fu_521_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln489_4_fu_515_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_45_fu_527_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_46_fu_539_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_6_fu_585_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln489_4_fu_592_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sub_ln258_4_fu_601_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln489_5_fu_596_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_47_fu_606_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_48_fu_617_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_29_fu_633_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_15_fu_640_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal x_l_I_V_fu_626_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_7_fu_650_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_Result_16_fu_658_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln489_5_fu_668_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal sub_ln258_5_fu_678_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln489_6_fu_672_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_49_fu_684_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_50_fu_696_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_18_fu_722_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_8_fu_732_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_Result_19_fu_740_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln489_6_fu_750_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_Result_51_fu_766_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_52_fu_776_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_30_fu_791_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_21_fu_797_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal x_l_I_V_31_fu_785_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_9_fu_807_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_Result_22_fu_815_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln489_7_fu_825_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln258_7_fu_835_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal icmp_ln489_8_fu_829_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_53_fu_841_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_54_fu_853_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_24_fu_879_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_s_fu_889_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Result_25_fu_897_p4 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln489_8_fu_907_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_Result_55_fu_923_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_56_fu_933_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_32_fu_948_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_27_fu_954_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal x_l_I_V_33_fu_942_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_1_fu_964_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_Result_28_fu_972_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln489_9_fu_982_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal sub_ln258_9_fu_992_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_ln489_10_fu_986_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_57_fu_998_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_58_fu_1010_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_30_fu_1036_p4 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_10_fu_1046_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_Result_31_fu_1054_p4 : STD_LOGIC_VECTOR (14 downto 0);
    signal zext_ln489_10_fu_1064_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_59_fu_1080_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_60_fu_1090_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_34_fu_1105_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal x_l_I_V_35_fu_1099_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_11_fu_1111_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln640_fu_1119_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln489_11_fu_1123_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sub_ln258_11_fu_1133_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln489_12_fu_1127_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_61_fu_1139_p5 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_62_fu_1151_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal res_I_V_35_fu_1169_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal mul_I_V_fu_1177_p3 : STD_LOGIC_VECTOR (27 downto 0);
    signal x_l_I_V_36_fu_1161_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal zext_ln717_fu_1185_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_Result_s_53_fu_1189_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_I_V_23_fu_1195_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal x_int_reg : STD_LOGIC_VECTOR (25 downto 0);
    signal ap_ce_reg : STD_LOGIC;


begin




    x_int_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            x_int_reg <= x;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                icmp_ln489_11_reg_1313 <= icmp_ln489_11_fu_1068_p2;
                icmp_ln489_2_reg_1221 <= icmp_ln489_2_fu_358_p2;
                icmp_ln489_7_reg_1267 <= icmp_ln489_7_fu_754_p2;
                icmp_ln489_9_reg_1290 <= icmp_ln489_9_fu_911_p2;
                p_Result_12_reg_1244 <= res_I_V_28_fu_557_p3(13 downto 7);
                p_Result_13_reg_1249 <= x_l_I_V_29_fu_549_p3(22 downto 14);
                res_I_V_25_reg_1215 <= res_I_V_25_fu_318_p3;
                res_I_V_28_reg_1238 <= res_I_V_28_fu_557_p3;
                res_I_V_31_reg_1284 <= res_I_V_31_fu_871_p3;
                res_I_V_33_reg_1307 <= res_I_V_33_fu_1028_p3;
                res_I_V_reg_1261 <= res_I_V_fu_714_p3;
                sub_ln258_10_reg_1319 <= sub_ln258_10_fu_1074_p2;
                sub_ln258_1_reg_1227 <= sub_ln258_1_fu_364_p2;
                sub_ln258_6_reg_1273 <= sub_ln258_6_fu_760_p2;
                sub_ln258_8_reg_1296 <= sub_ln258_8_fu_917_p2;
                x_l_I_V_26_reg_1209 <= x_l_I_V_26_fu_310_p3;
                x_l_I_V_29_reg_1232 <= x_l_I_V_29_fu_549_p3;
                x_l_I_V_30_reg_1255 <= x_l_I_V_30_fu_706_p3;
                x_l_I_V_32_reg_1278 <= x_l_I_V_32_fu_863_p3;
                x_l_I_V_34_reg_1301 <= x_l_I_V_34_fu_1020_p3;
            end if;
        end if;
    end process;
    add_ln258_fu_208_p2 <= std_logic_vector(unsigned(zext_ln489_12_fu_198_p1) + unsigned(ap_const_lv3_7));
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
    ap_return <= 
        res_I_V_23_fu_1195_p2 when (p_Result_s_53_fu_1189_p2(0) = '1') else 
        res_I_V_35_fu_1169_p3;
    icmp_ln489_10_fu_986_p2 <= "1" when (unsigned(p_Result_28_fu_972_p4) < unsigned(zext_ln489_9_fu_982_p1)) else "0";
    icmp_ln489_11_fu_1068_p2 <= "1" when (unsigned(p_Result_31_fu_1054_p4) < unsigned(zext_ln489_10_fu_1064_p1)) else "0";
    icmp_ln489_12_fu_1127_p2 <= "1" when (unsigned(trunc_ln640_fu_1119_p1) < unsigned(zext_ln489_11_fu_1123_p1)) else "0";
    icmp_ln489_1_fu_276_p2 <= "1" when (unsigned(p_Result_5_fu_262_p4) < unsigned(zext_ln489_fu_272_p1)) else "0";
    icmp_ln489_2_fu_358_p2 <= "1" when (unsigned(p_Result_9_fu_344_p4) < unsigned(zext_ln489_1_fu_354_p1)) else "0";
    icmp_ln489_3_fu_433_p2 <= "1" when (unsigned(p_Result_1_fu_419_p4) < unsigned(zext_ln489_2_fu_429_p1)) else "0";
    icmp_ln489_4_fu_515_p2 <= "1" when (unsigned(p_Result_7_fu_501_p4) < unsigned(zext_ln489_3_fu_511_p1)) else "0";
    icmp_ln489_5_fu_596_p2 <= "1" when (unsigned(p_Result_13_reg_1249) < unsigned(zext_ln489_4_fu_592_p1)) else "0";
    icmp_ln489_6_fu_672_p2 <= "1" when (unsigned(p_Result_16_fu_658_p4) < unsigned(zext_ln489_5_fu_668_p1)) else "0";
    icmp_ln489_7_fu_754_p2 <= "1" when (unsigned(p_Result_19_fu_740_p4) < unsigned(zext_ln489_6_fu_750_p1)) else "0";
    icmp_ln489_8_fu_829_p2 <= "1" when (unsigned(p_Result_22_fu_815_p4) < unsigned(zext_ln489_7_fu_825_p1)) else "0";
    icmp_ln489_9_fu_911_p2 <= "1" when (unsigned(p_Result_25_fu_897_p4) < unsigned(zext_ln489_8_fu_907_p1)) else "0";
    icmp_ln489_fu_202_p2 <= "1" when (tmp_fu_188_p4 = ap_const_lv2_0) else "0";
    mul_I_V_fu_1177_p3 <= (ap_const_lv14_0 & res_I_V_35_fu_1169_p3);
    p_Result_15_fu_640_p4 <= res_I_V_29_fu_633_p3(13 downto 6);
    p_Result_16_fu_658_p4 <= x_l_I_V_fu_626_p3(21 downto 12);
    p_Result_18_fu_722_p4 <= res_I_V_fu_714_p3(13 downto 5);
    p_Result_19_fu_740_p4 <= x_l_I_V_30_fu_706_p3(20 downto 10);
    p_Result_1_fu_419_p4 <= x_l_I_V_27_fu_389_p3(24 downto 18);
    p_Result_21_fu_797_p4 <= res_I_V_30_fu_791_p3(13 downto 4);
    p_Result_22_fu_815_p4 <= x_l_I_V_31_fu_785_p3(19 downto 8);
    p_Result_24_fu_879_p4 <= res_I_V_31_fu_871_p3(13 downto 3);
    p_Result_25_fu_897_p4 <= x_l_I_V_32_fu_863_p3(18 downto 6);
    p_Result_27_fu_954_p4 <= res_I_V_32_fu_948_p3(13 downto 2);
    p_Result_28_fu_972_p4 <= x_l_I_V_33_fu_942_p3(17 downto 4);
    p_Result_30_fu_1036_p4 <= res_I_V_33_fu_1028_p3(13 downto 1);
    p_Result_31_fu_1054_p4 <= x_l_I_V_34_fu_1020_p3(16 downto 2);
    p_Result_38_fu_218_p5 <= (zext_ln712_fu_184_p1(29 downto 28) & sext_ln323_fu_214_p1 & zext_ln712_fu_184_p1(23 downto 0));
    p_Result_39_fu_288_p5 <= (x_l_I_V_25_fu_230_p3(29 downto 27) & sub_ln258_fu_282_p2 & x_l_I_V_25_fu_230_p3(21 downto 0));
    
    p_Result_40_fu_300_p4_proc : process(select_ln239_fu_238_p3)
    begin
        p_Result_40_fu_300_p4 <= select_ln239_fu_238_p3;
        p_Result_40_fu_300_p4(11) <= ap_const_lv1_1(0);
    end process;

    p_Result_41_fu_370_p5 <= (x_l_I_V_26_reg_1209(29 downto 26) & sub_ln258_1_reg_1227 & x_l_I_V_26_reg_1209(19 downto 0));
    
    p_Result_42_fu_380_p4_proc : process(res_I_V_25_reg_1215)
    begin
        p_Result_42_fu_380_p4 <= res_I_V_25_reg_1215;
        p_Result_42_fu_380_p4(10) <= ap_const_lv1_1(0);
    end process;

    p_Result_43_fu_445_p5 <= (x_l_I_V_27_fu_389_p3(29 downto 25) & sub_ln258_2_fu_439_p2 & x_l_I_V_27_fu_389_p3(17 downto 0));
    
    p_Result_44_fu_457_p4_proc : process(res_I_V_26_fu_395_p3)
    begin
        p_Result_44_fu_457_p4 <= res_I_V_26_fu_395_p3;
        p_Result_44_fu_457_p4(9) <= ap_const_lv1_1(0);
    end process;

    p_Result_45_fu_527_p5 <= (x_l_I_V_28_fu_467_p3(29 downto 24) & sub_ln258_3_fu_521_p2 & x_l_I_V_28_fu_467_p3(15 downto 0));
    
    p_Result_46_fu_539_p4_proc : process(res_I_V_27_fu_475_p3)
    begin
        p_Result_46_fu_539_p4 <= res_I_V_27_fu_475_p3;
        p_Result_46_fu_539_p4(8) <= ap_const_lv1_1(0);
    end process;

    p_Result_47_fu_606_p5 <= (x_l_I_V_29_reg_1232(29 downto 23) & sub_ln258_4_fu_601_p2 & x_l_I_V_29_reg_1232(13 downto 0));
    
    p_Result_48_fu_617_p4_proc : process(res_I_V_28_reg_1238)
    begin
        p_Result_48_fu_617_p4 <= res_I_V_28_reg_1238;
        p_Result_48_fu_617_p4(7) <= ap_const_lv1_1(0);
    end process;

    p_Result_49_fu_684_p5 <= (x_l_I_V_fu_626_p3(29 downto 22) & sub_ln258_5_fu_678_p2 & x_l_I_V_fu_626_p3(11 downto 0));
    
    p_Result_50_fu_696_p4_proc : process(res_I_V_29_fu_633_p3)
    begin
        p_Result_50_fu_696_p4 <= res_I_V_29_fu_633_p3;
        p_Result_50_fu_696_p4(6) <= ap_const_lv1_1(0);
    end process;

    p_Result_51_fu_766_p5 <= (x_l_I_V_30_reg_1255(29 downto 21) & sub_ln258_6_reg_1273 & x_l_I_V_30_reg_1255(9 downto 0));
    
    p_Result_52_fu_776_p4_proc : process(res_I_V_reg_1261)
    begin
        p_Result_52_fu_776_p4 <= res_I_V_reg_1261;
        p_Result_52_fu_776_p4(5) <= ap_const_lv1_1(0);
    end process;

    p_Result_53_fu_841_p5 <= (x_l_I_V_31_fu_785_p3(29 downto 20) & sub_ln258_7_fu_835_p2 & x_l_I_V_31_fu_785_p3(7 downto 0));
    
    p_Result_54_fu_853_p4_proc : process(res_I_V_30_fu_791_p3)
    begin
        p_Result_54_fu_853_p4 <= res_I_V_30_fu_791_p3;
        p_Result_54_fu_853_p4(4) <= ap_const_lv1_1(0);
    end process;

    p_Result_55_fu_923_p5 <= (x_l_I_V_32_reg_1278(29 downto 19) & sub_ln258_8_reg_1296 & x_l_I_V_32_reg_1278(5 downto 0));
    
    p_Result_56_fu_933_p4_proc : process(res_I_V_31_reg_1284)
    begin
        p_Result_56_fu_933_p4 <= res_I_V_31_reg_1284;
        p_Result_56_fu_933_p4(3) <= ap_const_lv1_1(0);
    end process;

    p_Result_57_fu_998_p5 <= (x_l_I_V_33_fu_942_p3(29 downto 18) & sub_ln258_9_fu_992_p2 & x_l_I_V_33_fu_942_p3(3 downto 0));
    
    p_Result_58_fu_1010_p4_proc : process(res_I_V_32_fu_948_p3)
    begin
        p_Result_58_fu_1010_p4 <= res_I_V_32_fu_948_p3;
        p_Result_58_fu_1010_p4(2) <= ap_const_lv1_1(0);
    end process;

    p_Result_59_fu_1080_p5 <= (x_l_I_V_34_reg_1301(29 downto 17) & sub_ln258_10_reg_1319 & x_l_I_V_34_reg_1301(1 downto 0));
    p_Result_5_fu_262_p4 <= x_l_I_V_25_fu_230_p3(26 downto 22);
    
    p_Result_60_fu_1090_p4_proc : process(res_I_V_33_reg_1307)
    begin
        p_Result_60_fu_1090_p4 <= res_I_V_33_reg_1307;
        p_Result_60_fu_1090_p4(1) <= ap_const_lv1_1(0);
    end process;

    p_Result_61_fu_1139_p5 <= (x_l_I_V_35_fu_1099_p3(29 downto 16) & sub_ln258_11_fu_1133_p2);
    
    p_Result_62_fu_1151_p4_proc : process(res_I_V_34_fu_1105_p3)
    begin
        p_Result_62_fu_1151_p4 <= res_I_V_34_fu_1105_p3;
        p_Result_62_fu_1151_p4(0) <= ap_const_lv1_1(0);
    end process;

    p_Result_6_fu_483_p4 <= res_I_V_27_fu_475_p3(13 downto 8);
    p_Result_7_fu_501_p4 <= x_l_I_V_28_fu_467_p3(23 downto 16);
    p_Result_8_fu_326_p4 <= res_I_V_25_fu_318_p3(13 downto 10);
    p_Result_9_fu_344_p4 <= x_l_I_V_26_fu_310_p3(25 downto 20);
    p_Result_s_53_fu_1189_p2 <= "1" when (unsigned(x_l_I_V_36_fu_1161_p3) > unsigned(zext_ln717_fu_1185_p1)) else "0";
    p_Result_s_fu_401_p4 <= res_I_V_26_fu_395_p3(13 downto 9);
    res_I_V_23_fu_1195_p2 <= std_logic_vector(unsigned(res_I_V_35_fu_1169_p3) + unsigned(ap_const_lv14_1));
    res_I_V_25_fu_318_p3 <= 
        select_ln239_fu_238_p3 when (icmp_ln489_1_fu_276_p2(0) = '1') else 
        p_Result_40_fu_300_p4;
    res_I_V_26_fu_395_p3 <= 
        res_I_V_25_reg_1215 when (icmp_ln489_2_reg_1221(0) = '1') else 
        p_Result_42_fu_380_p4;
    res_I_V_27_fu_475_p3 <= 
        res_I_V_26_fu_395_p3 when (icmp_ln489_3_fu_433_p2(0) = '1') else 
        p_Result_44_fu_457_p4;
    res_I_V_28_fu_557_p3 <= 
        res_I_V_27_fu_475_p3 when (icmp_ln489_4_fu_515_p2(0) = '1') else 
        p_Result_46_fu_539_p4;
    res_I_V_29_fu_633_p3 <= 
        res_I_V_28_reg_1238 when (icmp_ln489_5_fu_596_p2(0) = '1') else 
        p_Result_48_fu_617_p4;
    res_I_V_30_fu_791_p3 <= 
        res_I_V_reg_1261 when (icmp_ln489_7_reg_1267(0) = '1') else 
        p_Result_52_fu_776_p4;
    res_I_V_31_fu_871_p3 <= 
        res_I_V_30_fu_791_p3 when (icmp_ln489_8_fu_829_p2(0) = '1') else 
        p_Result_54_fu_853_p4;
    res_I_V_32_fu_948_p3 <= 
        res_I_V_31_reg_1284 when (icmp_ln489_9_reg_1290(0) = '1') else 
        p_Result_56_fu_933_p4;
    res_I_V_33_fu_1028_p3 <= 
        res_I_V_32_fu_948_p3 when (icmp_ln489_10_fu_986_p2(0) = '1') else 
        p_Result_58_fu_1010_p4;
    res_I_V_34_fu_1105_p3 <= 
        res_I_V_33_reg_1307 when (icmp_ln489_11_reg_1313(0) = '1') else 
        p_Result_60_fu_1090_p4;
    res_I_V_35_fu_1169_p3 <= 
        res_I_V_34_fu_1105_p3 when (icmp_ln489_12_fu_1127_p2(0) = '1') else 
        p_Result_62_fu_1151_p4;
    res_I_V_fu_714_p3 <= 
        res_I_V_29_fu_633_p3 when (icmp_ln489_6_fu_672_p2(0) = '1') else 
        p_Result_50_fu_696_p4;
    select_ln239_fu_238_p3 <= 
        ap_const_lv14_0 when (icmp_ln489_fu_202_p2(0) = '1') else 
        ap_const_lv14_1000;
    select_ln489_fu_246_p3 <= 
        ap_const_lv2_0 when (icmp_ln489_fu_202_p2(0) = '1') else 
        ap_const_lv2_2;
        sext_ln323_fu_214_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln258_fu_208_p2),4));

    sub_ln258_10_fu_1074_p2 <= std_logic_vector(unsigned(p_Result_31_fu_1054_p4) - unsigned(zext_ln489_10_fu_1064_p1));
    sub_ln258_11_fu_1133_p2 <= std_logic_vector(unsigned(trunc_ln640_fu_1119_p1) - unsigned(zext_ln489_11_fu_1123_p1));
    sub_ln258_1_fu_364_p2 <= std_logic_vector(unsigned(p_Result_9_fu_344_p4) - unsigned(zext_ln489_1_fu_354_p1));
    sub_ln258_2_fu_439_p2 <= std_logic_vector(unsigned(p_Result_1_fu_419_p4) - unsigned(zext_ln489_2_fu_429_p1));
    sub_ln258_3_fu_521_p2 <= std_logic_vector(unsigned(p_Result_7_fu_501_p4) - unsigned(zext_ln489_3_fu_511_p1));
    sub_ln258_4_fu_601_p2 <= std_logic_vector(unsigned(p_Result_13_reg_1249) - unsigned(zext_ln489_4_fu_592_p1));
    sub_ln258_5_fu_678_p2 <= std_logic_vector(unsigned(p_Result_16_fu_658_p4) - unsigned(zext_ln489_5_fu_668_p1));
    sub_ln258_6_fu_760_p2 <= std_logic_vector(unsigned(p_Result_19_fu_740_p4) - unsigned(zext_ln489_6_fu_750_p1));
    sub_ln258_7_fu_835_p2 <= std_logic_vector(unsigned(p_Result_22_fu_815_p4) - unsigned(zext_ln489_7_fu_825_p1));
    sub_ln258_8_fu_917_p2 <= std_logic_vector(unsigned(p_Result_25_fu_897_p4) - unsigned(zext_ln489_8_fu_907_p1));
    sub_ln258_9_fu_992_p2 <= std_logic_vector(unsigned(p_Result_28_fu_972_p4) - unsigned(zext_ln489_9_fu_982_p1));
    sub_ln258_fu_282_p2 <= std_logic_vector(unsigned(p_Result_5_fu_262_p4) - unsigned(zext_ln489_fu_272_p1));
    tmp_10_fu_1046_p3 <= (p_Result_30_fu_1036_p4 & ap_const_lv1_1);
    tmp_11_fu_1111_p3 <= (res_I_V_34_fu_1105_p3 & ap_const_lv1_1);
    tmp_1_fu_964_p3 <= (p_Result_27_fu_954_p4 & ap_const_lv1_1);
    tmp_2_fu_254_p3 <= (select_ln489_fu_246_p3 & ap_const_lv1_1);
    tmp_3_fu_336_p3 <= (p_Result_8_fu_326_p4 & ap_const_lv1_1);
    tmp_4_fu_411_p3 <= (p_Result_s_fu_401_p4 & ap_const_lv1_1);
    tmp_5_fu_493_p3 <= (p_Result_6_fu_483_p4 & ap_const_lv1_1);
    tmp_6_fu_585_p3 <= (p_Result_12_reg_1244 & ap_const_lv1_1);
    tmp_7_fu_650_p3 <= (p_Result_15_fu_640_p4 & ap_const_lv1_1);
    tmp_8_fu_732_p3 <= (p_Result_18_fu_722_p4 & ap_const_lv1_1);
    tmp_9_fu_807_p3 <= (p_Result_21_fu_797_p4 & ap_const_lv1_1);
    tmp_fu_188_p4 <= x_int_reg(25 downto 24);
    tmp_s_fu_889_p3 <= (p_Result_24_fu_879_p4 & ap_const_lv1_1);
    trunc_ln640_fu_1119_p1 <= x_l_I_V_35_fu_1099_p3(16 - 1 downto 0);
    x_l_I_V_25_fu_230_p3 <= 
        zext_ln712_fu_184_p1 when (icmp_ln489_fu_202_p2(0) = '1') else 
        p_Result_38_fu_218_p5;
    x_l_I_V_26_fu_310_p3 <= 
        x_l_I_V_25_fu_230_p3 when (icmp_ln489_1_fu_276_p2(0) = '1') else 
        p_Result_39_fu_288_p5;
    x_l_I_V_27_fu_389_p3 <= 
        x_l_I_V_26_reg_1209 when (icmp_ln489_2_reg_1221(0) = '1') else 
        p_Result_41_fu_370_p5;
    x_l_I_V_28_fu_467_p3 <= 
        x_l_I_V_27_fu_389_p3 when (icmp_ln489_3_fu_433_p2(0) = '1') else 
        p_Result_43_fu_445_p5;
    x_l_I_V_29_fu_549_p3 <= 
        x_l_I_V_28_fu_467_p3 when (icmp_ln489_4_fu_515_p2(0) = '1') else 
        p_Result_45_fu_527_p5;
    x_l_I_V_30_fu_706_p3 <= 
        x_l_I_V_fu_626_p3 when (icmp_ln489_6_fu_672_p2(0) = '1') else 
        p_Result_49_fu_684_p5;
    x_l_I_V_31_fu_785_p3 <= 
        x_l_I_V_30_reg_1255 when (icmp_ln489_7_reg_1267(0) = '1') else 
        p_Result_51_fu_766_p5;
    x_l_I_V_32_fu_863_p3 <= 
        x_l_I_V_31_fu_785_p3 when (icmp_ln489_8_fu_829_p2(0) = '1') else 
        p_Result_53_fu_841_p5;
    x_l_I_V_33_fu_942_p3 <= 
        x_l_I_V_32_reg_1278 when (icmp_ln489_9_reg_1290(0) = '1') else 
        p_Result_55_fu_923_p5;
    x_l_I_V_34_fu_1020_p3 <= 
        x_l_I_V_33_fu_942_p3 when (icmp_ln489_10_fu_986_p2(0) = '1') else 
        p_Result_57_fu_998_p5;
    x_l_I_V_35_fu_1099_p3 <= 
        x_l_I_V_34_reg_1301 when (icmp_ln489_11_reg_1313(0) = '1') else 
        p_Result_59_fu_1080_p5;
    x_l_I_V_36_fu_1161_p3 <= 
        x_l_I_V_35_fu_1099_p3 when (icmp_ln489_12_fu_1127_p2(0) = '1') else 
        p_Result_61_fu_1139_p5;
    x_l_I_V_fu_626_p3 <= 
        x_l_I_V_29_reg_1232 when (icmp_ln489_5_fu_596_p2(0) = '1') else 
        p_Result_47_fu_606_p5;
    zext_ln489_10_fu_1064_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_10_fu_1046_p3),15));
    zext_ln489_11_fu_1123_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_11_fu_1111_p3),16));
    zext_ln489_12_fu_198_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_188_p4),3));
    zext_ln489_1_fu_354_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_336_p3),6));
    zext_ln489_2_fu_429_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_411_p3),7));
    zext_ln489_3_fu_511_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_493_p3),8));
    zext_ln489_4_fu_592_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_6_fu_585_p3),9));
    zext_ln489_5_fu_668_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_7_fu_650_p3),10));
    zext_ln489_6_fu_750_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_8_fu_732_p3),11));
    zext_ln489_7_fu_825_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_9_fu_807_p3),12));
    zext_ln489_8_fu_907_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_889_p3),13));
    zext_ln489_9_fu_982_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_964_p3),14));
    zext_ln489_fu_272_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_254_p3),5));
    zext_ln712_fu_184_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x_int_reg),30));
    zext_ln717_fu_1185_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mul_I_V_fu_1177_p3),30));
end behav;
