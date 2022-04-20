// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module eucDis_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 12,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire [31:0]                   A_0,
    output wire [31:0]                   A_1,
    output wire [31:0]                   A_2,
    output wire [31:0]                   A_3,
    output wire [31:0]                   A_4,
    output wire [31:0]                   A_5,
    output wire [31:0]                   A_6,
    output wire [31:0]                   A_7,
    output wire [31:0]                   A_8,
    output wire [31:0]                   A_9,
    output wire [31:0]                   A_10,
    output wire [31:0]                   A_11,
    output wire [31:0]                   A_12,
    output wire [31:0]                   A_13,
    output wire [31:0]                   A_14,
    output wire [31:0]                   A_15,
    output wire [31:0]                   A_16,
    output wire [31:0]                   A_17,
    output wire [31:0]                   A_18,
    output wire [31:0]                   A_19,
    output wire [31:0]                   A_20,
    output wire [31:0]                   A_21,
    output wire [31:0]                   A_22,
    output wire [31:0]                   A_23,
    output wire [31:0]                   A_24,
    output wire [31:0]                   A_25,
    output wire [31:0]                   A_26,
    output wire [31:0]                   A_27,
    output wire [31:0]                   A_28,
    output wire [31:0]                   A_29,
    output wire [31:0]                   A_30,
    output wire [31:0]                   A_31,
    output wire [31:0]                   A_32,
    output wire [31:0]                   A_33,
    output wire [31:0]                   A_34,
    output wire [31:0]                   A_35,
    output wire [31:0]                   A_36,
    output wire [31:0]                   A_37,
    output wire [31:0]                   A_38,
    output wire [31:0]                   A_39,
    output wire [31:0]                   A_40,
    output wire [31:0]                   A_41,
    output wire [31:0]                   A_42,
    output wire [31:0]                   A_43,
    output wire [31:0]                   A_44,
    output wire [31:0]                   A_45,
    output wire [31:0]                   A_46,
    output wire [31:0]                   A_47,
    output wire [31:0]                   A_48,
    output wire [31:0]                   A_49,
    output wire [31:0]                   A_50,
    output wire [31:0]                   A_51,
    output wire [31:0]                   A_52,
    output wire [31:0]                   A_53,
    output wire [31:0]                   A_54,
    output wire [31:0]                   A_55,
    output wire [31:0]                   A_56,
    output wire [31:0]                   A_57,
    output wire [31:0]                   A_58,
    output wire [31:0]                   A_59,
    output wire [31:0]                   A_60,
    output wire [31:0]                   A_61,
    output wire [31:0]                   A_62,
    output wire [31:0]                   A_63,
    output wire [31:0]                   A_64,
    output wire [31:0]                   A_65,
    output wire [31:0]                   A_66,
    output wire [31:0]                   A_67,
    output wire [31:0]                   A_68,
    output wire [31:0]                   A_69,
    output wire [31:0]                   A_70,
    output wire [31:0]                   A_71,
    output wire [31:0]                   A_72,
    output wire [31:0]                   A_73,
    output wire [31:0]                   A_74,
    output wire [31:0]                   A_75,
    output wire [31:0]                   A_76,
    output wire [31:0]                   A_77,
    output wire [31:0]                   A_78,
    output wire [31:0]                   A_79,
    output wire [31:0]                   A_80,
    output wire [31:0]                   A_81,
    output wire [31:0]                   A_82,
    output wire [31:0]                   A_83,
    output wire [31:0]                   A_84,
    output wire [31:0]                   A_85,
    output wire [31:0]                   A_86,
    output wire [31:0]                   A_87,
    output wire [31:0]                   A_88,
    output wire [31:0]                   A_89,
    output wire [31:0]                   A_90,
    output wire [31:0]                   A_91,
    output wire [31:0]                   A_92,
    output wire [31:0]                   A_93,
    output wire [31:0]                   A_94,
    output wire [31:0]                   A_95,
    output wire [31:0]                   A_96,
    output wire [31:0]                   A_97,
    output wire [31:0]                   A_98,
    output wire [31:0]                   A_99,
    output wire [31:0]                   A_100,
    output wire [31:0]                   A_101,
    output wire [31:0]                   A_102,
    output wire [31:0]                   A_103,
    output wire [31:0]                   A_104,
    output wire [31:0]                   A_105,
    output wire [31:0]                   A_106,
    output wire [31:0]                   A_107,
    output wire [31:0]                   A_108,
    output wire [31:0]                   A_109,
    output wire [31:0]                   A_110,
    output wire [31:0]                   A_111,
    output wire [31:0]                   A_112,
    output wire [31:0]                   A_113,
    output wire [31:0]                   A_114,
    output wire [31:0]                   A_115,
    output wire [31:0]                   A_116,
    output wire [31:0]                   A_117,
    output wire [31:0]                   A_118,
    output wire [31:0]                   A_119,
    output wire [31:0]                   A_120,
    output wire [31:0]                   A_121,
    output wire [31:0]                   A_122,
    output wire [31:0]                   A_123,
    output wire [31:0]                   A_124,
    output wire [31:0]                   A_125,
    output wire [31:0]                   A_126,
    output wire [31:0]                   A_127,
    output wire [31:0]                   B_0,
    output wire [31:0]                   B_1,
    output wire [31:0]                   B_2,
    output wire [31:0]                   B_3,
    output wire [31:0]                   B_4,
    output wire [31:0]                   B_5,
    output wire [31:0]                   B_6,
    output wire [31:0]                   B_7,
    output wire [31:0]                   B_8,
    output wire [31:0]                   B_9,
    output wire [31:0]                   B_10,
    output wire [31:0]                   B_11,
    output wire [31:0]                   B_12,
    output wire [31:0]                   B_13,
    output wire [31:0]                   B_14,
    output wire [31:0]                   B_15,
    output wire [31:0]                   B_16,
    output wire [31:0]                   B_17,
    output wire [31:0]                   B_18,
    output wire [31:0]                   B_19,
    output wire [31:0]                   B_20,
    output wire [31:0]                   B_21,
    output wire [31:0]                   B_22,
    output wire [31:0]                   B_23,
    output wire [31:0]                   B_24,
    output wire [31:0]                   B_25,
    output wire [31:0]                   B_26,
    output wire [31:0]                   B_27,
    output wire [31:0]                   B_28,
    output wire [31:0]                   B_29,
    output wire [31:0]                   B_30,
    output wire [31:0]                   B_31,
    output wire [31:0]                   B_32,
    output wire [31:0]                   B_33,
    output wire [31:0]                   B_34,
    output wire [31:0]                   B_35,
    output wire [31:0]                   B_36,
    output wire [31:0]                   B_37,
    output wire [31:0]                   B_38,
    output wire [31:0]                   B_39,
    output wire [31:0]                   B_40,
    output wire [31:0]                   B_41,
    output wire [31:0]                   B_42,
    output wire [31:0]                   B_43,
    output wire [31:0]                   B_44,
    output wire [31:0]                   B_45,
    output wire [31:0]                   B_46,
    output wire [31:0]                   B_47,
    output wire [31:0]                   B_48,
    output wire [31:0]                   B_49,
    output wire [31:0]                   B_50,
    output wire [31:0]                   B_51,
    output wire [31:0]                   B_52,
    output wire [31:0]                   B_53,
    output wire [31:0]                   B_54,
    output wire [31:0]                   B_55,
    output wire [31:0]                   B_56,
    output wire [31:0]                   B_57,
    output wire [31:0]                   B_58,
    output wire [31:0]                   B_59,
    output wire [31:0]                   B_60,
    output wire [31:0]                   B_61,
    output wire [31:0]                   B_62,
    output wire [31:0]                   B_63,
    output wire [31:0]                   B_64,
    output wire [31:0]                   B_65,
    output wire [31:0]                   B_66,
    output wire [31:0]                   B_67,
    output wire [31:0]                   B_68,
    output wire [31:0]                   B_69,
    output wire [31:0]                   B_70,
    output wire [31:0]                   B_71,
    output wire [31:0]                   B_72,
    output wire [31:0]                   B_73,
    output wire [31:0]                   B_74,
    output wire [31:0]                   B_75,
    output wire [31:0]                   B_76,
    output wire [31:0]                   B_77,
    output wire [31:0]                   B_78,
    output wire [31:0]                   B_79,
    output wire [31:0]                   B_80,
    output wire [31:0]                   B_81,
    output wire [31:0]                   B_82,
    output wire [31:0]                   B_83,
    output wire [31:0]                   B_84,
    output wire [31:0]                   B_85,
    output wire [31:0]                   B_86,
    output wire [31:0]                   B_87,
    output wire [31:0]                   B_88,
    output wire [31:0]                   B_89,
    output wire [31:0]                   B_90,
    output wire [31:0]                   B_91,
    output wire [31:0]                   B_92,
    output wire [31:0]                   B_93,
    output wire [31:0]                   B_94,
    output wire [31:0]                   B_95,
    output wire [31:0]                   B_96,
    output wire [31:0]                   B_97,
    output wire [31:0]                   B_98,
    output wire [31:0]                   B_99,
    output wire [31:0]                   B_100,
    output wire [31:0]                   B_101,
    output wire [31:0]                   B_102,
    output wire [31:0]                   B_103,
    output wire [31:0]                   B_104,
    output wire [31:0]                   B_105,
    output wire [31:0]                   B_106,
    output wire [31:0]                   B_107,
    output wire [31:0]                   B_108,
    output wire [31:0]                   B_109,
    output wire [31:0]                   B_110,
    output wire [31:0]                   B_111,
    output wire [31:0]                   B_112,
    output wire [31:0]                   B_113,
    output wire [31:0]                   B_114,
    output wire [31:0]                   B_115,
    output wire [31:0]                   B_116,
    output wire [31:0]                   B_117,
    output wire [31:0]                   B_118,
    output wire [31:0]                   B_119,
    output wire [31:0]                   B_120,
    output wire [31:0]                   B_121,
    output wire [31:0]                   B_122,
    output wire [31:0]                   B_123,
    output wire [31:0]                   B_124,
    output wire [31:0]                   B_125,
    output wire [31:0]                   B_126,
    output wire [31:0]                   B_127
);
//------------------------Address Info-------------------
// 0x000 : reserved
// 0x004 : reserved
// 0x008 : reserved
// 0x00c : reserved
// 0x010 : Data signal of A_0
//         bit 31~0 - A_0[31:0] (Read/Write)
// 0x014 : reserved
// 0x018 : Data signal of A_1
//         bit 31~0 - A_1[31:0] (Read/Write)
// 0x01c : reserved
// 0x020 : Data signal of A_2
//         bit 31~0 - A_2[31:0] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of A_3
//         bit 31~0 - A_3[31:0] (Read/Write)
// 0x02c : reserved
// 0x030 : Data signal of A_4
//         bit 31~0 - A_4[31:0] (Read/Write)
// 0x034 : reserved
// 0x038 : Data signal of A_5
//         bit 31~0 - A_5[31:0] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of A_6
//         bit 31~0 - A_6[31:0] (Read/Write)
// 0x044 : reserved
// 0x048 : Data signal of A_7
//         bit 31~0 - A_7[31:0] (Read/Write)
// 0x04c : reserved
// 0x050 : Data signal of A_8
//         bit 31~0 - A_8[31:0] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of A_9
//         bit 31~0 - A_9[31:0] (Read/Write)
// 0x05c : reserved
// 0x060 : Data signal of A_10
//         bit 31~0 - A_10[31:0] (Read/Write)
// 0x064 : reserved
// 0x068 : Data signal of A_11
//         bit 31~0 - A_11[31:0] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of A_12
//         bit 31~0 - A_12[31:0] (Read/Write)
// 0x074 : reserved
// 0x078 : Data signal of A_13
//         bit 31~0 - A_13[31:0] (Read/Write)
// 0x07c : reserved
// 0x080 : Data signal of A_14
//         bit 31~0 - A_14[31:0] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of A_15
//         bit 31~0 - A_15[31:0] (Read/Write)
// 0x08c : reserved
// 0x090 : Data signal of A_16
//         bit 31~0 - A_16[31:0] (Read/Write)
// 0x094 : reserved
// 0x098 : Data signal of A_17
//         bit 31~0 - A_17[31:0] (Read/Write)
// 0x09c : reserved
// 0x0a0 : Data signal of A_18
//         bit 31~0 - A_18[31:0] (Read/Write)
// 0x0a4 : reserved
// 0x0a8 : Data signal of A_19
//         bit 31~0 - A_19[31:0] (Read/Write)
// 0x0ac : reserved
// 0x0b0 : Data signal of A_20
//         bit 31~0 - A_20[31:0] (Read/Write)
// 0x0b4 : reserved
// 0x0b8 : Data signal of A_21
//         bit 31~0 - A_21[31:0] (Read/Write)
// 0x0bc : reserved
// 0x0c0 : Data signal of A_22
//         bit 31~0 - A_22[31:0] (Read/Write)
// 0x0c4 : reserved
// 0x0c8 : Data signal of A_23
//         bit 31~0 - A_23[31:0] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of A_24
//         bit 31~0 - A_24[31:0] (Read/Write)
// 0x0d4 : reserved
// 0x0d8 : Data signal of A_25
//         bit 31~0 - A_25[31:0] (Read/Write)
// 0x0dc : reserved
// 0x0e0 : Data signal of A_26
//         bit 31~0 - A_26[31:0] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of A_27
//         bit 31~0 - A_27[31:0] (Read/Write)
// 0x0ec : reserved
// 0x0f0 : Data signal of A_28
//         bit 31~0 - A_28[31:0] (Read/Write)
// 0x0f4 : reserved
// 0x0f8 : Data signal of A_29
//         bit 31~0 - A_29[31:0] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of A_30
//         bit 31~0 - A_30[31:0] (Read/Write)
// 0x104 : reserved
// 0x108 : Data signal of A_31
//         bit 31~0 - A_31[31:0] (Read/Write)
// 0x10c : reserved
// 0x110 : Data signal of A_32
//         bit 31~0 - A_32[31:0] (Read/Write)
// 0x114 : reserved
// 0x118 : Data signal of A_33
//         bit 31~0 - A_33[31:0] (Read/Write)
// 0x11c : reserved
// 0x120 : Data signal of A_34
//         bit 31~0 - A_34[31:0] (Read/Write)
// 0x124 : reserved
// 0x128 : Data signal of A_35
//         bit 31~0 - A_35[31:0] (Read/Write)
// 0x12c : reserved
// 0x130 : Data signal of A_36
//         bit 31~0 - A_36[31:0] (Read/Write)
// 0x134 : reserved
// 0x138 : Data signal of A_37
//         bit 31~0 - A_37[31:0] (Read/Write)
// 0x13c : reserved
// 0x140 : Data signal of A_38
//         bit 31~0 - A_38[31:0] (Read/Write)
// 0x144 : reserved
// 0x148 : Data signal of A_39
//         bit 31~0 - A_39[31:0] (Read/Write)
// 0x14c : reserved
// 0x150 : Data signal of A_40
//         bit 31~0 - A_40[31:0] (Read/Write)
// 0x154 : reserved
// 0x158 : Data signal of A_41
//         bit 31~0 - A_41[31:0] (Read/Write)
// 0x15c : reserved
// 0x160 : Data signal of A_42
//         bit 31~0 - A_42[31:0] (Read/Write)
// 0x164 : reserved
// 0x168 : Data signal of A_43
//         bit 31~0 - A_43[31:0] (Read/Write)
// 0x16c : reserved
// 0x170 : Data signal of A_44
//         bit 31~0 - A_44[31:0] (Read/Write)
// 0x174 : reserved
// 0x178 : Data signal of A_45
//         bit 31~0 - A_45[31:0] (Read/Write)
// 0x17c : reserved
// 0x180 : Data signal of A_46
//         bit 31~0 - A_46[31:0] (Read/Write)
// 0x184 : reserved
// 0x188 : Data signal of A_47
//         bit 31~0 - A_47[31:0] (Read/Write)
// 0x18c : reserved
// 0x190 : Data signal of A_48
//         bit 31~0 - A_48[31:0] (Read/Write)
// 0x194 : reserved
// 0x198 : Data signal of A_49
//         bit 31~0 - A_49[31:0] (Read/Write)
// 0x19c : reserved
// 0x1a0 : Data signal of A_50
//         bit 31~0 - A_50[31:0] (Read/Write)
// 0x1a4 : reserved
// 0x1a8 : Data signal of A_51
//         bit 31~0 - A_51[31:0] (Read/Write)
// 0x1ac : reserved
// 0x1b0 : Data signal of A_52
//         bit 31~0 - A_52[31:0] (Read/Write)
// 0x1b4 : reserved
// 0x1b8 : Data signal of A_53
//         bit 31~0 - A_53[31:0] (Read/Write)
// 0x1bc : reserved
// 0x1c0 : Data signal of A_54
//         bit 31~0 - A_54[31:0] (Read/Write)
// 0x1c4 : reserved
// 0x1c8 : Data signal of A_55
//         bit 31~0 - A_55[31:0] (Read/Write)
// 0x1cc : reserved
// 0x1d0 : Data signal of A_56
//         bit 31~0 - A_56[31:0] (Read/Write)
// 0x1d4 : reserved
// 0x1d8 : Data signal of A_57
//         bit 31~0 - A_57[31:0] (Read/Write)
// 0x1dc : reserved
// 0x1e0 : Data signal of A_58
//         bit 31~0 - A_58[31:0] (Read/Write)
// 0x1e4 : reserved
// 0x1e8 : Data signal of A_59
//         bit 31~0 - A_59[31:0] (Read/Write)
// 0x1ec : reserved
// 0x1f0 : Data signal of A_60
//         bit 31~0 - A_60[31:0] (Read/Write)
// 0x1f4 : reserved
// 0x1f8 : Data signal of A_61
//         bit 31~0 - A_61[31:0] (Read/Write)
// 0x1fc : reserved
// 0x200 : Data signal of A_62
//         bit 31~0 - A_62[31:0] (Read/Write)
// 0x204 : reserved
// 0x208 : Data signal of A_63
//         bit 31~0 - A_63[31:0] (Read/Write)
// 0x20c : reserved
// 0x210 : Data signal of A_64
//         bit 31~0 - A_64[31:0] (Read/Write)
// 0x214 : reserved
// 0x218 : Data signal of A_65
//         bit 31~0 - A_65[31:0] (Read/Write)
// 0x21c : reserved
// 0x220 : Data signal of A_66
//         bit 31~0 - A_66[31:0] (Read/Write)
// 0x224 : reserved
// 0x228 : Data signal of A_67
//         bit 31~0 - A_67[31:0] (Read/Write)
// 0x22c : reserved
// 0x230 : Data signal of A_68
//         bit 31~0 - A_68[31:0] (Read/Write)
// 0x234 : reserved
// 0x238 : Data signal of A_69
//         bit 31~0 - A_69[31:0] (Read/Write)
// 0x23c : reserved
// 0x240 : Data signal of A_70
//         bit 31~0 - A_70[31:0] (Read/Write)
// 0x244 : reserved
// 0x248 : Data signal of A_71
//         bit 31~0 - A_71[31:0] (Read/Write)
// 0x24c : reserved
// 0x250 : Data signal of A_72
//         bit 31~0 - A_72[31:0] (Read/Write)
// 0x254 : reserved
// 0x258 : Data signal of A_73
//         bit 31~0 - A_73[31:0] (Read/Write)
// 0x25c : reserved
// 0x260 : Data signal of A_74
//         bit 31~0 - A_74[31:0] (Read/Write)
// 0x264 : reserved
// 0x268 : Data signal of A_75
//         bit 31~0 - A_75[31:0] (Read/Write)
// 0x26c : reserved
// 0x270 : Data signal of A_76
//         bit 31~0 - A_76[31:0] (Read/Write)
// 0x274 : reserved
// 0x278 : Data signal of A_77
//         bit 31~0 - A_77[31:0] (Read/Write)
// 0x27c : reserved
// 0x280 : Data signal of A_78
//         bit 31~0 - A_78[31:0] (Read/Write)
// 0x284 : reserved
// 0x288 : Data signal of A_79
//         bit 31~0 - A_79[31:0] (Read/Write)
// 0x28c : reserved
// 0x290 : Data signal of A_80
//         bit 31~0 - A_80[31:0] (Read/Write)
// 0x294 : reserved
// 0x298 : Data signal of A_81
//         bit 31~0 - A_81[31:0] (Read/Write)
// 0x29c : reserved
// 0x2a0 : Data signal of A_82
//         bit 31~0 - A_82[31:0] (Read/Write)
// 0x2a4 : reserved
// 0x2a8 : Data signal of A_83
//         bit 31~0 - A_83[31:0] (Read/Write)
// 0x2ac : reserved
// 0x2b0 : Data signal of A_84
//         bit 31~0 - A_84[31:0] (Read/Write)
// 0x2b4 : reserved
// 0x2b8 : Data signal of A_85
//         bit 31~0 - A_85[31:0] (Read/Write)
// 0x2bc : reserved
// 0x2c0 : Data signal of A_86
//         bit 31~0 - A_86[31:0] (Read/Write)
// 0x2c4 : reserved
// 0x2c8 : Data signal of A_87
//         bit 31~0 - A_87[31:0] (Read/Write)
// 0x2cc : reserved
// 0x2d0 : Data signal of A_88
//         bit 31~0 - A_88[31:0] (Read/Write)
// 0x2d4 : reserved
// 0x2d8 : Data signal of A_89
//         bit 31~0 - A_89[31:0] (Read/Write)
// 0x2dc : reserved
// 0x2e0 : Data signal of A_90
//         bit 31~0 - A_90[31:0] (Read/Write)
// 0x2e4 : reserved
// 0x2e8 : Data signal of A_91
//         bit 31~0 - A_91[31:0] (Read/Write)
// 0x2ec : reserved
// 0x2f0 : Data signal of A_92
//         bit 31~0 - A_92[31:0] (Read/Write)
// 0x2f4 : reserved
// 0x2f8 : Data signal of A_93
//         bit 31~0 - A_93[31:0] (Read/Write)
// 0x2fc : reserved
// 0x300 : Data signal of A_94
//         bit 31~0 - A_94[31:0] (Read/Write)
// 0x304 : reserved
// 0x308 : Data signal of A_95
//         bit 31~0 - A_95[31:0] (Read/Write)
// 0x30c : reserved
// 0x310 : Data signal of A_96
//         bit 31~0 - A_96[31:0] (Read/Write)
// 0x314 : reserved
// 0x318 : Data signal of A_97
//         bit 31~0 - A_97[31:0] (Read/Write)
// 0x31c : reserved
// 0x320 : Data signal of A_98
//         bit 31~0 - A_98[31:0] (Read/Write)
// 0x324 : reserved
// 0x328 : Data signal of A_99
//         bit 31~0 - A_99[31:0] (Read/Write)
// 0x32c : reserved
// 0x330 : Data signal of A_100
//         bit 31~0 - A_100[31:0] (Read/Write)
// 0x334 : reserved
// 0x338 : Data signal of A_101
//         bit 31~0 - A_101[31:0] (Read/Write)
// 0x33c : reserved
// 0x340 : Data signal of A_102
//         bit 31~0 - A_102[31:0] (Read/Write)
// 0x344 : reserved
// 0x348 : Data signal of A_103
//         bit 31~0 - A_103[31:0] (Read/Write)
// 0x34c : reserved
// 0x350 : Data signal of A_104
//         bit 31~0 - A_104[31:0] (Read/Write)
// 0x354 : reserved
// 0x358 : Data signal of A_105
//         bit 31~0 - A_105[31:0] (Read/Write)
// 0x35c : reserved
// 0x360 : Data signal of A_106
//         bit 31~0 - A_106[31:0] (Read/Write)
// 0x364 : reserved
// 0x368 : Data signal of A_107
//         bit 31~0 - A_107[31:0] (Read/Write)
// 0x36c : reserved
// 0x370 : Data signal of A_108
//         bit 31~0 - A_108[31:0] (Read/Write)
// 0x374 : reserved
// 0x378 : Data signal of A_109
//         bit 31~0 - A_109[31:0] (Read/Write)
// 0x37c : reserved
// 0x380 : Data signal of A_110
//         bit 31~0 - A_110[31:0] (Read/Write)
// 0x384 : reserved
// 0x388 : Data signal of A_111
//         bit 31~0 - A_111[31:0] (Read/Write)
// 0x38c : reserved
// 0x390 : Data signal of A_112
//         bit 31~0 - A_112[31:0] (Read/Write)
// 0x394 : reserved
// 0x398 : Data signal of A_113
//         bit 31~0 - A_113[31:0] (Read/Write)
// 0x39c : reserved
// 0x3a0 : Data signal of A_114
//         bit 31~0 - A_114[31:0] (Read/Write)
// 0x3a4 : reserved
// 0x3a8 : Data signal of A_115
//         bit 31~0 - A_115[31:0] (Read/Write)
// 0x3ac : reserved
// 0x3b0 : Data signal of A_116
//         bit 31~0 - A_116[31:0] (Read/Write)
// 0x3b4 : reserved
// 0x3b8 : Data signal of A_117
//         bit 31~0 - A_117[31:0] (Read/Write)
// 0x3bc : reserved
// 0x3c0 : Data signal of A_118
//         bit 31~0 - A_118[31:0] (Read/Write)
// 0x3c4 : reserved
// 0x3c8 : Data signal of A_119
//         bit 31~0 - A_119[31:0] (Read/Write)
// 0x3cc : reserved
// 0x3d0 : Data signal of A_120
//         bit 31~0 - A_120[31:0] (Read/Write)
// 0x3d4 : reserved
// 0x3d8 : Data signal of A_121
//         bit 31~0 - A_121[31:0] (Read/Write)
// 0x3dc : reserved
// 0x3e0 : Data signal of A_122
//         bit 31~0 - A_122[31:0] (Read/Write)
// 0x3e4 : reserved
// 0x3e8 : Data signal of A_123
//         bit 31~0 - A_123[31:0] (Read/Write)
// 0x3ec : reserved
// 0x3f0 : Data signal of A_124
//         bit 31~0 - A_124[31:0] (Read/Write)
// 0x3f4 : reserved
// 0x3f8 : Data signal of A_125
//         bit 31~0 - A_125[31:0] (Read/Write)
// 0x3fc : reserved
// 0x400 : Data signal of A_126
//         bit 31~0 - A_126[31:0] (Read/Write)
// 0x404 : reserved
// 0x408 : Data signal of A_127
//         bit 31~0 - A_127[31:0] (Read/Write)
// 0x40c : reserved
// 0x410 : Data signal of B_0
//         bit 31~0 - B_0[31:0] (Read/Write)
// 0x414 : reserved
// 0x418 : Data signal of B_1
//         bit 31~0 - B_1[31:0] (Read/Write)
// 0x41c : reserved
// 0x420 : Data signal of B_2
//         bit 31~0 - B_2[31:0] (Read/Write)
// 0x424 : reserved
// 0x428 : Data signal of B_3
//         bit 31~0 - B_3[31:0] (Read/Write)
// 0x42c : reserved
// 0x430 : Data signal of B_4
//         bit 31~0 - B_4[31:0] (Read/Write)
// 0x434 : reserved
// 0x438 : Data signal of B_5
//         bit 31~0 - B_5[31:0] (Read/Write)
// 0x43c : reserved
// 0x440 : Data signal of B_6
//         bit 31~0 - B_6[31:0] (Read/Write)
// 0x444 : reserved
// 0x448 : Data signal of B_7
//         bit 31~0 - B_7[31:0] (Read/Write)
// 0x44c : reserved
// 0x450 : Data signal of B_8
//         bit 31~0 - B_8[31:0] (Read/Write)
// 0x454 : reserved
// 0x458 : Data signal of B_9
//         bit 31~0 - B_9[31:0] (Read/Write)
// 0x45c : reserved
// 0x460 : Data signal of B_10
//         bit 31~0 - B_10[31:0] (Read/Write)
// 0x464 : reserved
// 0x468 : Data signal of B_11
//         bit 31~0 - B_11[31:0] (Read/Write)
// 0x46c : reserved
// 0x470 : Data signal of B_12
//         bit 31~0 - B_12[31:0] (Read/Write)
// 0x474 : reserved
// 0x478 : Data signal of B_13
//         bit 31~0 - B_13[31:0] (Read/Write)
// 0x47c : reserved
// 0x480 : Data signal of B_14
//         bit 31~0 - B_14[31:0] (Read/Write)
// 0x484 : reserved
// 0x488 : Data signal of B_15
//         bit 31~0 - B_15[31:0] (Read/Write)
// 0x48c : reserved
// 0x490 : Data signal of B_16
//         bit 31~0 - B_16[31:0] (Read/Write)
// 0x494 : reserved
// 0x498 : Data signal of B_17
//         bit 31~0 - B_17[31:0] (Read/Write)
// 0x49c : reserved
// 0x4a0 : Data signal of B_18
//         bit 31~0 - B_18[31:0] (Read/Write)
// 0x4a4 : reserved
// 0x4a8 : Data signal of B_19
//         bit 31~0 - B_19[31:0] (Read/Write)
// 0x4ac : reserved
// 0x4b0 : Data signal of B_20
//         bit 31~0 - B_20[31:0] (Read/Write)
// 0x4b4 : reserved
// 0x4b8 : Data signal of B_21
//         bit 31~0 - B_21[31:0] (Read/Write)
// 0x4bc : reserved
// 0x4c0 : Data signal of B_22
//         bit 31~0 - B_22[31:0] (Read/Write)
// 0x4c4 : reserved
// 0x4c8 : Data signal of B_23
//         bit 31~0 - B_23[31:0] (Read/Write)
// 0x4cc : reserved
// 0x4d0 : Data signal of B_24
//         bit 31~0 - B_24[31:0] (Read/Write)
// 0x4d4 : reserved
// 0x4d8 : Data signal of B_25
//         bit 31~0 - B_25[31:0] (Read/Write)
// 0x4dc : reserved
// 0x4e0 : Data signal of B_26
//         bit 31~0 - B_26[31:0] (Read/Write)
// 0x4e4 : reserved
// 0x4e8 : Data signal of B_27
//         bit 31~0 - B_27[31:0] (Read/Write)
// 0x4ec : reserved
// 0x4f0 : Data signal of B_28
//         bit 31~0 - B_28[31:0] (Read/Write)
// 0x4f4 : reserved
// 0x4f8 : Data signal of B_29
//         bit 31~0 - B_29[31:0] (Read/Write)
// 0x4fc : reserved
// 0x500 : Data signal of B_30
//         bit 31~0 - B_30[31:0] (Read/Write)
// 0x504 : reserved
// 0x508 : Data signal of B_31
//         bit 31~0 - B_31[31:0] (Read/Write)
// 0x50c : reserved
// 0x510 : Data signal of B_32
//         bit 31~0 - B_32[31:0] (Read/Write)
// 0x514 : reserved
// 0x518 : Data signal of B_33
//         bit 31~0 - B_33[31:0] (Read/Write)
// 0x51c : reserved
// 0x520 : Data signal of B_34
//         bit 31~0 - B_34[31:0] (Read/Write)
// 0x524 : reserved
// 0x528 : Data signal of B_35
//         bit 31~0 - B_35[31:0] (Read/Write)
// 0x52c : reserved
// 0x530 : Data signal of B_36
//         bit 31~0 - B_36[31:0] (Read/Write)
// 0x534 : reserved
// 0x538 : Data signal of B_37
//         bit 31~0 - B_37[31:0] (Read/Write)
// 0x53c : reserved
// 0x540 : Data signal of B_38
//         bit 31~0 - B_38[31:0] (Read/Write)
// 0x544 : reserved
// 0x548 : Data signal of B_39
//         bit 31~0 - B_39[31:0] (Read/Write)
// 0x54c : reserved
// 0x550 : Data signal of B_40
//         bit 31~0 - B_40[31:0] (Read/Write)
// 0x554 : reserved
// 0x558 : Data signal of B_41
//         bit 31~0 - B_41[31:0] (Read/Write)
// 0x55c : reserved
// 0x560 : Data signal of B_42
//         bit 31~0 - B_42[31:0] (Read/Write)
// 0x564 : reserved
// 0x568 : Data signal of B_43
//         bit 31~0 - B_43[31:0] (Read/Write)
// 0x56c : reserved
// 0x570 : Data signal of B_44
//         bit 31~0 - B_44[31:0] (Read/Write)
// 0x574 : reserved
// 0x578 : Data signal of B_45
//         bit 31~0 - B_45[31:0] (Read/Write)
// 0x57c : reserved
// 0x580 : Data signal of B_46
//         bit 31~0 - B_46[31:0] (Read/Write)
// 0x584 : reserved
// 0x588 : Data signal of B_47
//         bit 31~0 - B_47[31:0] (Read/Write)
// 0x58c : reserved
// 0x590 : Data signal of B_48
//         bit 31~0 - B_48[31:0] (Read/Write)
// 0x594 : reserved
// 0x598 : Data signal of B_49
//         bit 31~0 - B_49[31:0] (Read/Write)
// 0x59c : reserved
// 0x5a0 : Data signal of B_50
//         bit 31~0 - B_50[31:0] (Read/Write)
// 0x5a4 : reserved
// 0x5a8 : Data signal of B_51
//         bit 31~0 - B_51[31:0] (Read/Write)
// 0x5ac : reserved
// 0x5b0 : Data signal of B_52
//         bit 31~0 - B_52[31:0] (Read/Write)
// 0x5b4 : reserved
// 0x5b8 : Data signal of B_53
//         bit 31~0 - B_53[31:0] (Read/Write)
// 0x5bc : reserved
// 0x5c0 : Data signal of B_54
//         bit 31~0 - B_54[31:0] (Read/Write)
// 0x5c4 : reserved
// 0x5c8 : Data signal of B_55
//         bit 31~0 - B_55[31:0] (Read/Write)
// 0x5cc : reserved
// 0x5d0 : Data signal of B_56
//         bit 31~0 - B_56[31:0] (Read/Write)
// 0x5d4 : reserved
// 0x5d8 : Data signal of B_57
//         bit 31~0 - B_57[31:0] (Read/Write)
// 0x5dc : reserved
// 0x5e0 : Data signal of B_58
//         bit 31~0 - B_58[31:0] (Read/Write)
// 0x5e4 : reserved
// 0x5e8 : Data signal of B_59
//         bit 31~0 - B_59[31:0] (Read/Write)
// 0x5ec : reserved
// 0x5f0 : Data signal of B_60
//         bit 31~0 - B_60[31:0] (Read/Write)
// 0x5f4 : reserved
// 0x5f8 : Data signal of B_61
//         bit 31~0 - B_61[31:0] (Read/Write)
// 0x5fc : reserved
// 0x600 : Data signal of B_62
//         bit 31~0 - B_62[31:0] (Read/Write)
// 0x604 : reserved
// 0x608 : Data signal of B_63
//         bit 31~0 - B_63[31:0] (Read/Write)
// 0x60c : reserved
// 0x610 : Data signal of B_64
//         bit 31~0 - B_64[31:0] (Read/Write)
// 0x614 : reserved
// 0x618 : Data signal of B_65
//         bit 31~0 - B_65[31:0] (Read/Write)
// 0x61c : reserved
// 0x620 : Data signal of B_66
//         bit 31~0 - B_66[31:0] (Read/Write)
// 0x624 : reserved
// 0x628 : Data signal of B_67
//         bit 31~0 - B_67[31:0] (Read/Write)
// 0x62c : reserved
// 0x630 : Data signal of B_68
//         bit 31~0 - B_68[31:0] (Read/Write)
// 0x634 : reserved
// 0x638 : Data signal of B_69
//         bit 31~0 - B_69[31:0] (Read/Write)
// 0x63c : reserved
// 0x640 : Data signal of B_70
//         bit 31~0 - B_70[31:0] (Read/Write)
// 0x644 : reserved
// 0x648 : Data signal of B_71
//         bit 31~0 - B_71[31:0] (Read/Write)
// 0x64c : reserved
// 0x650 : Data signal of B_72
//         bit 31~0 - B_72[31:0] (Read/Write)
// 0x654 : reserved
// 0x658 : Data signal of B_73
//         bit 31~0 - B_73[31:0] (Read/Write)
// 0x65c : reserved
// 0x660 : Data signal of B_74
//         bit 31~0 - B_74[31:0] (Read/Write)
// 0x664 : reserved
// 0x668 : Data signal of B_75
//         bit 31~0 - B_75[31:0] (Read/Write)
// 0x66c : reserved
// 0x670 : Data signal of B_76
//         bit 31~0 - B_76[31:0] (Read/Write)
// 0x674 : reserved
// 0x678 : Data signal of B_77
//         bit 31~0 - B_77[31:0] (Read/Write)
// 0x67c : reserved
// 0x680 : Data signal of B_78
//         bit 31~0 - B_78[31:0] (Read/Write)
// 0x684 : reserved
// 0x688 : Data signal of B_79
//         bit 31~0 - B_79[31:0] (Read/Write)
// 0x68c : reserved
// 0x690 : Data signal of B_80
//         bit 31~0 - B_80[31:0] (Read/Write)
// 0x694 : reserved
// 0x698 : Data signal of B_81
//         bit 31~0 - B_81[31:0] (Read/Write)
// 0x69c : reserved
// 0x6a0 : Data signal of B_82
//         bit 31~0 - B_82[31:0] (Read/Write)
// 0x6a4 : reserved
// 0x6a8 : Data signal of B_83
//         bit 31~0 - B_83[31:0] (Read/Write)
// 0x6ac : reserved
// 0x6b0 : Data signal of B_84
//         bit 31~0 - B_84[31:0] (Read/Write)
// 0x6b4 : reserved
// 0x6b8 : Data signal of B_85
//         bit 31~0 - B_85[31:0] (Read/Write)
// 0x6bc : reserved
// 0x6c0 : Data signal of B_86
//         bit 31~0 - B_86[31:0] (Read/Write)
// 0x6c4 : reserved
// 0x6c8 : Data signal of B_87
//         bit 31~0 - B_87[31:0] (Read/Write)
// 0x6cc : reserved
// 0x6d0 : Data signal of B_88
//         bit 31~0 - B_88[31:0] (Read/Write)
// 0x6d4 : reserved
// 0x6d8 : Data signal of B_89
//         bit 31~0 - B_89[31:0] (Read/Write)
// 0x6dc : reserved
// 0x6e0 : Data signal of B_90
//         bit 31~0 - B_90[31:0] (Read/Write)
// 0x6e4 : reserved
// 0x6e8 : Data signal of B_91
//         bit 31~0 - B_91[31:0] (Read/Write)
// 0x6ec : reserved
// 0x6f0 : Data signal of B_92
//         bit 31~0 - B_92[31:0] (Read/Write)
// 0x6f4 : reserved
// 0x6f8 : Data signal of B_93
//         bit 31~0 - B_93[31:0] (Read/Write)
// 0x6fc : reserved
// 0x700 : Data signal of B_94
//         bit 31~0 - B_94[31:0] (Read/Write)
// 0x704 : reserved
// 0x708 : Data signal of B_95
//         bit 31~0 - B_95[31:0] (Read/Write)
// 0x70c : reserved
// 0x710 : Data signal of B_96
//         bit 31~0 - B_96[31:0] (Read/Write)
// 0x714 : reserved
// 0x718 : Data signal of B_97
//         bit 31~0 - B_97[31:0] (Read/Write)
// 0x71c : reserved
// 0x720 : Data signal of B_98
//         bit 31~0 - B_98[31:0] (Read/Write)
// 0x724 : reserved
// 0x728 : Data signal of B_99
//         bit 31~0 - B_99[31:0] (Read/Write)
// 0x72c : reserved
// 0x730 : Data signal of B_100
//         bit 31~0 - B_100[31:0] (Read/Write)
// 0x734 : reserved
// 0x738 : Data signal of B_101
//         bit 31~0 - B_101[31:0] (Read/Write)
// 0x73c : reserved
// 0x740 : Data signal of B_102
//         bit 31~0 - B_102[31:0] (Read/Write)
// 0x744 : reserved
// 0x748 : Data signal of B_103
//         bit 31~0 - B_103[31:0] (Read/Write)
// 0x74c : reserved
// 0x750 : Data signal of B_104
//         bit 31~0 - B_104[31:0] (Read/Write)
// 0x754 : reserved
// 0x758 : Data signal of B_105
//         bit 31~0 - B_105[31:0] (Read/Write)
// 0x75c : reserved
// 0x760 : Data signal of B_106
//         bit 31~0 - B_106[31:0] (Read/Write)
// 0x764 : reserved
// 0x768 : Data signal of B_107
//         bit 31~0 - B_107[31:0] (Read/Write)
// 0x76c : reserved
// 0x770 : Data signal of B_108
//         bit 31~0 - B_108[31:0] (Read/Write)
// 0x774 : reserved
// 0x778 : Data signal of B_109
//         bit 31~0 - B_109[31:0] (Read/Write)
// 0x77c : reserved
// 0x780 : Data signal of B_110
//         bit 31~0 - B_110[31:0] (Read/Write)
// 0x784 : reserved
// 0x788 : Data signal of B_111
//         bit 31~0 - B_111[31:0] (Read/Write)
// 0x78c : reserved
// 0x790 : Data signal of B_112
//         bit 31~0 - B_112[31:0] (Read/Write)
// 0x794 : reserved
// 0x798 : Data signal of B_113
//         bit 31~0 - B_113[31:0] (Read/Write)
// 0x79c : reserved
// 0x7a0 : Data signal of B_114
//         bit 31~0 - B_114[31:0] (Read/Write)
// 0x7a4 : reserved
// 0x7a8 : Data signal of B_115
//         bit 31~0 - B_115[31:0] (Read/Write)
// 0x7ac : reserved
// 0x7b0 : Data signal of B_116
//         bit 31~0 - B_116[31:0] (Read/Write)
// 0x7b4 : reserved
// 0x7b8 : Data signal of B_117
//         bit 31~0 - B_117[31:0] (Read/Write)
// 0x7bc : reserved
// 0x7c0 : Data signal of B_118
//         bit 31~0 - B_118[31:0] (Read/Write)
// 0x7c4 : reserved
// 0x7c8 : Data signal of B_119
//         bit 31~0 - B_119[31:0] (Read/Write)
// 0x7cc : reserved
// 0x7d0 : Data signal of B_120
//         bit 31~0 - B_120[31:0] (Read/Write)
// 0x7d4 : reserved
// 0x7d8 : Data signal of B_121
//         bit 31~0 - B_121[31:0] (Read/Write)
// 0x7dc : reserved
// 0x7e0 : Data signal of B_122
//         bit 31~0 - B_122[31:0] (Read/Write)
// 0x7e4 : reserved
// 0x7e8 : Data signal of B_123
//         bit 31~0 - B_123[31:0] (Read/Write)
// 0x7ec : reserved
// 0x7f0 : Data signal of B_124
//         bit 31~0 - B_124[31:0] (Read/Write)
// 0x7f4 : reserved
// 0x7f8 : Data signal of B_125
//         bit 31~0 - B_125[31:0] (Read/Write)
// 0x7fc : reserved
// 0x800 : Data signal of B_126
//         bit 31~0 - B_126[31:0] (Read/Write)
// 0x804 : reserved
// 0x808 : Data signal of B_127
//         bit 31~0 - B_127[31:0] (Read/Write)
// 0x80c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_A_0_DATA_0   = 12'h010,
    ADDR_A_0_CTRL     = 12'h014,
    ADDR_A_1_DATA_0   = 12'h018,
    ADDR_A_1_CTRL     = 12'h01c,
    ADDR_A_2_DATA_0   = 12'h020,
    ADDR_A_2_CTRL     = 12'h024,
    ADDR_A_3_DATA_0   = 12'h028,
    ADDR_A_3_CTRL     = 12'h02c,
    ADDR_A_4_DATA_0   = 12'h030,
    ADDR_A_4_CTRL     = 12'h034,
    ADDR_A_5_DATA_0   = 12'h038,
    ADDR_A_5_CTRL     = 12'h03c,
    ADDR_A_6_DATA_0   = 12'h040,
    ADDR_A_6_CTRL     = 12'h044,
    ADDR_A_7_DATA_0   = 12'h048,
    ADDR_A_7_CTRL     = 12'h04c,
    ADDR_A_8_DATA_0   = 12'h050,
    ADDR_A_8_CTRL     = 12'h054,
    ADDR_A_9_DATA_0   = 12'h058,
    ADDR_A_9_CTRL     = 12'h05c,
    ADDR_A_10_DATA_0  = 12'h060,
    ADDR_A_10_CTRL    = 12'h064,
    ADDR_A_11_DATA_0  = 12'h068,
    ADDR_A_11_CTRL    = 12'h06c,
    ADDR_A_12_DATA_0  = 12'h070,
    ADDR_A_12_CTRL    = 12'h074,
    ADDR_A_13_DATA_0  = 12'h078,
    ADDR_A_13_CTRL    = 12'h07c,
    ADDR_A_14_DATA_0  = 12'h080,
    ADDR_A_14_CTRL    = 12'h084,
    ADDR_A_15_DATA_0  = 12'h088,
    ADDR_A_15_CTRL    = 12'h08c,
    ADDR_A_16_DATA_0  = 12'h090,
    ADDR_A_16_CTRL    = 12'h094,
    ADDR_A_17_DATA_0  = 12'h098,
    ADDR_A_17_CTRL    = 12'h09c,
    ADDR_A_18_DATA_0  = 12'h0a0,
    ADDR_A_18_CTRL    = 12'h0a4,
    ADDR_A_19_DATA_0  = 12'h0a8,
    ADDR_A_19_CTRL    = 12'h0ac,
    ADDR_A_20_DATA_0  = 12'h0b0,
    ADDR_A_20_CTRL    = 12'h0b4,
    ADDR_A_21_DATA_0  = 12'h0b8,
    ADDR_A_21_CTRL    = 12'h0bc,
    ADDR_A_22_DATA_0  = 12'h0c0,
    ADDR_A_22_CTRL    = 12'h0c4,
    ADDR_A_23_DATA_0  = 12'h0c8,
    ADDR_A_23_CTRL    = 12'h0cc,
    ADDR_A_24_DATA_0  = 12'h0d0,
    ADDR_A_24_CTRL    = 12'h0d4,
    ADDR_A_25_DATA_0  = 12'h0d8,
    ADDR_A_25_CTRL    = 12'h0dc,
    ADDR_A_26_DATA_0  = 12'h0e0,
    ADDR_A_26_CTRL    = 12'h0e4,
    ADDR_A_27_DATA_0  = 12'h0e8,
    ADDR_A_27_CTRL    = 12'h0ec,
    ADDR_A_28_DATA_0  = 12'h0f0,
    ADDR_A_28_CTRL    = 12'h0f4,
    ADDR_A_29_DATA_0  = 12'h0f8,
    ADDR_A_29_CTRL    = 12'h0fc,
    ADDR_A_30_DATA_0  = 12'h100,
    ADDR_A_30_CTRL    = 12'h104,
    ADDR_A_31_DATA_0  = 12'h108,
    ADDR_A_31_CTRL    = 12'h10c,
    ADDR_A_32_DATA_0  = 12'h110,
    ADDR_A_32_CTRL    = 12'h114,
    ADDR_A_33_DATA_0  = 12'h118,
    ADDR_A_33_CTRL    = 12'h11c,
    ADDR_A_34_DATA_0  = 12'h120,
    ADDR_A_34_CTRL    = 12'h124,
    ADDR_A_35_DATA_0  = 12'h128,
    ADDR_A_35_CTRL    = 12'h12c,
    ADDR_A_36_DATA_0  = 12'h130,
    ADDR_A_36_CTRL    = 12'h134,
    ADDR_A_37_DATA_0  = 12'h138,
    ADDR_A_37_CTRL    = 12'h13c,
    ADDR_A_38_DATA_0  = 12'h140,
    ADDR_A_38_CTRL    = 12'h144,
    ADDR_A_39_DATA_0  = 12'h148,
    ADDR_A_39_CTRL    = 12'h14c,
    ADDR_A_40_DATA_0  = 12'h150,
    ADDR_A_40_CTRL    = 12'h154,
    ADDR_A_41_DATA_0  = 12'h158,
    ADDR_A_41_CTRL    = 12'h15c,
    ADDR_A_42_DATA_0  = 12'h160,
    ADDR_A_42_CTRL    = 12'h164,
    ADDR_A_43_DATA_0  = 12'h168,
    ADDR_A_43_CTRL    = 12'h16c,
    ADDR_A_44_DATA_0  = 12'h170,
    ADDR_A_44_CTRL    = 12'h174,
    ADDR_A_45_DATA_0  = 12'h178,
    ADDR_A_45_CTRL    = 12'h17c,
    ADDR_A_46_DATA_0  = 12'h180,
    ADDR_A_46_CTRL    = 12'h184,
    ADDR_A_47_DATA_0  = 12'h188,
    ADDR_A_47_CTRL    = 12'h18c,
    ADDR_A_48_DATA_0  = 12'h190,
    ADDR_A_48_CTRL    = 12'h194,
    ADDR_A_49_DATA_0  = 12'h198,
    ADDR_A_49_CTRL    = 12'h19c,
    ADDR_A_50_DATA_0  = 12'h1a0,
    ADDR_A_50_CTRL    = 12'h1a4,
    ADDR_A_51_DATA_0  = 12'h1a8,
    ADDR_A_51_CTRL    = 12'h1ac,
    ADDR_A_52_DATA_0  = 12'h1b0,
    ADDR_A_52_CTRL    = 12'h1b4,
    ADDR_A_53_DATA_0  = 12'h1b8,
    ADDR_A_53_CTRL    = 12'h1bc,
    ADDR_A_54_DATA_0  = 12'h1c0,
    ADDR_A_54_CTRL    = 12'h1c4,
    ADDR_A_55_DATA_0  = 12'h1c8,
    ADDR_A_55_CTRL    = 12'h1cc,
    ADDR_A_56_DATA_0  = 12'h1d0,
    ADDR_A_56_CTRL    = 12'h1d4,
    ADDR_A_57_DATA_0  = 12'h1d8,
    ADDR_A_57_CTRL    = 12'h1dc,
    ADDR_A_58_DATA_0  = 12'h1e0,
    ADDR_A_58_CTRL    = 12'h1e4,
    ADDR_A_59_DATA_0  = 12'h1e8,
    ADDR_A_59_CTRL    = 12'h1ec,
    ADDR_A_60_DATA_0  = 12'h1f0,
    ADDR_A_60_CTRL    = 12'h1f4,
    ADDR_A_61_DATA_0  = 12'h1f8,
    ADDR_A_61_CTRL    = 12'h1fc,
    ADDR_A_62_DATA_0  = 12'h200,
    ADDR_A_62_CTRL    = 12'h204,
    ADDR_A_63_DATA_0  = 12'h208,
    ADDR_A_63_CTRL    = 12'h20c,
    ADDR_A_64_DATA_0  = 12'h210,
    ADDR_A_64_CTRL    = 12'h214,
    ADDR_A_65_DATA_0  = 12'h218,
    ADDR_A_65_CTRL    = 12'h21c,
    ADDR_A_66_DATA_0  = 12'h220,
    ADDR_A_66_CTRL    = 12'h224,
    ADDR_A_67_DATA_0  = 12'h228,
    ADDR_A_67_CTRL    = 12'h22c,
    ADDR_A_68_DATA_0  = 12'h230,
    ADDR_A_68_CTRL    = 12'h234,
    ADDR_A_69_DATA_0  = 12'h238,
    ADDR_A_69_CTRL    = 12'h23c,
    ADDR_A_70_DATA_0  = 12'h240,
    ADDR_A_70_CTRL    = 12'h244,
    ADDR_A_71_DATA_0  = 12'h248,
    ADDR_A_71_CTRL    = 12'h24c,
    ADDR_A_72_DATA_0  = 12'h250,
    ADDR_A_72_CTRL    = 12'h254,
    ADDR_A_73_DATA_0  = 12'h258,
    ADDR_A_73_CTRL    = 12'h25c,
    ADDR_A_74_DATA_0  = 12'h260,
    ADDR_A_74_CTRL    = 12'h264,
    ADDR_A_75_DATA_0  = 12'h268,
    ADDR_A_75_CTRL    = 12'h26c,
    ADDR_A_76_DATA_0  = 12'h270,
    ADDR_A_76_CTRL    = 12'h274,
    ADDR_A_77_DATA_0  = 12'h278,
    ADDR_A_77_CTRL    = 12'h27c,
    ADDR_A_78_DATA_0  = 12'h280,
    ADDR_A_78_CTRL    = 12'h284,
    ADDR_A_79_DATA_0  = 12'h288,
    ADDR_A_79_CTRL    = 12'h28c,
    ADDR_A_80_DATA_0  = 12'h290,
    ADDR_A_80_CTRL    = 12'h294,
    ADDR_A_81_DATA_0  = 12'h298,
    ADDR_A_81_CTRL    = 12'h29c,
    ADDR_A_82_DATA_0  = 12'h2a0,
    ADDR_A_82_CTRL    = 12'h2a4,
    ADDR_A_83_DATA_0  = 12'h2a8,
    ADDR_A_83_CTRL    = 12'h2ac,
    ADDR_A_84_DATA_0  = 12'h2b0,
    ADDR_A_84_CTRL    = 12'h2b4,
    ADDR_A_85_DATA_0  = 12'h2b8,
    ADDR_A_85_CTRL    = 12'h2bc,
    ADDR_A_86_DATA_0  = 12'h2c0,
    ADDR_A_86_CTRL    = 12'h2c4,
    ADDR_A_87_DATA_0  = 12'h2c8,
    ADDR_A_87_CTRL    = 12'h2cc,
    ADDR_A_88_DATA_0  = 12'h2d0,
    ADDR_A_88_CTRL    = 12'h2d4,
    ADDR_A_89_DATA_0  = 12'h2d8,
    ADDR_A_89_CTRL    = 12'h2dc,
    ADDR_A_90_DATA_0  = 12'h2e0,
    ADDR_A_90_CTRL    = 12'h2e4,
    ADDR_A_91_DATA_0  = 12'h2e8,
    ADDR_A_91_CTRL    = 12'h2ec,
    ADDR_A_92_DATA_0  = 12'h2f0,
    ADDR_A_92_CTRL    = 12'h2f4,
    ADDR_A_93_DATA_0  = 12'h2f8,
    ADDR_A_93_CTRL    = 12'h2fc,
    ADDR_A_94_DATA_0  = 12'h300,
    ADDR_A_94_CTRL    = 12'h304,
    ADDR_A_95_DATA_0  = 12'h308,
    ADDR_A_95_CTRL    = 12'h30c,
    ADDR_A_96_DATA_0  = 12'h310,
    ADDR_A_96_CTRL    = 12'h314,
    ADDR_A_97_DATA_0  = 12'h318,
    ADDR_A_97_CTRL    = 12'h31c,
    ADDR_A_98_DATA_0  = 12'h320,
    ADDR_A_98_CTRL    = 12'h324,
    ADDR_A_99_DATA_0  = 12'h328,
    ADDR_A_99_CTRL    = 12'h32c,
    ADDR_A_100_DATA_0 = 12'h330,
    ADDR_A_100_CTRL   = 12'h334,
    ADDR_A_101_DATA_0 = 12'h338,
    ADDR_A_101_CTRL   = 12'h33c,
    ADDR_A_102_DATA_0 = 12'h340,
    ADDR_A_102_CTRL   = 12'h344,
    ADDR_A_103_DATA_0 = 12'h348,
    ADDR_A_103_CTRL   = 12'h34c,
    ADDR_A_104_DATA_0 = 12'h350,
    ADDR_A_104_CTRL   = 12'h354,
    ADDR_A_105_DATA_0 = 12'h358,
    ADDR_A_105_CTRL   = 12'h35c,
    ADDR_A_106_DATA_0 = 12'h360,
    ADDR_A_106_CTRL   = 12'h364,
    ADDR_A_107_DATA_0 = 12'h368,
    ADDR_A_107_CTRL   = 12'h36c,
    ADDR_A_108_DATA_0 = 12'h370,
    ADDR_A_108_CTRL   = 12'h374,
    ADDR_A_109_DATA_0 = 12'h378,
    ADDR_A_109_CTRL   = 12'h37c,
    ADDR_A_110_DATA_0 = 12'h380,
    ADDR_A_110_CTRL   = 12'h384,
    ADDR_A_111_DATA_0 = 12'h388,
    ADDR_A_111_CTRL   = 12'h38c,
    ADDR_A_112_DATA_0 = 12'h390,
    ADDR_A_112_CTRL   = 12'h394,
    ADDR_A_113_DATA_0 = 12'h398,
    ADDR_A_113_CTRL   = 12'h39c,
    ADDR_A_114_DATA_0 = 12'h3a0,
    ADDR_A_114_CTRL   = 12'h3a4,
    ADDR_A_115_DATA_0 = 12'h3a8,
    ADDR_A_115_CTRL   = 12'h3ac,
    ADDR_A_116_DATA_0 = 12'h3b0,
    ADDR_A_116_CTRL   = 12'h3b4,
    ADDR_A_117_DATA_0 = 12'h3b8,
    ADDR_A_117_CTRL   = 12'h3bc,
    ADDR_A_118_DATA_0 = 12'h3c0,
    ADDR_A_118_CTRL   = 12'h3c4,
    ADDR_A_119_DATA_0 = 12'h3c8,
    ADDR_A_119_CTRL   = 12'h3cc,
    ADDR_A_120_DATA_0 = 12'h3d0,
    ADDR_A_120_CTRL   = 12'h3d4,
    ADDR_A_121_DATA_0 = 12'h3d8,
    ADDR_A_121_CTRL   = 12'h3dc,
    ADDR_A_122_DATA_0 = 12'h3e0,
    ADDR_A_122_CTRL   = 12'h3e4,
    ADDR_A_123_DATA_0 = 12'h3e8,
    ADDR_A_123_CTRL   = 12'h3ec,
    ADDR_A_124_DATA_0 = 12'h3f0,
    ADDR_A_124_CTRL   = 12'h3f4,
    ADDR_A_125_DATA_0 = 12'h3f8,
    ADDR_A_125_CTRL   = 12'h3fc,
    ADDR_A_126_DATA_0 = 12'h400,
    ADDR_A_126_CTRL   = 12'h404,
    ADDR_A_127_DATA_0 = 12'h408,
    ADDR_A_127_CTRL   = 12'h40c,
    ADDR_B_0_DATA_0   = 12'h410,
    ADDR_B_0_CTRL     = 12'h414,
    ADDR_B_1_DATA_0   = 12'h418,
    ADDR_B_1_CTRL     = 12'h41c,
    ADDR_B_2_DATA_0   = 12'h420,
    ADDR_B_2_CTRL     = 12'h424,
    ADDR_B_3_DATA_0   = 12'h428,
    ADDR_B_3_CTRL     = 12'h42c,
    ADDR_B_4_DATA_0   = 12'h430,
    ADDR_B_4_CTRL     = 12'h434,
    ADDR_B_5_DATA_0   = 12'h438,
    ADDR_B_5_CTRL     = 12'h43c,
    ADDR_B_6_DATA_0   = 12'h440,
    ADDR_B_6_CTRL     = 12'h444,
    ADDR_B_7_DATA_0   = 12'h448,
    ADDR_B_7_CTRL     = 12'h44c,
    ADDR_B_8_DATA_0   = 12'h450,
    ADDR_B_8_CTRL     = 12'h454,
    ADDR_B_9_DATA_0   = 12'h458,
    ADDR_B_9_CTRL     = 12'h45c,
    ADDR_B_10_DATA_0  = 12'h460,
    ADDR_B_10_CTRL    = 12'h464,
    ADDR_B_11_DATA_0  = 12'h468,
    ADDR_B_11_CTRL    = 12'h46c,
    ADDR_B_12_DATA_0  = 12'h470,
    ADDR_B_12_CTRL    = 12'h474,
    ADDR_B_13_DATA_0  = 12'h478,
    ADDR_B_13_CTRL    = 12'h47c,
    ADDR_B_14_DATA_0  = 12'h480,
    ADDR_B_14_CTRL    = 12'h484,
    ADDR_B_15_DATA_0  = 12'h488,
    ADDR_B_15_CTRL    = 12'h48c,
    ADDR_B_16_DATA_0  = 12'h490,
    ADDR_B_16_CTRL    = 12'h494,
    ADDR_B_17_DATA_0  = 12'h498,
    ADDR_B_17_CTRL    = 12'h49c,
    ADDR_B_18_DATA_0  = 12'h4a0,
    ADDR_B_18_CTRL    = 12'h4a4,
    ADDR_B_19_DATA_0  = 12'h4a8,
    ADDR_B_19_CTRL    = 12'h4ac,
    ADDR_B_20_DATA_0  = 12'h4b0,
    ADDR_B_20_CTRL    = 12'h4b4,
    ADDR_B_21_DATA_0  = 12'h4b8,
    ADDR_B_21_CTRL    = 12'h4bc,
    ADDR_B_22_DATA_0  = 12'h4c0,
    ADDR_B_22_CTRL    = 12'h4c4,
    ADDR_B_23_DATA_0  = 12'h4c8,
    ADDR_B_23_CTRL    = 12'h4cc,
    ADDR_B_24_DATA_0  = 12'h4d0,
    ADDR_B_24_CTRL    = 12'h4d4,
    ADDR_B_25_DATA_0  = 12'h4d8,
    ADDR_B_25_CTRL    = 12'h4dc,
    ADDR_B_26_DATA_0  = 12'h4e0,
    ADDR_B_26_CTRL    = 12'h4e4,
    ADDR_B_27_DATA_0  = 12'h4e8,
    ADDR_B_27_CTRL    = 12'h4ec,
    ADDR_B_28_DATA_0  = 12'h4f0,
    ADDR_B_28_CTRL    = 12'h4f4,
    ADDR_B_29_DATA_0  = 12'h4f8,
    ADDR_B_29_CTRL    = 12'h4fc,
    ADDR_B_30_DATA_0  = 12'h500,
    ADDR_B_30_CTRL    = 12'h504,
    ADDR_B_31_DATA_0  = 12'h508,
    ADDR_B_31_CTRL    = 12'h50c,
    ADDR_B_32_DATA_0  = 12'h510,
    ADDR_B_32_CTRL    = 12'h514,
    ADDR_B_33_DATA_0  = 12'h518,
    ADDR_B_33_CTRL    = 12'h51c,
    ADDR_B_34_DATA_0  = 12'h520,
    ADDR_B_34_CTRL    = 12'h524,
    ADDR_B_35_DATA_0  = 12'h528,
    ADDR_B_35_CTRL    = 12'h52c,
    ADDR_B_36_DATA_0  = 12'h530,
    ADDR_B_36_CTRL    = 12'h534,
    ADDR_B_37_DATA_0  = 12'h538,
    ADDR_B_37_CTRL    = 12'h53c,
    ADDR_B_38_DATA_0  = 12'h540,
    ADDR_B_38_CTRL    = 12'h544,
    ADDR_B_39_DATA_0  = 12'h548,
    ADDR_B_39_CTRL    = 12'h54c,
    ADDR_B_40_DATA_0  = 12'h550,
    ADDR_B_40_CTRL    = 12'h554,
    ADDR_B_41_DATA_0  = 12'h558,
    ADDR_B_41_CTRL    = 12'h55c,
    ADDR_B_42_DATA_0  = 12'h560,
    ADDR_B_42_CTRL    = 12'h564,
    ADDR_B_43_DATA_0  = 12'h568,
    ADDR_B_43_CTRL    = 12'h56c,
    ADDR_B_44_DATA_0  = 12'h570,
    ADDR_B_44_CTRL    = 12'h574,
    ADDR_B_45_DATA_0  = 12'h578,
    ADDR_B_45_CTRL    = 12'h57c,
    ADDR_B_46_DATA_0  = 12'h580,
    ADDR_B_46_CTRL    = 12'h584,
    ADDR_B_47_DATA_0  = 12'h588,
    ADDR_B_47_CTRL    = 12'h58c,
    ADDR_B_48_DATA_0  = 12'h590,
    ADDR_B_48_CTRL    = 12'h594,
    ADDR_B_49_DATA_0  = 12'h598,
    ADDR_B_49_CTRL    = 12'h59c,
    ADDR_B_50_DATA_0  = 12'h5a0,
    ADDR_B_50_CTRL    = 12'h5a4,
    ADDR_B_51_DATA_0  = 12'h5a8,
    ADDR_B_51_CTRL    = 12'h5ac,
    ADDR_B_52_DATA_0  = 12'h5b0,
    ADDR_B_52_CTRL    = 12'h5b4,
    ADDR_B_53_DATA_0  = 12'h5b8,
    ADDR_B_53_CTRL    = 12'h5bc,
    ADDR_B_54_DATA_0  = 12'h5c0,
    ADDR_B_54_CTRL    = 12'h5c4,
    ADDR_B_55_DATA_0  = 12'h5c8,
    ADDR_B_55_CTRL    = 12'h5cc,
    ADDR_B_56_DATA_0  = 12'h5d0,
    ADDR_B_56_CTRL    = 12'h5d4,
    ADDR_B_57_DATA_0  = 12'h5d8,
    ADDR_B_57_CTRL    = 12'h5dc,
    ADDR_B_58_DATA_0  = 12'h5e0,
    ADDR_B_58_CTRL    = 12'h5e4,
    ADDR_B_59_DATA_0  = 12'h5e8,
    ADDR_B_59_CTRL    = 12'h5ec,
    ADDR_B_60_DATA_0  = 12'h5f0,
    ADDR_B_60_CTRL    = 12'h5f4,
    ADDR_B_61_DATA_0  = 12'h5f8,
    ADDR_B_61_CTRL    = 12'h5fc,
    ADDR_B_62_DATA_0  = 12'h600,
    ADDR_B_62_CTRL    = 12'h604,
    ADDR_B_63_DATA_0  = 12'h608,
    ADDR_B_63_CTRL    = 12'h60c,
    ADDR_B_64_DATA_0  = 12'h610,
    ADDR_B_64_CTRL    = 12'h614,
    ADDR_B_65_DATA_0  = 12'h618,
    ADDR_B_65_CTRL    = 12'h61c,
    ADDR_B_66_DATA_0  = 12'h620,
    ADDR_B_66_CTRL    = 12'h624,
    ADDR_B_67_DATA_0  = 12'h628,
    ADDR_B_67_CTRL    = 12'h62c,
    ADDR_B_68_DATA_0  = 12'h630,
    ADDR_B_68_CTRL    = 12'h634,
    ADDR_B_69_DATA_0  = 12'h638,
    ADDR_B_69_CTRL    = 12'h63c,
    ADDR_B_70_DATA_0  = 12'h640,
    ADDR_B_70_CTRL    = 12'h644,
    ADDR_B_71_DATA_0  = 12'h648,
    ADDR_B_71_CTRL    = 12'h64c,
    ADDR_B_72_DATA_0  = 12'h650,
    ADDR_B_72_CTRL    = 12'h654,
    ADDR_B_73_DATA_0  = 12'h658,
    ADDR_B_73_CTRL    = 12'h65c,
    ADDR_B_74_DATA_0  = 12'h660,
    ADDR_B_74_CTRL    = 12'h664,
    ADDR_B_75_DATA_0  = 12'h668,
    ADDR_B_75_CTRL    = 12'h66c,
    ADDR_B_76_DATA_0  = 12'h670,
    ADDR_B_76_CTRL    = 12'h674,
    ADDR_B_77_DATA_0  = 12'h678,
    ADDR_B_77_CTRL    = 12'h67c,
    ADDR_B_78_DATA_0  = 12'h680,
    ADDR_B_78_CTRL    = 12'h684,
    ADDR_B_79_DATA_0  = 12'h688,
    ADDR_B_79_CTRL    = 12'h68c,
    ADDR_B_80_DATA_0  = 12'h690,
    ADDR_B_80_CTRL    = 12'h694,
    ADDR_B_81_DATA_0  = 12'h698,
    ADDR_B_81_CTRL    = 12'h69c,
    ADDR_B_82_DATA_0  = 12'h6a0,
    ADDR_B_82_CTRL    = 12'h6a4,
    ADDR_B_83_DATA_0  = 12'h6a8,
    ADDR_B_83_CTRL    = 12'h6ac,
    ADDR_B_84_DATA_0  = 12'h6b0,
    ADDR_B_84_CTRL    = 12'h6b4,
    ADDR_B_85_DATA_0  = 12'h6b8,
    ADDR_B_85_CTRL    = 12'h6bc,
    ADDR_B_86_DATA_0  = 12'h6c0,
    ADDR_B_86_CTRL    = 12'h6c4,
    ADDR_B_87_DATA_0  = 12'h6c8,
    ADDR_B_87_CTRL    = 12'h6cc,
    ADDR_B_88_DATA_0  = 12'h6d0,
    ADDR_B_88_CTRL    = 12'h6d4,
    ADDR_B_89_DATA_0  = 12'h6d8,
    ADDR_B_89_CTRL    = 12'h6dc,
    ADDR_B_90_DATA_0  = 12'h6e0,
    ADDR_B_90_CTRL    = 12'h6e4,
    ADDR_B_91_DATA_0  = 12'h6e8,
    ADDR_B_91_CTRL    = 12'h6ec,
    ADDR_B_92_DATA_0  = 12'h6f0,
    ADDR_B_92_CTRL    = 12'h6f4,
    ADDR_B_93_DATA_0  = 12'h6f8,
    ADDR_B_93_CTRL    = 12'h6fc,
    ADDR_B_94_DATA_0  = 12'h700,
    ADDR_B_94_CTRL    = 12'h704,
    ADDR_B_95_DATA_0  = 12'h708,
    ADDR_B_95_CTRL    = 12'h70c,
    ADDR_B_96_DATA_0  = 12'h710,
    ADDR_B_96_CTRL    = 12'h714,
    ADDR_B_97_DATA_0  = 12'h718,
    ADDR_B_97_CTRL    = 12'h71c,
    ADDR_B_98_DATA_0  = 12'h720,
    ADDR_B_98_CTRL    = 12'h724,
    ADDR_B_99_DATA_0  = 12'h728,
    ADDR_B_99_CTRL    = 12'h72c,
    ADDR_B_100_DATA_0 = 12'h730,
    ADDR_B_100_CTRL   = 12'h734,
    ADDR_B_101_DATA_0 = 12'h738,
    ADDR_B_101_CTRL   = 12'h73c,
    ADDR_B_102_DATA_0 = 12'h740,
    ADDR_B_102_CTRL   = 12'h744,
    ADDR_B_103_DATA_0 = 12'h748,
    ADDR_B_103_CTRL   = 12'h74c,
    ADDR_B_104_DATA_0 = 12'h750,
    ADDR_B_104_CTRL   = 12'h754,
    ADDR_B_105_DATA_0 = 12'h758,
    ADDR_B_105_CTRL   = 12'h75c,
    ADDR_B_106_DATA_0 = 12'h760,
    ADDR_B_106_CTRL   = 12'h764,
    ADDR_B_107_DATA_0 = 12'h768,
    ADDR_B_107_CTRL   = 12'h76c,
    ADDR_B_108_DATA_0 = 12'h770,
    ADDR_B_108_CTRL   = 12'h774,
    ADDR_B_109_DATA_0 = 12'h778,
    ADDR_B_109_CTRL   = 12'h77c,
    ADDR_B_110_DATA_0 = 12'h780,
    ADDR_B_110_CTRL   = 12'h784,
    ADDR_B_111_DATA_0 = 12'h788,
    ADDR_B_111_CTRL   = 12'h78c,
    ADDR_B_112_DATA_0 = 12'h790,
    ADDR_B_112_CTRL   = 12'h794,
    ADDR_B_113_DATA_0 = 12'h798,
    ADDR_B_113_CTRL   = 12'h79c,
    ADDR_B_114_DATA_0 = 12'h7a0,
    ADDR_B_114_CTRL   = 12'h7a4,
    ADDR_B_115_DATA_0 = 12'h7a8,
    ADDR_B_115_CTRL   = 12'h7ac,
    ADDR_B_116_DATA_0 = 12'h7b0,
    ADDR_B_116_CTRL   = 12'h7b4,
    ADDR_B_117_DATA_0 = 12'h7b8,
    ADDR_B_117_CTRL   = 12'h7bc,
    ADDR_B_118_DATA_0 = 12'h7c0,
    ADDR_B_118_CTRL   = 12'h7c4,
    ADDR_B_119_DATA_0 = 12'h7c8,
    ADDR_B_119_CTRL   = 12'h7cc,
    ADDR_B_120_DATA_0 = 12'h7d0,
    ADDR_B_120_CTRL   = 12'h7d4,
    ADDR_B_121_DATA_0 = 12'h7d8,
    ADDR_B_121_CTRL   = 12'h7dc,
    ADDR_B_122_DATA_0 = 12'h7e0,
    ADDR_B_122_CTRL   = 12'h7e4,
    ADDR_B_123_DATA_0 = 12'h7e8,
    ADDR_B_123_CTRL   = 12'h7ec,
    ADDR_B_124_DATA_0 = 12'h7f0,
    ADDR_B_124_CTRL   = 12'h7f4,
    ADDR_B_125_DATA_0 = 12'h7f8,
    ADDR_B_125_CTRL   = 12'h7fc,
    ADDR_B_126_DATA_0 = 12'h800,
    ADDR_B_126_CTRL   = 12'h804,
    ADDR_B_127_DATA_0 = 12'h808,
    ADDR_B_127_CTRL   = 12'h80c,
    WRIDLE            = 2'd0,
    WRDATA            = 2'd1,
    WRRESP            = 2'd2,
    WRRESET           = 2'd3,
    RDIDLE            = 2'd0,
    RDDATA            = 2'd1,
    RDRESET           = 2'd2,
    ADDR_BITS                = 12;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_A_0 = 'b0;
    reg  [31:0]                   int_A_1 = 'b0;
    reg  [31:0]                   int_A_2 = 'b0;
    reg  [31:0]                   int_A_3 = 'b0;
    reg  [31:0]                   int_A_4 = 'b0;
    reg  [31:0]                   int_A_5 = 'b0;
    reg  [31:0]                   int_A_6 = 'b0;
    reg  [31:0]                   int_A_7 = 'b0;
    reg  [31:0]                   int_A_8 = 'b0;
    reg  [31:0]                   int_A_9 = 'b0;
    reg  [31:0]                   int_A_10 = 'b0;
    reg  [31:0]                   int_A_11 = 'b0;
    reg  [31:0]                   int_A_12 = 'b0;
    reg  [31:0]                   int_A_13 = 'b0;
    reg  [31:0]                   int_A_14 = 'b0;
    reg  [31:0]                   int_A_15 = 'b0;
    reg  [31:0]                   int_A_16 = 'b0;
    reg  [31:0]                   int_A_17 = 'b0;
    reg  [31:0]                   int_A_18 = 'b0;
    reg  [31:0]                   int_A_19 = 'b0;
    reg  [31:0]                   int_A_20 = 'b0;
    reg  [31:0]                   int_A_21 = 'b0;
    reg  [31:0]                   int_A_22 = 'b0;
    reg  [31:0]                   int_A_23 = 'b0;
    reg  [31:0]                   int_A_24 = 'b0;
    reg  [31:0]                   int_A_25 = 'b0;
    reg  [31:0]                   int_A_26 = 'b0;
    reg  [31:0]                   int_A_27 = 'b0;
    reg  [31:0]                   int_A_28 = 'b0;
    reg  [31:0]                   int_A_29 = 'b0;
    reg  [31:0]                   int_A_30 = 'b0;
    reg  [31:0]                   int_A_31 = 'b0;
    reg  [31:0]                   int_A_32 = 'b0;
    reg  [31:0]                   int_A_33 = 'b0;
    reg  [31:0]                   int_A_34 = 'b0;
    reg  [31:0]                   int_A_35 = 'b0;
    reg  [31:0]                   int_A_36 = 'b0;
    reg  [31:0]                   int_A_37 = 'b0;
    reg  [31:0]                   int_A_38 = 'b0;
    reg  [31:0]                   int_A_39 = 'b0;
    reg  [31:0]                   int_A_40 = 'b0;
    reg  [31:0]                   int_A_41 = 'b0;
    reg  [31:0]                   int_A_42 = 'b0;
    reg  [31:0]                   int_A_43 = 'b0;
    reg  [31:0]                   int_A_44 = 'b0;
    reg  [31:0]                   int_A_45 = 'b0;
    reg  [31:0]                   int_A_46 = 'b0;
    reg  [31:0]                   int_A_47 = 'b0;
    reg  [31:0]                   int_A_48 = 'b0;
    reg  [31:0]                   int_A_49 = 'b0;
    reg  [31:0]                   int_A_50 = 'b0;
    reg  [31:0]                   int_A_51 = 'b0;
    reg  [31:0]                   int_A_52 = 'b0;
    reg  [31:0]                   int_A_53 = 'b0;
    reg  [31:0]                   int_A_54 = 'b0;
    reg  [31:0]                   int_A_55 = 'b0;
    reg  [31:0]                   int_A_56 = 'b0;
    reg  [31:0]                   int_A_57 = 'b0;
    reg  [31:0]                   int_A_58 = 'b0;
    reg  [31:0]                   int_A_59 = 'b0;
    reg  [31:0]                   int_A_60 = 'b0;
    reg  [31:0]                   int_A_61 = 'b0;
    reg  [31:0]                   int_A_62 = 'b0;
    reg  [31:0]                   int_A_63 = 'b0;
    reg  [31:0]                   int_A_64 = 'b0;
    reg  [31:0]                   int_A_65 = 'b0;
    reg  [31:0]                   int_A_66 = 'b0;
    reg  [31:0]                   int_A_67 = 'b0;
    reg  [31:0]                   int_A_68 = 'b0;
    reg  [31:0]                   int_A_69 = 'b0;
    reg  [31:0]                   int_A_70 = 'b0;
    reg  [31:0]                   int_A_71 = 'b0;
    reg  [31:0]                   int_A_72 = 'b0;
    reg  [31:0]                   int_A_73 = 'b0;
    reg  [31:0]                   int_A_74 = 'b0;
    reg  [31:0]                   int_A_75 = 'b0;
    reg  [31:0]                   int_A_76 = 'b0;
    reg  [31:0]                   int_A_77 = 'b0;
    reg  [31:0]                   int_A_78 = 'b0;
    reg  [31:0]                   int_A_79 = 'b0;
    reg  [31:0]                   int_A_80 = 'b0;
    reg  [31:0]                   int_A_81 = 'b0;
    reg  [31:0]                   int_A_82 = 'b0;
    reg  [31:0]                   int_A_83 = 'b0;
    reg  [31:0]                   int_A_84 = 'b0;
    reg  [31:0]                   int_A_85 = 'b0;
    reg  [31:0]                   int_A_86 = 'b0;
    reg  [31:0]                   int_A_87 = 'b0;
    reg  [31:0]                   int_A_88 = 'b0;
    reg  [31:0]                   int_A_89 = 'b0;
    reg  [31:0]                   int_A_90 = 'b0;
    reg  [31:0]                   int_A_91 = 'b0;
    reg  [31:0]                   int_A_92 = 'b0;
    reg  [31:0]                   int_A_93 = 'b0;
    reg  [31:0]                   int_A_94 = 'b0;
    reg  [31:0]                   int_A_95 = 'b0;
    reg  [31:0]                   int_A_96 = 'b0;
    reg  [31:0]                   int_A_97 = 'b0;
    reg  [31:0]                   int_A_98 = 'b0;
    reg  [31:0]                   int_A_99 = 'b0;
    reg  [31:0]                   int_A_100 = 'b0;
    reg  [31:0]                   int_A_101 = 'b0;
    reg  [31:0]                   int_A_102 = 'b0;
    reg  [31:0]                   int_A_103 = 'b0;
    reg  [31:0]                   int_A_104 = 'b0;
    reg  [31:0]                   int_A_105 = 'b0;
    reg  [31:0]                   int_A_106 = 'b0;
    reg  [31:0]                   int_A_107 = 'b0;
    reg  [31:0]                   int_A_108 = 'b0;
    reg  [31:0]                   int_A_109 = 'b0;
    reg  [31:0]                   int_A_110 = 'b0;
    reg  [31:0]                   int_A_111 = 'b0;
    reg  [31:0]                   int_A_112 = 'b0;
    reg  [31:0]                   int_A_113 = 'b0;
    reg  [31:0]                   int_A_114 = 'b0;
    reg  [31:0]                   int_A_115 = 'b0;
    reg  [31:0]                   int_A_116 = 'b0;
    reg  [31:0]                   int_A_117 = 'b0;
    reg  [31:0]                   int_A_118 = 'b0;
    reg  [31:0]                   int_A_119 = 'b0;
    reg  [31:0]                   int_A_120 = 'b0;
    reg  [31:0]                   int_A_121 = 'b0;
    reg  [31:0]                   int_A_122 = 'b0;
    reg  [31:0]                   int_A_123 = 'b0;
    reg  [31:0]                   int_A_124 = 'b0;
    reg  [31:0]                   int_A_125 = 'b0;
    reg  [31:0]                   int_A_126 = 'b0;
    reg  [31:0]                   int_A_127 = 'b0;
    reg  [31:0]                   int_B_0 = 'b0;
    reg  [31:0]                   int_B_1 = 'b0;
    reg  [31:0]                   int_B_2 = 'b0;
    reg  [31:0]                   int_B_3 = 'b0;
    reg  [31:0]                   int_B_4 = 'b0;
    reg  [31:0]                   int_B_5 = 'b0;
    reg  [31:0]                   int_B_6 = 'b0;
    reg  [31:0]                   int_B_7 = 'b0;
    reg  [31:0]                   int_B_8 = 'b0;
    reg  [31:0]                   int_B_9 = 'b0;
    reg  [31:0]                   int_B_10 = 'b0;
    reg  [31:0]                   int_B_11 = 'b0;
    reg  [31:0]                   int_B_12 = 'b0;
    reg  [31:0]                   int_B_13 = 'b0;
    reg  [31:0]                   int_B_14 = 'b0;
    reg  [31:0]                   int_B_15 = 'b0;
    reg  [31:0]                   int_B_16 = 'b0;
    reg  [31:0]                   int_B_17 = 'b0;
    reg  [31:0]                   int_B_18 = 'b0;
    reg  [31:0]                   int_B_19 = 'b0;
    reg  [31:0]                   int_B_20 = 'b0;
    reg  [31:0]                   int_B_21 = 'b0;
    reg  [31:0]                   int_B_22 = 'b0;
    reg  [31:0]                   int_B_23 = 'b0;
    reg  [31:0]                   int_B_24 = 'b0;
    reg  [31:0]                   int_B_25 = 'b0;
    reg  [31:0]                   int_B_26 = 'b0;
    reg  [31:0]                   int_B_27 = 'b0;
    reg  [31:0]                   int_B_28 = 'b0;
    reg  [31:0]                   int_B_29 = 'b0;
    reg  [31:0]                   int_B_30 = 'b0;
    reg  [31:0]                   int_B_31 = 'b0;
    reg  [31:0]                   int_B_32 = 'b0;
    reg  [31:0]                   int_B_33 = 'b0;
    reg  [31:0]                   int_B_34 = 'b0;
    reg  [31:0]                   int_B_35 = 'b0;
    reg  [31:0]                   int_B_36 = 'b0;
    reg  [31:0]                   int_B_37 = 'b0;
    reg  [31:0]                   int_B_38 = 'b0;
    reg  [31:0]                   int_B_39 = 'b0;
    reg  [31:0]                   int_B_40 = 'b0;
    reg  [31:0]                   int_B_41 = 'b0;
    reg  [31:0]                   int_B_42 = 'b0;
    reg  [31:0]                   int_B_43 = 'b0;
    reg  [31:0]                   int_B_44 = 'b0;
    reg  [31:0]                   int_B_45 = 'b0;
    reg  [31:0]                   int_B_46 = 'b0;
    reg  [31:0]                   int_B_47 = 'b0;
    reg  [31:0]                   int_B_48 = 'b0;
    reg  [31:0]                   int_B_49 = 'b0;
    reg  [31:0]                   int_B_50 = 'b0;
    reg  [31:0]                   int_B_51 = 'b0;
    reg  [31:0]                   int_B_52 = 'b0;
    reg  [31:0]                   int_B_53 = 'b0;
    reg  [31:0]                   int_B_54 = 'b0;
    reg  [31:0]                   int_B_55 = 'b0;
    reg  [31:0]                   int_B_56 = 'b0;
    reg  [31:0]                   int_B_57 = 'b0;
    reg  [31:0]                   int_B_58 = 'b0;
    reg  [31:0]                   int_B_59 = 'b0;
    reg  [31:0]                   int_B_60 = 'b0;
    reg  [31:0]                   int_B_61 = 'b0;
    reg  [31:0]                   int_B_62 = 'b0;
    reg  [31:0]                   int_B_63 = 'b0;
    reg  [31:0]                   int_B_64 = 'b0;
    reg  [31:0]                   int_B_65 = 'b0;
    reg  [31:0]                   int_B_66 = 'b0;
    reg  [31:0]                   int_B_67 = 'b0;
    reg  [31:0]                   int_B_68 = 'b0;
    reg  [31:0]                   int_B_69 = 'b0;
    reg  [31:0]                   int_B_70 = 'b0;
    reg  [31:0]                   int_B_71 = 'b0;
    reg  [31:0]                   int_B_72 = 'b0;
    reg  [31:0]                   int_B_73 = 'b0;
    reg  [31:0]                   int_B_74 = 'b0;
    reg  [31:0]                   int_B_75 = 'b0;
    reg  [31:0]                   int_B_76 = 'b0;
    reg  [31:0]                   int_B_77 = 'b0;
    reg  [31:0]                   int_B_78 = 'b0;
    reg  [31:0]                   int_B_79 = 'b0;
    reg  [31:0]                   int_B_80 = 'b0;
    reg  [31:0]                   int_B_81 = 'b0;
    reg  [31:0]                   int_B_82 = 'b0;
    reg  [31:0]                   int_B_83 = 'b0;
    reg  [31:0]                   int_B_84 = 'b0;
    reg  [31:0]                   int_B_85 = 'b0;
    reg  [31:0]                   int_B_86 = 'b0;
    reg  [31:0]                   int_B_87 = 'b0;
    reg  [31:0]                   int_B_88 = 'b0;
    reg  [31:0]                   int_B_89 = 'b0;
    reg  [31:0]                   int_B_90 = 'b0;
    reg  [31:0]                   int_B_91 = 'b0;
    reg  [31:0]                   int_B_92 = 'b0;
    reg  [31:0]                   int_B_93 = 'b0;
    reg  [31:0]                   int_B_94 = 'b0;
    reg  [31:0]                   int_B_95 = 'b0;
    reg  [31:0]                   int_B_96 = 'b0;
    reg  [31:0]                   int_B_97 = 'b0;
    reg  [31:0]                   int_B_98 = 'b0;
    reg  [31:0]                   int_B_99 = 'b0;
    reg  [31:0]                   int_B_100 = 'b0;
    reg  [31:0]                   int_B_101 = 'b0;
    reg  [31:0]                   int_B_102 = 'b0;
    reg  [31:0]                   int_B_103 = 'b0;
    reg  [31:0]                   int_B_104 = 'b0;
    reg  [31:0]                   int_B_105 = 'b0;
    reg  [31:0]                   int_B_106 = 'b0;
    reg  [31:0]                   int_B_107 = 'b0;
    reg  [31:0]                   int_B_108 = 'b0;
    reg  [31:0]                   int_B_109 = 'b0;
    reg  [31:0]                   int_B_110 = 'b0;
    reg  [31:0]                   int_B_111 = 'b0;
    reg  [31:0]                   int_B_112 = 'b0;
    reg  [31:0]                   int_B_113 = 'b0;
    reg  [31:0]                   int_B_114 = 'b0;
    reg  [31:0]                   int_B_115 = 'b0;
    reg  [31:0]                   int_B_116 = 'b0;
    reg  [31:0]                   int_B_117 = 'b0;
    reg  [31:0]                   int_B_118 = 'b0;
    reg  [31:0]                   int_B_119 = 'b0;
    reg  [31:0]                   int_B_120 = 'b0;
    reg  [31:0]                   int_B_121 = 'b0;
    reg  [31:0]                   int_B_122 = 'b0;
    reg  [31:0]                   int_B_123 = 'b0;
    reg  [31:0]                   int_B_124 = 'b0;
    reg  [31:0]                   int_B_125 = 'b0;
    reg  [31:0]                   int_B_126 = 'b0;
    reg  [31:0]                   int_B_127 = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_A_0_DATA_0: begin
                    rdata <= int_A_0[31:0];
                end
                ADDR_A_1_DATA_0: begin
                    rdata <= int_A_1[31:0];
                end
                ADDR_A_2_DATA_0: begin
                    rdata <= int_A_2[31:0];
                end
                ADDR_A_3_DATA_0: begin
                    rdata <= int_A_3[31:0];
                end
                ADDR_A_4_DATA_0: begin
                    rdata <= int_A_4[31:0];
                end
                ADDR_A_5_DATA_0: begin
                    rdata <= int_A_5[31:0];
                end
                ADDR_A_6_DATA_0: begin
                    rdata <= int_A_6[31:0];
                end
                ADDR_A_7_DATA_0: begin
                    rdata <= int_A_7[31:0];
                end
                ADDR_A_8_DATA_0: begin
                    rdata <= int_A_8[31:0];
                end
                ADDR_A_9_DATA_0: begin
                    rdata <= int_A_9[31:0];
                end
                ADDR_A_10_DATA_0: begin
                    rdata <= int_A_10[31:0];
                end
                ADDR_A_11_DATA_0: begin
                    rdata <= int_A_11[31:0];
                end
                ADDR_A_12_DATA_0: begin
                    rdata <= int_A_12[31:0];
                end
                ADDR_A_13_DATA_0: begin
                    rdata <= int_A_13[31:0];
                end
                ADDR_A_14_DATA_0: begin
                    rdata <= int_A_14[31:0];
                end
                ADDR_A_15_DATA_0: begin
                    rdata <= int_A_15[31:0];
                end
                ADDR_A_16_DATA_0: begin
                    rdata <= int_A_16[31:0];
                end
                ADDR_A_17_DATA_0: begin
                    rdata <= int_A_17[31:0];
                end
                ADDR_A_18_DATA_0: begin
                    rdata <= int_A_18[31:0];
                end
                ADDR_A_19_DATA_0: begin
                    rdata <= int_A_19[31:0];
                end
                ADDR_A_20_DATA_0: begin
                    rdata <= int_A_20[31:0];
                end
                ADDR_A_21_DATA_0: begin
                    rdata <= int_A_21[31:0];
                end
                ADDR_A_22_DATA_0: begin
                    rdata <= int_A_22[31:0];
                end
                ADDR_A_23_DATA_0: begin
                    rdata <= int_A_23[31:0];
                end
                ADDR_A_24_DATA_0: begin
                    rdata <= int_A_24[31:0];
                end
                ADDR_A_25_DATA_0: begin
                    rdata <= int_A_25[31:0];
                end
                ADDR_A_26_DATA_0: begin
                    rdata <= int_A_26[31:0];
                end
                ADDR_A_27_DATA_0: begin
                    rdata <= int_A_27[31:0];
                end
                ADDR_A_28_DATA_0: begin
                    rdata <= int_A_28[31:0];
                end
                ADDR_A_29_DATA_0: begin
                    rdata <= int_A_29[31:0];
                end
                ADDR_A_30_DATA_0: begin
                    rdata <= int_A_30[31:0];
                end
                ADDR_A_31_DATA_0: begin
                    rdata <= int_A_31[31:0];
                end
                ADDR_A_32_DATA_0: begin
                    rdata <= int_A_32[31:0];
                end
                ADDR_A_33_DATA_0: begin
                    rdata <= int_A_33[31:0];
                end
                ADDR_A_34_DATA_0: begin
                    rdata <= int_A_34[31:0];
                end
                ADDR_A_35_DATA_0: begin
                    rdata <= int_A_35[31:0];
                end
                ADDR_A_36_DATA_0: begin
                    rdata <= int_A_36[31:0];
                end
                ADDR_A_37_DATA_0: begin
                    rdata <= int_A_37[31:0];
                end
                ADDR_A_38_DATA_0: begin
                    rdata <= int_A_38[31:0];
                end
                ADDR_A_39_DATA_0: begin
                    rdata <= int_A_39[31:0];
                end
                ADDR_A_40_DATA_0: begin
                    rdata <= int_A_40[31:0];
                end
                ADDR_A_41_DATA_0: begin
                    rdata <= int_A_41[31:0];
                end
                ADDR_A_42_DATA_0: begin
                    rdata <= int_A_42[31:0];
                end
                ADDR_A_43_DATA_0: begin
                    rdata <= int_A_43[31:0];
                end
                ADDR_A_44_DATA_0: begin
                    rdata <= int_A_44[31:0];
                end
                ADDR_A_45_DATA_0: begin
                    rdata <= int_A_45[31:0];
                end
                ADDR_A_46_DATA_0: begin
                    rdata <= int_A_46[31:0];
                end
                ADDR_A_47_DATA_0: begin
                    rdata <= int_A_47[31:0];
                end
                ADDR_A_48_DATA_0: begin
                    rdata <= int_A_48[31:0];
                end
                ADDR_A_49_DATA_0: begin
                    rdata <= int_A_49[31:0];
                end
                ADDR_A_50_DATA_0: begin
                    rdata <= int_A_50[31:0];
                end
                ADDR_A_51_DATA_0: begin
                    rdata <= int_A_51[31:0];
                end
                ADDR_A_52_DATA_0: begin
                    rdata <= int_A_52[31:0];
                end
                ADDR_A_53_DATA_0: begin
                    rdata <= int_A_53[31:0];
                end
                ADDR_A_54_DATA_0: begin
                    rdata <= int_A_54[31:0];
                end
                ADDR_A_55_DATA_0: begin
                    rdata <= int_A_55[31:0];
                end
                ADDR_A_56_DATA_0: begin
                    rdata <= int_A_56[31:0];
                end
                ADDR_A_57_DATA_0: begin
                    rdata <= int_A_57[31:0];
                end
                ADDR_A_58_DATA_0: begin
                    rdata <= int_A_58[31:0];
                end
                ADDR_A_59_DATA_0: begin
                    rdata <= int_A_59[31:0];
                end
                ADDR_A_60_DATA_0: begin
                    rdata <= int_A_60[31:0];
                end
                ADDR_A_61_DATA_0: begin
                    rdata <= int_A_61[31:0];
                end
                ADDR_A_62_DATA_0: begin
                    rdata <= int_A_62[31:0];
                end
                ADDR_A_63_DATA_0: begin
                    rdata <= int_A_63[31:0];
                end
                ADDR_A_64_DATA_0: begin
                    rdata <= int_A_64[31:0];
                end
                ADDR_A_65_DATA_0: begin
                    rdata <= int_A_65[31:0];
                end
                ADDR_A_66_DATA_0: begin
                    rdata <= int_A_66[31:0];
                end
                ADDR_A_67_DATA_0: begin
                    rdata <= int_A_67[31:0];
                end
                ADDR_A_68_DATA_0: begin
                    rdata <= int_A_68[31:0];
                end
                ADDR_A_69_DATA_0: begin
                    rdata <= int_A_69[31:0];
                end
                ADDR_A_70_DATA_0: begin
                    rdata <= int_A_70[31:0];
                end
                ADDR_A_71_DATA_0: begin
                    rdata <= int_A_71[31:0];
                end
                ADDR_A_72_DATA_0: begin
                    rdata <= int_A_72[31:0];
                end
                ADDR_A_73_DATA_0: begin
                    rdata <= int_A_73[31:0];
                end
                ADDR_A_74_DATA_0: begin
                    rdata <= int_A_74[31:0];
                end
                ADDR_A_75_DATA_0: begin
                    rdata <= int_A_75[31:0];
                end
                ADDR_A_76_DATA_0: begin
                    rdata <= int_A_76[31:0];
                end
                ADDR_A_77_DATA_0: begin
                    rdata <= int_A_77[31:0];
                end
                ADDR_A_78_DATA_0: begin
                    rdata <= int_A_78[31:0];
                end
                ADDR_A_79_DATA_0: begin
                    rdata <= int_A_79[31:0];
                end
                ADDR_A_80_DATA_0: begin
                    rdata <= int_A_80[31:0];
                end
                ADDR_A_81_DATA_0: begin
                    rdata <= int_A_81[31:0];
                end
                ADDR_A_82_DATA_0: begin
                    rdata <= int_A_82[31:0];
                end
                ADDR_A_83_DATA_0: begin
                    rdata <= int_A_83[31:0];
                end
                ADDR_A_84_DATA_0: begin
                    rdata <= int_A_84[31:0];
                end
                ADDR_A_85_DATA_0: begin
                    rdata <= int_A_85[31:0];
                end
                ADDR_A_86_DATA_0: begin
                    rdata <= int_A_86[31:0];
                end
                ADDR_A_87_DATA_0: begin
                    rdata <= int_A_87[31:0];
                end
                ADDR_A_88_DATA_0: begin
                    rdata <= int_A_88[31:0];
                end
                ADDR_A_89_DATA_0: begin
                    rdata <= int_A_89[31:0];
                end
                ADDR_A_90_DATA_0: begin
                    rdata <= int_A_90[31:0];
                end
                ADDR_A_91_DATA_0: begin
                    rdata <= int_A_91[31:0];
                end
                ADDR_A_92_DATA_0: begin
                    rdata <= int_A_92[31:0];
                end
                ADDR_A_93_DATA_0: begin
                    rdata <= int_A_93[31:0];
                end
                ADDR_A_94_DATA_0: begin
                    rdata <= int_A_94[31:0];
                end
                ADDR_A_95_DATA_0: begin
                    rdata <= int_A_95[31:0];
                end
                ADDR_A_96_DATA_0: begin
                    rdata <= int_A_96[31:0];
                end
                ADDR_A_97_DATA_0: begin
                    rdata <= int_A_97[31:0];
                end
                ADDR_A_98_DATA_0: begin
                    rdata <= int_A_98[31:0];
                end
                ADDR_A_99_DATA_0: begin
                    rdata <= int_A_99[31:0];
                end
                ADDR_A_100_DATA_0: begin
                    rdata <= int_A_100[31:0];
                end
                ADDR_A_101_DATA_0: begin
                    rdata <= int_A_101[31:0];
                end
                ADDR_A_102_DATA_0: begin
                    rdata <= int_A_102[31:0];
                end
                ADDR_A_103_DATA_0: begin
                    rdata <= int_A_103[31:0];
                end
                ADDR_A_104_DATA_0: begin
                    rdata <= int_A_104[31:0];
                end
                ADDR_A_105_DATA_0: begin
                    rdata <= int_A_105[31:0];
                end
                ADDR_A_106_DATA_0: begin
                    rdata <= int_A_106[31:0];
                end
                ADDR_A_107_DATA_0: begin
                    rdata <= int_A_107[31:0];
                end
                ADDR_A_108_DATA_0: begin
                    rdata <= int_A_108[31:0];
                end
                ADDR_A_109_DATA_0: begin
                    rdata <= int_A_109[31:0];
                end
                ADDR_A_110_DATA_0: begin
                    rdata <= int_A_110[31:0];
                end
                ADDR_A_111_DATA_0: begin
                    rdata <= int_A_111[31:0];
                end
                ADDR_A_112_DATA_0: begin
                    rdata <= int_A_112[31:0];
                end
                ADDR_A_113_DATA_0: begin
                    rdata <= int_A_113[31:0];
                end
                ADDR_A_114_DATA_0: begin
                    rdata <= int_A_114[31:0];
                end
                ADDR_A_115_DATA_0: begin
                    rdata <= int_A_115[31:0];
                end
                ADDR_A_116_DATA_0: begin
                    rdata <= int_A_116[31:0];
                end
                ADDR_A_117_DATA_0: begin
                    rdata <= int_A_117[31:0];
                end
                ADDR_A_118_DATA_0: begin
                    rdata <= int_A_118[31:0];
                end
                ADDR_A_119_DATA_0: begin
                    rdata <= int_A_119[31:0];
                end
                ADDR_A_120_DATA_0: begin
                    rdata <= int_A_120[31:0];
                end
                ADDR_A_121_DATA_0: begin
                    rdata <= int_A_121[31:0];
                end
                ADDR_A_122_DATA_0: begin
                    rdata <= int_A_122[31:0];
                end
                ADDR_A_123_DATA_0: begin
                    rdata <= int_A_123[31:0];
                end
                ADDR_A_124_DATA_0: begin
                    rdata <= int_A_124[31:0];
                end
                ADDR_A_125_DATA_0: begin
                    rdata <= int_A_125[31:0];
                end
                ADDR_A_126_DATA_0: begin
                    rdata <= int_A_126[31:0];
                end
                ADDR_A_127_DATA_0: begin
                    rdata <= int_A_127[31:0];
                end
                ADDR_B_0_DATA_0: begin
                    rdata <= int_B_0[31:0];
                end
                ADDR_B_1_DATA_0: begin
                    rdata <= int_B_1[31:0];
                end
                ADDR_B_2_DATA_0: begin
                    rdata <= int_B_2[31:0];
                end
                ADDR_B_3_DATA_0: begin
                    rdata <= int_B_3[31:0];
                end
                ADDR_B_4_DATA_0: begin
                    rdata <= int_B_4[31:0];
                end
                ADDR_B_5_DATA_0: begin
                    rdata <= int_B_5[31:0];
                end
                ADDR_B_6_DATA_0: begin
                    rdata <= int_B_6[31:0];
                end
                ADDR_B_7_DATA_0: begin
                    rdata <= int_B_7[31:0];
                end
                ADDR_B_8_DATA_0: begin
                    rdata <= int_B_8[31:0];
                end
                ADDR_B_9_DATA_0: begin
                    rdata <= int_B_9[31:0];
                end
                ADDR_B_10_DATA_0: begin
                    rdata <= int_B_10[31:0];
                end
                ADDR_B_11_DATA_0: begin
                    rdata <= int_B_11[31:0];
                end
                ADDR_B_12_DATA_0: begin
                    rdata <= int_B_12[31:0];
                end
                ADDR_B_13_DATA_0: begin
                    rdata <= int_B_13[31:0];
                end
                ADDR_B_14_DATA_0: begin
                    rdata <= int_B_14[31:0];
                end
                ADDR_B_15_DATA_0: begin
                    rdata <= int_B_15[31:0];
                end
                ADDR_B_16_DATA_0: begin
                    rdata <= int_B_16[31:0];
                end
                ADDR_B_17_DATA_0: begin
                    rdata <= int_B_17[31:0];
                end
                ADDR_B_18_DATA_0: begin
                    rdata <= int_B_18[31:0];
                end
                ADDR_B_19_DATA_0: begin
                    rdata <= int_B_19[31:0];
                end
                ADDR_B_20_DATA_0: begin
                    rdata <= int_B_20[31:0];
                end
                ADDR_B_21_DATA_0: begin
                    rdata <= int_B_21[31:0];
                end
                ADDR_B_22_DATA_0: begin
                    rdata <= int_B_22[31:0];
                end
                ADDR_B_23_DATA_0: begin
                    rdata <= int_B_23[31:0];
                end
                ADDR_B_24_DATA_0: begin
                    rdata <= int_B_24[31:0];
                end
                ADDR_B_25_DATA_0: begin
                    rdata <= int_B_25[31:0];
                end
                ADDR_B_26_DATA_0: begin
                    rdata <= int_B_26[31:0];
                end
                ADDR_B_27_DATA_0: begin
                    rdata <= int_B_27[31:0];
                end
                ADDR_B_28_DATA_0: begin
                    rdata <= int_B_28[31:0];
                end
                ADDR_B_29_DATA_0: begin
                    rdata <= int_B_29[31:0];
                end
                ADDR_B_30_DATA_0: begin
                    rdata <= int_B_30[31:0];
                end
                ADDR_B_31_DATA_0: begin
                    rdata <= int_B_31[31:0];
                end
                ADDR_B_32_DATA_0: begin
                    rdata <= int_B_32[31:0];
                end
                ADDR_B_33_DATA_0: begin
                    rdata <= int_B_33[31:0];
                end
                ADDR_B_34_DATA_0: begin
                    rdata <= int_B_34[31:0];
                end
                ADDR_B_35_DATA_0: begin
                    rdata <= int_B_35[31:0];
                end
                ADDR_B_36_DATA_0: begin
                    rdata <= int_B_36[31:0];
                end
                ADDR_B_37_DATA_0: begin
                    rdata <= int_B_37[31:0];
                end
                ADDR_B_38_DATA_0: begin
                    rdata <= int_B_38[31:0];
                end
                ADDR_B_39_DATA_0: begin
                    rdata <= int_B_39[31:0];
                end
                ADDR_B_40_DATA_0: begin
                    rdata <= int_B_40[31:0];
                end
                ADDR_B_41_DATA_0: begin
                    rdata <= int_B_41[31:0];
                end
                ADDR_B_42_DATA_0: begin
                    rdata <= int_B_42[31:0];
                end
                ADDR_B_43_DATA_0: begin
                    rdata <= int_B_43[31:0];
                end
                ADDR_B_44_DATA_0: begin
                    rdata <= int_B_44[31:0];
                end
                ADDR_B_45_DATA_0: begin
                    rdata <= int_B_45[31:0];
                end
                ADDR_B_46_DATA_0: begin
                    rdata <= int_B_46[31:0];
                end
                ADDR_B_47_DATA_0: begin
                    rdata <= int_B_47[31:0];
                end
                ADDR_B_48_DATA_0: begin
                    rdata <= int_B_48[31:0];
                end
                ADDR_B_49_DATA_0: begin
                    rdata <= int_B_49[31:0];
                end
                ADDR_B_50_DATA_0: begin
                    rdata <= int_B_50[31:0];
                end
                ADDR_B_51_DATA_0: begin
                    rdata <= int_B_51[31:0];
                end
                ADDR_B_52_DATA_0: begin
                    rdata <= int_B_52[31:0];
                end
                ADDR_B_53_DATA_0: begin
                    rdata <= int_B_53[31:0];
                end
                ADDR_B_54_DATA_0: begin
                    rdata <= int_B_54[31:0];
                end
                ADDR_B_55_DATA_0: begin
                    rdata <= int_B_55[31:0];
                end
                ADDR_B_56_DATA_0: begin
                    rdata <= int_B_56[31:0];
                end
                ADDR_B_57_DATA_0: begin
                    rdata <= int_B_57[31:0];
                end
                ADDR_B_58_DATA_0: begin
                    rdata <= int_B_58[31:0];
                end
                ADDR_B_59_DATA_0: begin
                    rdata <= int_B_59[31:0];
                end
                ADDR_B_60_DATA_0: begin
                    rdata <= int_B_60[31:0];
                end
                ADDR_B_61_DATA_0: begin
                    rdata <= int_B_61[31:0];
                end
                ADDR_B_62_DATA_0: begin
                    rdata <= int_B_62[31:0];
                end
                ADDR_B_63_DATA_0: begin
                    rdata <= int_B_63[31:0];
                end
                ADDR_B_64_DATA_0: begin
                    rdata <= int_B_64[31:0];
                end
                ADDR_B_65_DATA_0: begin
                    rdata <= int_B_65[31:0];
                end
                ADDR_B_66_DATA_0: begin
                    rdata <= int_B_66[31:0];
                end
                ADDR_B_67_DATA_0: begin
                    rdata <= int_B_67[31:0];
                end
                ADDR_B_68_DATA_0: begin
                    rdata <= int_B_68[31:0];
                end
                ADDR_B_69_DATA_0: begin
                    rdata <= int_B_69[31:0];
                end
                ADDR_B_70_DATA_0: begin
                    rdata <= int_B_70[31:0];
                end
                ADDR_B_71_DATA_0: begin
                    rdata <= int_B_71[31:0];
                end
                ADDR_B_72_DATA_0: begin
                    rdata <= int_B_72[31:0];
                end
                ADDR_B_73_DATA_0: begin
                    rdata <= int_B_73[31:0];
                end
                ADDR_B_74_DATA_0: begin
                    rdata <= int_B_74[31:0];
                end
                ADDR_B_75_DATA_0: begin
                    rdata <= int_B_75[31:0];
                end
                ADDR_B_76_DATA_0: begin
                    rdata <= int_B_76[31:0];
                end
                ADDR_B_77_DATA_0: begin
                    rdata <= int_B_77[31:0];
                end
                ADDR_B_78_DATA_0: begin
                    rdata <= int_B_78[31:0];
                end
                ADDR_B_79_DATA_0: begin
                    rdata <= int_B_79[31:0];
                end
                ADDR_B_80_DATA_0: begin
                    rdata <= int_B_80[31:0];
                end
                ADDR_B_81_DATA_0: begin
                    rdata <= int_B_81[31:0];
                end
                ADDR_B_82_DATA_0: begin
                    rdata <= int_B_82[31:0];
                end
                ADDR_B_83_DATA_0: begin
                    rdata <= int_B_83[31:0];
                end
                ADDR_B_84_DATA_0: begin
                    rdata <= int_B_84[31:0];
                end
                ADDR_B_85_DATA_0: begin
                    rdata <= int_B_85[31:0];
                end
                ADDR_B_86_DATA_0: begin
                    rdata <= int_B_86[31:0];
                end
                ADDR_B_87_DATA_0: begin
                    rdata <= int_B_87[31:0];
                end
                ADDR_B_88_DATA_0: begin
                    rdata <= int_B_88[31:0];
                end
                ADDR_B_89_DATA_0: begin
                    rdata <= int_B_89[31:0];
                end
                ADDR_B_90_DATA_0: begin
                    rdata <= int_B_90[31:0];
                end
                ADDR_B_91_DATA_0: begin
                    rdata <= int_B_91[31:0];
                end
                ADDR_B_92_DATA_0: begin
                    rdata <= int_B_92[31:0];
                end
                ADDR_B_93_DATA_0: begin
                    rdata <= int_B_93[31:0];
                end
                ADDR_B_94_DATA_0: begin
                    rdata <= int_B_94[31:0];
                end
                ADDR_B_95_DATA_0: begin
                    rdata <= int_B_95[31:0];
                end
                ADDR_B_96_DATA_0: begin
                    rdata <= int_B_96[31:0];
                end
                ADDR_B_97_DATA_0: begin
                    rdata <= int_B_97[31:0];
                end
                ADDR_B_98_DATA_0: begin
                    rdata <= int_B_98[31:0];
                end
                ADDR_B_99_DATA_0: begin
                    rdata <= int_B_99[31:0];
                end
                ADDR_B_100_DATA_0: begin
                    rdata <= int_B_100[31:0];
                end
                ADDR_B_101_DATA_0: begin
                    rdata <= int_B_101[31:0];
                end
                ADDR_B_102_DATA_0: begin
                    rdata <= int_B_102[31:0];
                end
                ADDR_B_103_DATA_0: begin
                    rdata <= int_B_103[31:0];
                end
                ADDR_B_104_DATA_0: begin
                    rdata <= int_B_104[31:0];
                end
                ADDR_B_105_DATA_0: begin
                    rdata <= int_B_105[31:0];
                end
                ADDR_B_106_DATA_0: begin
                    rdata <= int_B_106[31:0];
                end
                ADDR_B_107_DATA_0: begin
                    rdata <= int_B_107[31:0];
                end
                ADDR_B_108_DATA_0: begin
                    rdata <= int_B_108[31:0];
                end
                ADDR_B_109_DATA_0: begin
                    rdata <= int_B_109[31:0];
                end
                ADDR_B_110_DATA_0: begin
                    rdata <= int_B_110[31:0];
                end
                ADDR_B_111_DATA_0: begin
                    rdata <= int_B_111[31:0];
                end
                ADDR_B_112_DATA_0: begin
                    rdata <= int_B_112[31:0];
                end
                ADDR_B_113_DATA_0: begin
                    rdata <= int_B_113[31:0];
                end
                ADDR_B_114_DATA_0: begin
                    rdata <= int_B_114[31:0];
                end
                ADDR_B_115_DATA_0: begin
                    rdata <= int_B_115[31:0];
                end
                ADDR_B_116_DATA_0: begin
                    rdata <= int_B_116[31:0];
                end
                ADDR_B_117_DATA_0: begin
                    rdata <= int_B_117[31:0];
                end
                ADDR_B_118_DATA_0: begin
                    rdata <= int_B_118[31:0];
                end
                ADDR_B_119_DATA_0: begin
                    rdata <= int_B_119[31:0];
                end
                ADDR_B_120_DATA_0: begin
                    rdata <= int_B_120[31:0];
                end
                ADDR_B_121_DATA_0: begin
                    rdata <= int_B_121[31:0];
                end
                ADDR_B_122_DATA_0: begin
                    rdata <= int_B_122[31:0];
                end
                ADDR_B_123_DATA_0: begin
                    rdata <= int_B_123[31:0];
                end
                ADDR_B_124_DATA_0: begin
                    rdata <= int_B_124[31:0];
                end
                ADDR_B_125_DATA_0: begin
                    rdata <= int_B_125[31:0];
                end
                ADDR_B_126_DATA_0: begin
                    rdata <= int_B_126[31:0];
                end
                ADDR_B_127_DATA_0: begin
                    rdata <= int_B_127[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign A_0   = int_A_0;
assign A_1   = int_A_1;
assign A_2   = int_A_2;
assign A_3   = int_A_3;
assign A_4   = int_A_4;
assign A_5   = int_A_5;
assign A_6   = int_A_6;
assign A_7   = int_A_7;
assign A_8   = int_A_8;
assign A_9   = int_A_9;
assign A_10  = int_A_10;
assign A_11  = int_A_11;
assign A_12  = int_A_12;
assign A_13  = int_A_13;
assign A_14  = int_A_14;
assign A_15  = int_A_15;
assign A_16  = int_A_16;
assign A_17  = int_A_17;
assign A_18  = int_A_18;
assign A_19  = int_A_19;
assign A_20  = int_A_20;
assign A_21  = int_A_21;
assign A_22  = int_A_22;
assign A_23  = int_A_23;
assign A_24  = int_A_24;
assign A_25  = int_A_25;
assign A_26  = int_A_26;
assign A_27  = int_A_27;
assign A_28  = int_A_28;
assign A_29  = int_A_29;
assign A_30  = int_A_30;
assign A_31  = int_A_31;
assign A_32  = int_A_32;
assign A_33  = int_A_33;
assign A_34  = int_A_34;
assign A_35  = int_A_35;
assign A_36  = int_A_36;
assign A_37  = int_A_37;
assign A_38  = int_A_38;
assign A_39  = int_A_39;
assign A_40  = int_A_40;
assign A_41  = int_A_41;
assign A_42  = int_A_42;
assign A_43  = int_A_43;
assign A_44  = int_A_44;
assign A_45  = int_A_45;
assign A_46  = int_A_46;
assign A_47  = int_A_47;
assign A_48  = int_A_48;
assign A_49  = int_A_49;
assign A_50  = int_A_50;
assign A_51  = int_A_51;
assign A_52  = int_A_52;
assign A_53  = int_A_53;
assign A_54  = int_A_54;
assign A_55  = int_A_55;
assign A_56  = int_A_56;
assign A_57  = int_A_57;
assign A_58  = int_A_58;
assign A_59  = int_A_59;
assign A_60  = int_A_60;
assign A_61  = int_A_61;
assign A_62  = int_A_62;
assign A_63  = int_A_63;
assign A_64  = int_A_64;
assign A_65  = int_A_65;
assign A_66  = int_A_66;
assign A_67  = int_A_67;
assign A_68  = int_A_68;
assign A_69  = int_A_69;
assign A_70  = int_A_70;
assign A_71  = int_A_71;
assign A_72  = int_A_72;
assign A_73  = int_A_73;
assign A_74  = int_A_74;
assign A_75  = int_A_75;
assign A_76  = int_A_76;
assign A_77  = int_A_77;
assign A_78  = int_A_78;
assign A_79  = int_A_79;
assign A_80  = int_A_80;
assign A_81  = int_A_81;
assign A_82  = int_A_82;
assign A_83  = int_A_83;
assign A_84  = int_A_84;
assign A_85  = int_A_85;
assign A_86  = int_A_86;
assign A_87  = int_A_87;
assign A_88  = int_A_88;
assign A_89  = int_A_89;
assign A_90  = int_A_90;
assign A_91  = int_A_91;
assign A_92  = int_A_92;
assign A_93  = int_A_93;
assign A_94  = int_A_94;
assign A_95  = int_A_95;
assign A_96  = int_A_96;
assign A_97  = int_A_97;
assign A_98  = int_A_98;
assign A_99  = int_A_99;
assign A_100 = int_A_100;
assign A_101 = int_A_101;
assign A_102 = int_A_102;
assign A_103 = int_A_103;
assign A_104 = int_A_104;
assign A_105 = int_A_105;
assign A_106 = int_A_106;
assign A_107 = int_A_107;
assign A_108 = int_A_108;
assign A_109 = int_A_109;
assign A_110 = int_A_110;
assign A_111 = int_A_111;
assign A_112 = int_A_112;
assign A_113 = int_A_113;
assign A_114 = int_A_114;
assign A_115 = int_A_115;
assign A_116 = int_A_116;
assign A_117 = int_A_117;
assign A_118 = int_A_118;
assign A_119 = int_A_119;
assign A_120 = int_A_120;
assign A_121 = int_A_121;
assign A_122 = int_A_122;
assign A_123 = int_A_123;
assign A_124 = int_A_124;
assign A_125 = int_A_125;
assign A_126 = int_A_126;
assign A_127 = int_A_127;
assign B_0   = int_B_0;
assign B_1   = int_B_1;
assign B_2   = int_B_2;
assign B_3   = int_B_3;
assign B_4   = int_B_4;
assign B_5   = int_B_5;
assign B_6   = int_B_6;
assign B_7   = int_B_7;
assign B_8   = int_B_8;
assign B_9   = int_B_9;
assign B_10  = int_B_10;
assign B_11  = int_B_11;
assign B_12  = int_B_12;
assign B_13  = int_B_13;
assign B_14  = int_B_14;
assign B_15  = int_B_15;
assign B_16  = int_B_16;
assign B_17  = int_B_17;
assign B_18  = int_B_18;
assign B_19  = int_B_19;
assign B_20  = int_B_20;
assign B_21  = int_B_21;
assign B_22  = int_B_22;
assign B_23  = int_B_23;
assign B_24  = int_B_24;
assign B_25  = int_B_25;
assign B_26  = int_B_26;
assign B_27  = int_B_27;
assign B_28  = int_B_28;
assign B_29  = int_B_29;
assign B_30  = int_B_30;
assign B_31  = int_B_31;
assign B_32  = int_B_32;
assign B_33  = int_B_33;
assign B_34  = int_B_34;
assign B_35  = int_B_35;
assign B_36  = int_B_36;
assign B_37  = int_B_37;
assign B_38  = int_B_38;
assign B_39  = int_B_39;
assign B_40  = int_B_40;
assign B_41  = int_B_41;
assign B_42  = int_B_42;
assign B_43  = int_B_43;
assign B_44  = int_B_44;
assign B_45  = int_B_45;
assign B_46  = int_B_46;
assign B_47  = int_B_47;
assign B_48  = int_B_48;
assign B_49  = int_B_49;
assign B_50  = int_B_50;
assign B_51  = int_B_51;
assign B_52  = int_B_52;
assign B_53  = int_B_53;
assign B_54  = int_B_54;
assign B_55  = int_B_55;
assign B_56  = int_B_56;
assign B_57  = int_B_57;
assign B_58  = int_B_58;
assign B_59  = int_B_59;
assign B_60  = int_B_60;
assign B_61  = int_B_61;
assign B_62  = int_B_62;
assign B_63  = int_B_63;
assign B_64  = int_B_64;
assign B_65  = int_B_65;
assign B_66  = int_B_66;
assign B_67  = int_B_67;
assign B_68  = int_B_68;
assign B_69  = int_B_69;
assign B_70  = int_B_70;
assign B_71  = int_B_71;
assign B_72  = int_B_72;
assign B_73  = int_B_73;
assign B_74  = int_B_74;
assign B_75  = int_B_75;
assign B_76  = int_B_76;
assign B_77  = int_B_77;
assign B_78  = int_B_78;
assign B_79  = int_B_79;
assign B_80  = int_B_80;
assign B_81  = int_B_81;
assign B_82  = int_B_82;
assign B_83  = int_B_83;
assign B_84  = int_B_84;
assign B_85  = int_B_85;
assign B_86  = int_B_86;
assign B_87  = int_B_87;
assign B_88  = int_B_88;
assign B_89  = int_B_89;
assign B_90  = int_B_90;
assign B_91  = int_B_91;
assign B_92  = int_B_92;
assign B_93  = int_B_93;
assign B_94  = int_B_94;
assign B_95  = int_B_95;
assign B_96  = int_B_96;
assign B_97  = int_B_97;
assign B_98  = int_B_98;
assign B_99  = int_B_99;
assign B_100 = int_B_100;
assign B_101 = int_B_101;
assign B_102 = int_B_102;
assign B_103 = int_B_103;
assign B_104 = int_B_104;
assign B_105 = int_B_105;
assign B_106 = int_B_106;
assign B_107 = int_B_107;
assign B_108 = int_B_108;
assign B_109 = int_B_109;
assign B_110 = int_B_110;
assign B_111 = int_B_111;
assign B_112 = int_B_112;
assign B_113 = int_B_113;
assign B_114 = int_B_114;
assign B_115 = int_B_115;
assign B_116 = int_B_116;
assign B_117 = int_B_117;
assign B_118 = int_B_118;
assign B_119 = int_B_119;
assign B_120 = int_B_120;
assign B_121 = int_B_121;
assign B_122 = int_B_122;
assign B_123 = int_B_123;
assign B_124 = int_B_124;
assign B_125 = int_B_125;
assign B_126 = int_B_126;
assign B_127 = int_B_127;
// int_A_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_0_DATA_0)
            int_A_0[31:0] <= (WDATA[31:0] & wmask) | (int_A_0[31:0] & ~wmask);
    end
end

// int_A_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_1_DATA_0)
            int_A_1[31:0] <= (WDATA[31:0] & wmask) | (int_A_1[31:0] & ~wmask);
    end
end

// int_A_2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_2_DATA_0)
            int_A_2[31:0] <= (WDATA[31:0] & wmask) | (int_A_2[31:0] & ~wmask);
    end
end

// int_A_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_3_DATA_0)
            int_A_3[31:0] <= (WDATA[31:0] & wmask) | (int_A_3[31:0] & ~wmask);
    end
end

// int_A_4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_4_DATA_0)
            int_A_4[31:0] <= (WDATA[31:0] & wmask) | (int_A_4[31:0] & ~wmask);
    end
end

// int_A_5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_5_DATA_0)
            int_A_5[31:0] <= (WDATA[31:0] & wmask) | (int_A_5[31:0] & ~wmask);
    end
end

// int_A_6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_6_DATA_0)
            int_A_6[31:0] <= (WDATA[31:0] & wmask) | (int_A_6[31:0] & ~wmask);
    end
end

// int_A_7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_7_DATA_0)
            int_A_7[31:0] <= (WDATA[31:0] & wmask) | (int_A_7[31:0] & ~wmask);
    end
end

// int_A_8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_8_DATA_0)
            int_A_8[31:0] <= (WDATA[31:0] & wmask) | (int_A_8[31:0] & ~wmask);
    end
end

// int_A_9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_9_DATA_0)
            int_A_9[31:0] <= (WDATA[31:0] & wmask) | (int_A_9[31:0] & ~wmask);
    end
end

// int_A_10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_10_DATA_0)
            int_A_10[31:0] <= (WDATA[31:0] & wmask) | (int_A_10[31:0] & ~wmask);
    end
end

// int_A_11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_11_DATA_0)
            int_A_11[31:0] <= (WDATA[31:0] & wmask) | (int_A_11[31:0] & ~wmask);
    end
end

// int_A_12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_12_DATA_0)
            int_A_12[31:0] <= (WDATA[31:0] & wmask) | (int_A_12[31:0] & ~wmask);
    end
end

// int_A_13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_13_DATA_0)
            int_A_13[31:0] <= (WDATA[31:0] & wmask) | (int_A_13[31:0] & ~wmask);
    end
end

// int_A_14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_14_DATA_0)
            int_A_14[31:0] <= (WDATA[31:0] & wmask) | (int_A_14[31:0] & ~wmask);
    end
end

// int_A_15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_15_DATA_0)
            int_A_15[31:0] <= (WDATA[31:0] & wmask) | (int_A_15[31:0] & ~wmask);
    end
end

// int_A_16[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_16[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_16_DATA_0)
            int_A_16[31:0] <= (WDATA[31:0] & wmask) | (int_A_16[31:0] & ~wmask);
    end
end

// int_A_17[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_17[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_17_DATA_0)
            int_A_17[31:0] <= (WDATA[31:0] & wmask) | (int_A_17[31:0] & ~wmask);
    end
end

// int_A_18[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_18[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_18_DATA_0)
            int_A_18[31:0] <= (WDATA[31:0] & wmask) | (int_A_18[31:0] & ~wmask);
    end
end

// int_A_19[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_19[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_19_DATA_0)
            int_A_19[31:0] <= (WDATA[31:0] & wmask) | (int_A_19[31:0] & ~wmask);
    end
end

// int_A_20[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_20[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_20_DATA_0)
            int_A_20[31:0] <= (WDATA[31:0] & wmask) | (int_A_20[31:0] & ~wmask);
    end
end

// int_A_21[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_21[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_21_DATA_0)
            int_A_21[31:0] <= (WDATA[31:0] & wmask) | (int_A_21[31:0] & ~wmask);
    end
end

// int_A_22[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_22[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_22_DATA_0)
            int_A_22[31:0] <= (WDATA[31:0] & wmask) | (int_A_22[31:0] & ~wmask);
    end
end

// int_A_23[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_23[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_23_DATA_0)
            int_A_23[31:0] <= (WDATA[31:0] & wmask) | (int_A_23[31:0] & ~wmask);
    end
end

// int_A_24[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_24[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_24_DATA_0)
            int_A_24[31:0] <= (WDATA[31:0] & wmask) | (int_A_24[31:0] & ~wmask);
    end
end

// int_A_25[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_25[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_25_DATA_0)
            int_A_25[31:0] <= (WDATA[31:0] & wmask) | (int_A_25[31:0] & ~wmask);
    end
end

// int_A_26[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_26[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_26_DATA_0)
            int_A_26[31:0] <= (WDATA[31:0] & wmask) | (int_A_26[31:0] & ~wmask);
    end
end

// int_A_27[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_27[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_27_DATA_0)
            int_A_27[31:0] <= (WDATA[31:0] & wmask) | (int_A_27[31:0] & ~wmask);
    end
end

// int_A_28[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_28[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_28_DATA_0)
            int_A_28[31:0] <= (WDATA[31:0] & wmask) | (int_A_28[31:0] & ~wmask);
    end
end

// int_A_29[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_29[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_29_DATA_0)
            int_A_29[31:0] <= (WDATA[31:0] & wmask) | (int_A_29[31:0] & ~wmask);
    end
end

// int_A_30[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_30[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_30_DATA_0)
            int_A_30[31:0] <= (WDATA[31:0] & wmask) | (int_A_30[31:0] & ~wmask);
    end
end

// int_A_31[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_31[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_31_DATA_0)
            int_A_31[31:0] <= (WDATA[31:0] & wmask) | (int_A_31[31:0] & ~wmask);
    end
end

// int_A_32[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_32[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_32_DATA_0)
            int_A_32[31:0] <= (WDATA[31:0] & wmask) | (int_A_32[31:0] & ~wmask);
    end
end

// int_A_33[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_33[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_33_DATA_0)
            int_A_33[31:0] <= (WDATA[31:0] & wmask) | (int_A_33[31:0] & ~wmask);
    end
end

// int_A_34[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_34[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_34_DATA_0)
            int_A_34[31:0] <= (WDATA[31:0] & wmask) | (int_A_34[31:0] & ~wmask);
    end
end

// int_A_35[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_35[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_35_DATA_0)
            int_A_35[31:0] <= (WDATA[31:0] & wmask) | (int_A_35[31:0] & ~wmask);
    end
end

// int_A_36[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_36[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_36_DATA_0)
            int_A_36[31:0] <= (WDATA[31:0] & wmask) | (int_A_36[31:0] & ~wmask);
    end
end

// int_A_37[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_37[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_37_DATA_0)
            int_A_37[31:0] <= (WDATA[31:0] & wmask) | (int_A_37[31:0] & ~wmask);
    end
end

// int_A_38[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_38[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_38_DATA_0)
            int_A_38[31:0] <= (WDATA[31:0] & wmask) | (int_A_38[31:0] & ~wmask);
    end
end

// int_A_39[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_39[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_39_DATA_0)
            int_A_39[31:0] <= (WDATA[31:0] & wmask) | (int_A_39[31:0] & ~wmask);
    end
end

// int_A_40[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_40[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_40_DATA_0)
            int_A_40[31:0] <= (WDATA[31:0] & wmask) | (int_A_40[31:0] & ~wmask);
    end
end

// int_A_41[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_41[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_41_DATA_0)
            int_A_41[31:0] <= (WDATA[31:0] & wmask) | (int_A_41[31:0] & ~wmask);
    end
end

// int_A_42[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_42[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_42_DATA_0)
            int_A_42[31:0] <= (WDATA[31:0] & wmask) | (int_A_42[31:0] & ~wmask);
    end
end

// int_A_43[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_43[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_43_DATA_0)
            int_A_43[31:0] <= (WDATA[31:0] & wmask) | (int_A_43[31:0] & ~wmask);
    end
end

// int_A_44[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_44[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_44_DATA_0)
            int_A_44[31:0] <= (WDATA[31:0] & wmask) | (int_A_44[31:0] & ~wmask);
    end
end

// int_A_45[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_45[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_45_DATA_0)
            int_A_45[31:0] <= (WDATA[31:0] & wmask) | (int_A_45[31:0] & ~wmask);
    end
end

// int_A_46[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_46[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_46_DATA_0)
            int_A_46[31:0] <= (WDATA[31:0] & wmask) | (int_A_46[31:0] & ~wmask);
    end
end

// int_A_47[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_47[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_47_DATA_0)
            int_A_47[31:0] <= (WDATA[31:0] & wmask) | (int_A_47[31:0] & ~wmask);
    end
end

// int_A_48[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_48[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_48_DATA_0)
            int_A_48[31:0] <= (WDATA[31:0] & wmask) | (int_A_48[31:0] & ~wmask);
    end
end

// int_A_49[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_49[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_49_DATA_0)
            int_A_49[31:0] <= (WDATA[31:0] & wmask) | (int_A_49[31:0] & ~wmask);
    end
end

// int_A_50[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_50[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_50_DATA_0)
            int_A_50[31:0] <= (WDATA[31:0] & wmask) | (int_A_50[31:0] & ~wmask);
    end
end

// int_A_51[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_51[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_51_DATA_0)
            int_A_51[31:0] <= (WDATA[31:0] & wmask) | (int_A_51[31:0] & ~wmask);
    end
end

// int_A_52[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_52[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_52_DATA_0)
            int_A_52[31:0] <= (WDATA[31:0] & wmask) | (int_A_52[31:0] & ~wmask);
    end
end

// int_A_53[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_53[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_53_DATA_0)
            int_A_53[31:0] <= (WDATA[31:0] & wmask) | (int_A_53[31:0] & ~wmask);
    end
end

// int_A_54[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_54[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_54_DATA_0)
            int_A_54[31:0] <= (WDATA[31:0] & wmask) | (int_A_54[31:0] & ~wmask);
    end
end

// int_A_55[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_55[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_55_DATA_0)
            int_A_55[31:0] <= (WDATA[31:0] & wmask) | (int_A_55[31:0] & ~wmask);
    end
end

// int_A_56[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_56[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_56_DATA_0)
            int_A_56[31:0] <= (WDATA[31:0] & wmask) | (int_A_56[31:0] & ~wmask);
    end
end

// int_A_57[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_57[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_57_DATA_0)
            int_A_57[31:0] <= (WDATA[31:0] & wmask) | (int_A_57[31:0] & ~wmask);
    end
end

// int_A_58[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_58[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_58_DATA_0)
            int_A_58[31:0] <= (WDATA[31:0] & wmask) | (int_A_58[31:0] & ~wmask);
    end
end

// int_A_59[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_59[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_59_DATA_0)
            int_A_59[31:0] <= (WDATA[31:0] & wmask) | (int_A_59[31:0] & ~wmask);
    end
end

// int_A_60[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_60[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_60_DATA_0)
            int_A_60[31:0] <= (WDATA[31:0] & wmask) | (int_A_60[31:0] & ~wmask);
    end
end

// int_A_61[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_61[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_61_DATA_0)
            int_A_61[31:0] <= (WDATA[31:0] & wmask) | (int_A_61[31:0] & ~wmask);
    end
end

// int_A_62[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_62[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_62_DATA_0)
            int_A_62[31:0] <= (WDATA[31:0] & wmask) | (int_A_62[31:0] & ~wmask);
    end
end

// int_A_63[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_63[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_63_DATA_0)
            int_A_63[31:0] <= (WDATA[31:0] & wmask) | (int_A_63[31:0] & ~wmask);
    end
end

// int_A_64[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_64[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_64_DATA_0)
            int_A_64[31:0] <= (WDATA[31:0] & wmask) | (int_A_64[31:0] & ~wmask);
    end
end

// int_A_65[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_65[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_65_DATA_0)
            int_A_65[31:0] <= (WDATA[31:0] & wmask) | (int_A_65[31:0] & ~wmask);
    end
end

// int_A_66[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_66[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_66_DATA_0)
            int_A_66[31:0] <= (WDATA[31:0] & wmask) | (int_A_66[31:0] & ~wmask);
    end
end

// int_A_67[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_67[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_67_DATA_0)
            int_A_67[31:0] <= (WDATA[31:0] & wmask) | (int_A_67[31:0] & ~wmask);
    end
end

// int_A_68[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_68[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_68_DATA_0)
            int_A_68[31:0] <= (WDATA[31:0] & wmask) | (int_A_68[31:0] & ~wmask);
    end
end

// int_A_69[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_69[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_69_DATA_0)
            int_A_69[31:0] <= (WDATA[31:0] & wmask) | (int_A_69[31:0] & ~wmask);
    end
end

// int_A_70[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_70[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_70_DATA_0)
            int_A_70[31:0] <= (WDATA[31:0] & wmask) | (int_A_70[31:0] & ~wmask);
    end
end

// int_A_71[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_71[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_71_DATA_0)
            int_A_71[31:0] <= (WDATA[31:0] & wmask) | (int_A_71[31:0] & ~wmask);
    end
end

// int_A_72[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_72[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_72_DATA_0)
            int_A_72[31:0] <= (WDATA[31:0] & wmask) | (int_A_72[31:0] & ~wmask);
    end
end

// int_A_73[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_73[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_73_DATA_0)
            int_A_73[31:0] <= (WDATA[31:0] & wmask) | (int_A_73[31:0] & ~wmask);
    end
end

// int_A_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_74_DATA_0)
            int_A_74[31:0] <= (WDATA[31:0] & wmask) | (int_A_74[31:0] & ~wmask);
    end
end

// int_A_75[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_75[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_75_DATA_0)
            int_A_75[31:0] <= (WDATA[31:0] & wmask) | (int_A_75[31:0] & ~wmask);
    end
end

// int_A_76[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_76[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_76_DATA_0)
            int_A_76[31:0] <= (WDATA[31:0] & wmask) | (int_A_76[31:0] & ~wmask);
    end
end

// int_A_77[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_77[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_77_DATA_0)
            int_A_77[31:0] <= (WDATA[31:0] & wmask) | (int_A_77[31:0] & ~wmask);
    end
end

// int_A_78[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_78[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_78_DATA_0)
            int_A_78[31:0] <= (WDATA[31:0] & wmask) | (int_A_78[31:0] & ~wmask);
    end
end

// int_A_79[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_79[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_79_DATA_0)
            int_A_79[31:0] <= (WDATA[31:0] & wmask) | (int_A_79[31:0] & ~wmask);
    end
end

// int_A_80[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_80[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_80_DATA_0)
            int_A_80[31:0] <= (WDATA[31:0] & wmask) | (int_A_80[31:0] & ~wmask);
    end
end

// int_A_81[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_81[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_81_DATA_0)
            int_A_81[31:0] <= (WDATA[31:0] & wmask) | (int_A_81[31:0] & ~wmask);
    end
end

// int_A_82[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_82[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_82_DATA_0)
            int_A_82[31:0] <= (WDATA[31:0] & wmask) | (int_A_82[31:0] & ~wmask);
    end
end

// int_A_83[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_83[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_83_DATA_0)
            int_A_83[31:0] <= (WDATA[31:0] & wmask) | (int_A_83[31:0] & ~wmask);
    end
end

// int_A_84[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_84[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_84_DATA_0)
            int_A_84[31:0] <= (WDATA[31:0] & wmask) | (int_A_84[31:0] & ~wmask);
    end
end

// int_A_85[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_85[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_85_DATA_0)
            int_A_85[31:0] <= (WDATA[31:0] & wmask) | (int_A_85[31:0] & ~wmask);
    end
end

// int_A_86[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_86[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_86_DATA_0)
            int_A_86[31:0] <= (WDATA[31:0] & wmask) | (int_A_86[31:0] & ~wmask);
    end
end

// int_A_87[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_87[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_87_DATA_0)
            int_A_87[31:0] <= (WDATA[31:0] & wmask) | (int_A_87[31:0] & ~wmask);
    end
end

// int_A_88[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_88[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_88_DATA_0)
            int_A_88[31:0] <= (WDATA[31:0] & wmask) | (int_A_88[31:0] & ~wmask);
    end
end

// int_A_89[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_89[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_89_DATA_0)
            int_A_89[31:0] <= (WDATA[31:0] & wmask) | (int_A_89[31:0] & ~wmask);
    end
end

// int_A_90[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_90[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_90_DATA_0)
            int_A_90[31:0] <= (WDATA[31:0] & wmask) | (int_A_90[31:0] & ~wmask);
    end
end

// int_A_91[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_91[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_91_DATA_0)
            int_A_91[31:0] <= (WDATA[31:0] & wmask) | (int_A_91[31:0] & ~wmask);
    end
end

// int_A_92[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_92[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_92_DATA_0)
            int_A_92[31:0] <= (WDATA[31:0] & wmask) | (int_A_92[31:0] & ~wmask);
    end
end

// int_A_93[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_93[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_93_DATA_0)
            int_A_93[31:0] <= (WDATA[31:0] & wmask) | (int_A_93[31:0] & ~wmask);
    end
end

// int_A_94[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_94[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_94_DATA_0)
            int_A_94[31:0] <= (WDATA[31:0] & wmask) | (int_A_94[31:0] & ~wmask);
    end
end

// int_A_95[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_95[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_95_DATA_0)
            int_A_95[31:0] <= (WDATA[31:0] & wmask) | (int_A_95[31:0] & ~wmask);
    end
end

// int_A_96[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_96[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_96_DATA_0)
            int_A_96[31:0] <= (WDATA[31:0] & wmask) | (int_A_96[31:0] & ~wmask);
    end
end

// int_A_97[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_97[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_97_DATA_0)
            int_A_97[31:0] <= (WDATA[31:0] & wmask) | (int_A_97[31:0] & ~wmask);
    end
end

// int_A_98[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_98[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_98_DATA_0)
            int_A_98[31:0] <= (WDATA[31:0] & wmask) | (int_A_98[31:0] & ~wmask);
    end
end

// int_A_99[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_99[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_99_DATA_0)
            int_A_99[31:0] <= (WDATA[31:0] & wmask) | (int_A_99[31:0] & ~wmask);
    end
end

// int_A_100[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_100[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_100_DATA_0)
            int_A_100[31:0] <= (WDATA[31:0] & wmask) | (int_A_100[31:0] & ~wmask);
    end
end

// int_A_101[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_101[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_101_DATA_0)
            int_A_101[31:0] <= (WDATA[31:0] & wmask) | (int_A_101[31:0] & ~wmask);
    end
end

// int_A_102[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_102[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_102_DATA_0)
            int_A_102[31:0] <= (WDATA[31:0] & wmask) | (int_A_102[31:0] & ~wmask);
    end
end

// int_A_103[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_103[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_103_DATA_0)
            int_A_103[31:0] <= (WDATA[31:0] & wmask) | (int_A_103[31:0] & ~wmask);
    end
end

// int_A_104[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_104[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_104_DATA_0)
            int_A_104[31:0] <= (WDATA[31:0] & wmask) | (int_A_104[31:0] & ~wmask);
    end
end

// int_A_105[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_105[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_105_DATA_0)
            int_A_105[31:0] <= (WDATA[31:0] & wmask) | (int_A_105[31:0] & ~wmask);
    end
end

// int_A_106[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_106[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_106_DATA_0)
            int_A_106[31:0] <= (WDATA[31:0] & wmask) | (int_A_106[31:0] & ~wmask);
    end
end

// int_A_107[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_107[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_107_DATA_0)
            int_A_107[31:0] <= (WDATA[31:0] & wmask) | (int_A_107[31:0] & ~wmask);
    end
end

// int_A_108[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_108[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_108_DATA_0)
            int_A_108[31:0] <= (WDATA[31:0] & wmask) | (int_A_108[31:0] & ~wmask);
    end
end

// int_A_109[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_109[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_109_DATA_0)
            int_A_109[31:0] <= (WDATA[31:0] & wmask) | (int_A_109[31:0] & ~wmask);
    end
end

// int_A_110[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_110[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_110_DATA_0)
            int_A_110[31:0] <= (WDATA[31:0] & wmask) | (int_A_110[31:0] & ~wmask);
    end
end

// int_A_111[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_111[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_111_DATA_0)
            int_A_111[31:0] <= (WDATA[31:0] & wmask) | (int_A_111[31:0] & ~wmask);
    end
end

// int_A_112[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_112[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_112_DATA_0)
            int_A_112[31:0] <= (WDATA[31:0] & wmask) | (int_A_112[31:0] & ~wmask);
    end
end

// int_A_113[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_113[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_113_DATA_0)
            int_A_113[31:0] <= (WDATA[31:0] & wmask) | (int_A_113[31:0] & ~wmask);
    end
end

// int_A_114[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_114[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_114_DATA_0)
            int_A_114[31:0] <= (WDATA[31:0] & wmask) | (int_A_114[31:0] & ~wmask);
    end
end

// int_A_115[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_115[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_115_DATA_0)
            int_A_115[31:0] <= (WDATA[31:0] & wmask) | (int_A_115[31:0] & ~wmask);
    end
end

// int_A_116[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_116[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_116_DATA_0)
            int_A_116[31:0] <= (WDATA[31:0] & wmask) | (int_A_116[31:0] & ~wmask);
    end
end

// int_A_117[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_117[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_117_DATA_0)
            int_A_117[31:0] <= (WDATA[31:0] & wmask) | (int_A_117[31:0] & ~wmask);
    end
end

// int_A_118[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_118[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_118_DATA_0)
            int_A_118[31:0] <= (WDATA[31:0] & wmask) | (int_A_118[31:0] & ~wmask);
    end
end

// int_A_119[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_119[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_119_DATA_0)
            int_A_119[31:0] <= (WDATA[31:0] & wmask) | (int_A_119[31:0] & ~wmask);
    end
end

// int_A_120[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_120[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_120_DATA_0)
            int_A_120[31:0] <= (WDATA[31:0] & wmask) | (int_A_120[31:0] & ~wmask);
    end
end

// int_A_121[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_121[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_121_DATA_0)
            int_A_121[31:0] <= (WDATA[31:0] & wmask) | (int_A_121[31:0] & ~wmask);
    end
end

// int_A_122[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_122[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_122_DATA_0)
            int_A_122[31:0] <= (WDATA[31:0] & wmask) | (int_A_122[31:0] & ~wmask);
    end
end

// int_A_123[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_123[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_123_DATA_0)
            int_A_123[31:0] <= (WDATA[31:0] & wmask) | (int_A_123[31:0] & ~wmask);
    end
end

// int_A_124[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_124[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_124_DATA_0)
            int_A_124[31:0] <= (WDATA[31:0] & wmask) | (int_A_124[31:0] & ~wmask);
    end
end

// int_A_125[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_125[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_125_DATA_0)
            int_A_125[31:0] <= (WDATA[31:0] & wmask) | (int_A_125[31:0] & ~wmask);
    end
end

// int_A_126[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_126[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_126_DATA_0)
            int_A_126[31:0] <= (WDATA[31:0] & wmask) | (int_A_126[31:0] & ~wmask);
    end
end

// int_A_127[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_127[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_127_DATA_0)
            int_A_127[31:0] <= (WDATA[31:0] & wmask) | (int_A_127[31:0] & ~wmask);
    end
end

// int_B_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_0_DATA_0)
            int_B_0[31:0] <= (WDATA[31:0] & wmask) | (int_B_0[31:0] & ~wmask);
    end
end

// int_B_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_1_DATA_0)
            int_B_1[31:0] <= (WDATA[31:0] & wmask) | (int_B_1[31:0] & ~wmask);
    end
end

// int_B_2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_2_DATA_0)
            int_B_2[31:0] <= (WDATA[31:0] & wmask) | (int_B_2[31:0] & ~wmask);
    end
end

// int_B_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_3_DATA_0)
            int_B_3[31:0] <= (WDATA[31:0] & wmask) | (int_B_3[31:0] & ~wmask);
    end
end

// int_B_4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_4_DATA_0)
            int_B_4[31:0] <= (WDATA[31:0] & wmask) | (int_B_4[31:0] & ~wmask);
    end
end

// int_B_5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_5_DATA_0)
            int_B_5[31:0] <= (WDATA[31:0] & wmask) | (int_B_5[31:0] & ~wmask);
    end
end

// int_B_6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_6_DATA_0)
            int_B_6[31:0] <= (WDATA[31:0] & wmask) | (int_B_6[31:0] & ~wmask);
    end
end

// int_B_7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_7_DATA_0)
            int_B_7[31:0] <= (WDATA[31:0] & wmask) | (int_B_7[31:0] & ~wmask);
    end
end

// int_B_8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_8_DATA_0)
            int_B_8[31:0] <= (WDATA[31:0] & wmask) | (int_B_8[31:0] & ~wmask);
    end
end

// int_B_9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_9_DATA_0)
            int_B_9[31:0] <= (WDATA[31:0] & wmask) | (int_B_9[31:0] & ~wmask);
    end
end

// int_B_10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_10_DATA_0)
            int_B_10[31:0] <= (WDATA[31:0] & wmask) | (int_B_10[31:0] & ~wmask);
    end
end

// int_B_11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_11_DATA_0)
            int_B_11[31:0] <= (WDATA[31:0] & wmask) | (int_B_11[31:0] & ~wmask);
    end
end

// int_B_12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_12_DATA_0)
            int_B_12[31:0] <= (WDATA[31:0] & wmask) | (int_B_12[31:0] & ~wmask);
    end
end

// int_B_13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_13_DATA_0)
            int_B_13[31:0] <= (WDATA[31:0] & wmask) | (int_B_13[31:0] & ~wmask);
    end
end

// int_B_14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_14_DATA_0)
            int_B_14[31:0] <= (WDATA[31:0] & wmask) | (int_B_14[31:0] & ~wmask);
    end
end

// int_B_15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_15_DATA_0)
            int_B_15[31:0] <= (WDATA[31:0] & wmask) | (int_B_15[31:0] & ~wmask);
    end
end

// int_B_16[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_16[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_16_DATA_0)
            int_B_16[31:0] <= (WDATA[31:0] & wmask) | (int_B_16[31:0] & ~wmask);
    end
end

// int_B_17[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_17[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_17_DATA_0)
            int_B_17[31:0] <= (WDATA[31:0] & wmask) | (int_B_17[31:0] & ~wmask);
    end
end

// int_B_18[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_18[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_18_DATA_0)
            int_B_18[31:0] <= (WDATA[31:0] & wmask) | (int_B_18[31:0] & ~wmask);
    end
end

// int_B_19[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_19[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_19_DATA_0)
            int_B_19[31:0] <= (WDATA[31:0] & wmask) | (int_B_19[31:0] & ~wmask);
    end
end

// int_B_20[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_20[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_20_DATA_0)
            int_B_20[31:0] <= (WDATA[31:0] & wmask) | (int_B_20[31:0] & ~wmask);
    end
end

// int_B_21[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_21[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_21_DATA_0)
            int_B_21[31:0] <= (WDATA[31:0] & wmask) | (int_B_21[31:0] & ~wmask);
    end
end

// int_B_22[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_22[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_22_DATA_0)
            int_B_22[31:0] <= (WDATA[31:0] & wmask) | (int_B_22[31:0] & ~wmask);
    end
end

// int_B_23[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_23[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_23_DATA_0)
            int_B_23[31:0] <= (WDATA[31:0] & wmask) | (int_B_23[31:0] & ~wmask);
    end
end

// int_B_24[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_24[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_24_DATA_0)
            int_B_24[31:0] <= (WDATA[31:0] & wmask) | (int_B_24[31:0] & ~wmask);
    end
end

// int_B_25[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_25[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_25_DATA_0)
            int_B_25[31:0] <= (WDATA[31:0] & wmask) | (int_B_25[31:0] & ~wmask);
    end
end

// int_B_26[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_26[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_26_DATA_0)
            int_B_26[31:0] <= (WDATA[31:0] & wmask) | (int_B_26[31:0] & ~wmask);
    end
end

// int_B_27[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_27[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_27_DATA_0)
            int_B_27[31:0] <= (WDATA[31:0] & wmask) | (int_B_27[31:0] & ~wmask);
    end
end

// int_B_28[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_28[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_28_DATA_0)
            int_B_28[31:0] <= (WDATA[31:0] & wmask) | (int_B_28[31:0] & ~wmask);
    end
end

// int_B_29[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_29[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_29_DATA_0)
            int_B_29[31:0] <= (WDATA[31:0] & wmask) | (int_B_29[31:0] & ~wmask);
    end
end

// int_B_30[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_30[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_30_DATA_0)
            int_B_30[31:0] <= (WDATA[31:0] & wmask) | (int_B_30[31:0] & ~wmask);
    end
end

// int_B_31[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_31[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_31_DATA_0)
            int_B_31[31:0] <= (WDATA[31:0] & wmask) | (int_B_31[31:0] & ~wmask);
    end
end

// int_B_32[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_32[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_32_DATA_0)
            int_B_32[31:0] <= (WDATA[31:0] & wmask) | (int_B_32[31:0] & ~wmask);
    end
end

// int_B_33[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_33[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_33_DATA_0)
            int_B_33[31:0] <= (WDATA[31:0] & wmask) | (int_B_33[31:0] & ~wmask);
    end
end

// int_B_34[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_34[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_34_DATA_0)
            int_B_34[31:0] <= (WDATA[31:0] & wmask) | (int_B_34[31:0] & ~wmask);
    end
end

// int_B_35[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_35[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_35_DATA_0)
            int_B_35[31:0] <= (WDATA[31:0] & wmask) | (int_B_35[31:0] & ~wmask);
    end
end

// int_B_36[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_36[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_36_DATA_0)
            int_B_36[31:0] <= (WDATA[31:0] & wmask) | (int_B_36[31:0] & ~wmask);
    end
end

// int_B_37[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_37[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_37_DATA_0)
            int_B_37[31:0] <= (WDATA[31:0] & wmask) | (int_B_37[31:0] & ~wmask);
    end
end

// int_B_38[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_38[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_38_DATA_0)
            int_B_38[31:0] <= (WDATA[31:0] & wmask) | (int_B_38[31:0] & ~wmask);
    end
end

// int_B_39[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_39[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_39_DATA_0)
            int_B_39[31:0] <= (WDATA[31:0] & wmask) | (int_B_39[31:0] & ~wmask);
    end
end

// int_B_40[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_40[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_40_DATA_0)
            int_B_40[31:0] <= (WDATA[31:0] & wmask) | (int_B_40[31:0] & ~wmask);
    end
end

// int_B_41[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_41[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_41_DATA_0)
            int_B_41[31:0] <= (WDATA[31:0] & wmask) | (int_B_41[31:0] & ~wmask);
    end
end

// int_B_42[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_42[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_42_DATA_0)
            int_B_42[31:0] <= (WDATA[31:0] & wmask) | (int_B_42[31:0] & ~wmask);
    end
end

// int_B_43[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_43[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_43_DATA_0)
            int_B_43[31:0] <= (WDATA[31:0] & wmask) | (int_B_43[31:0] & ~wmask);
    end
end

// int_B_44[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_44[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_44_DATA_0)
            int_B_44[31:0] <= (WDATA[31:0] & wmask) | (int_B_44[31:0] & ~wmask);
    end
end

// int_B_45[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_45[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_45_DATA_0)
            int_B_45[31:0] <= (WDATA[31:0] & wmask) | (int_B_45[31:0] & ~wmask);
    end
end

// int_B_46[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_46[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_46_DATA_0)
            int_B_46[31:0] <= (WDATA[31:0] & wmask) | (int_B_46[31:0] & ~wmask);
    end
end

// int_B_47[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_47[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_47_DATA_0)
            int_B_47[31:0] <= (WDATA[31:0] & wmask) | (int_B_47[31:0] & ~wmask);
    end
end

// int_B_48[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_48[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_48_DATA_0)
            int_B_48[31:0] <= (WDATA[31:0] & wmask) | (int_B_48[31:0] & ~wmask);
    end
end

// int_B_49[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_49[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_49_DATA_0)
            int_B_49[31:0] <= (WDATA[31:0] & wmask) | (int_B_49[31:0] & ~wmask);
    end
end

// int_B_50[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_50[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_50_DATA_0)
            int_B_50[31:0] <= (WDATA[31:0] & wmask) | (int_B_50[31:0] & ~wmask);
    end
end

// int_B_51[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_51[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_51_DATA_0)
            int_B_51[31:0] <= (WDATA[31:0] & wmask) | (int_B_51[31:0] & ~wmask);
    end
end

// int_B_52[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_52[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_52_DATA_0)
            int_B_52[31:0] <= (WDATA[31:0] & wmask) | (int_B_52[31:0] & ~wmask);
    end
end

// int_B_53[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_53[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_53_DATA_0)
            int_B_53[31:0] <= (WDATA[31:0] & wmask) | (int_B_53[31:0] & ~wmask);
    end
end

// int_B_54[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_54[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_54_DATA_0)
            int_B_54[31:0] <= (WDATA[31:0] & wmask) | (int_B_54[31:0] & ~wmask);
    end
end

// int_B_55[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_55[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_55_DATA_0)
            int_B_55[31:0] <= (WDATA[31:0] & wmask) | (int_B_55[31:0] & ~wmask);
    end
end

// int_B_56[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_56[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_56_DATA_0)
            int_B_56[31:0] <= (WDATA[31:0] & wmask) | (int_B_56[31:0] & ~wmask);
    end
end

// int_B_57[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_57[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_57_DATA_0)
            int_B_57[31:0] <= (WDATA[31:0] & wmask) | (int_B_57[31:0] & ~wmask);
    end
end

// int_B_58[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_58[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_58_DATA_0)
            int_B_58[31:0] <= (WDATA[31:0] & wmask) | (int_B_58[31:0] & ~wmask);
    end
end

// int_B_59[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_59[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_59_DATA_0)
            int_B_59[31:0] <= (WDATA[31:0] & wmask) | (int_B_59[31:0] & ~wmask);
    end
end

// int_B_60[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_60[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_60_DATA_0)
            int_B_60[31:0] <= (WDATA[31:0] & wmask) | (int_B_60[31:0] & ~wmask);
    end
end

// int_B_61[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_61[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_61_DATA_0)
            int_B_61[31:0] <= (WDATA[31:0] & wmask) | (int_B_61[31:0] & ~wmask);
    end
end

// int_B_62[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_62[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_62_DATA_0)
            int_B_62[31:0] <= (WDATA[31:0] & wmask) | (int_B_62[31:0] & ~wmask);
    end
end

// int_B_63[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_63[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_63_DATA_0)
            int_B_63[31:0] <= (WDATA[31:0] & wmask) | (int_B_63[31:0] & ~wmask);
    end
end

// int_B_64[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_64[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_64_DATA_0)
            int_B_64[31:0] <= (WDATA[31:0] & wmask) | (int_B_64[31:0] & ~wmask);
    end
end

// int_B_65[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_65[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_65_DATA_0)
            int_B_65[31:0] <= (WDATA[31:0] & wmask) | (int_B_65[31:0] & ~wmask);
    end
end

// int_B_66[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_66[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_66_DATA_0)
            int_B_66[31:0] <= (WDATA[31:0] & wmask) | (int_B_66[31:0] & ~wmask);
    end
end

// int_B_67[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_67[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_67_DATA_0)
            int_B_67[31:0] <= (WDATA[31:0] & wmask) | (int_B_67[31:0] & ~wmask);
    end
end

// int_B_68[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_68[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_68_DATA_0)
            int_B_68[31:0] <= (WDATA[31:0] & wmask) | (int_B_68[31:0] & ~wmask);
    end
end

// int_B_69[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_69[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_69_DATA_0)
            int_B_69[31:0] <= (WDATA[31:0] & wmask) | (int_B_69[31:0] & ~wmask);
    end
end

// int_B_70[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_70[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_70_DATA_0)
            int_B_70[31:0] <= (WDATA[31:0] & wmask) | (int_B_70[31:0] & ~wmask);
    end
end

// int_B_71[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_71[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_71_DATA_0)
            int_B_71[31:0] <= (WDATA[31:0] & wmask) | (int_B_71[31:0] & ~wmask);
    end
end

// int_B_72[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_72[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_72_DATA_0)
            int_B_72[31:0] <= (WDATA[31:0] & wmask) | (int_B_72[31:0] & ~wmask);
    end
end

// int_B_73[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_73[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_73_DATA_0)
            int_B_73[31:0] <= (WDATA[31:0] & wmask) | (int_B_73[31:0] & ~wmask);
    end
end

// int_B_74[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_74[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_74_DATA_0)
            int_B_74[31:0] <= (WDATA[31:0] & wmask) | (int_B_74[31:0] & ~wmask);
    end
end

// int_B_75[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_75[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_75_DATA_0)
            int_B_75[31:0] <= (WDATA[31:0] & wmask) | (int_B_75[31:0] & ~wmask);
    end
end

// int_B_76[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_76[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_76_DATA_0)
            int_B_76[31:0] <= (WDATA[31:0] & wmask) | (int_B_76[31:0] & ~wmask);
    end
end

// int_B_77[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_77[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_77_DATA_0)
            int_B_77[31:0] <= (WDATA[31:0] & wmask) | (int_B_77[31:0] & ~wmask);
    end
end

// int_B_78[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_78[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_78_DATA_0)
            int_B_78[31:0] <= (WDATA[31:0] & wmask) | (int_B_78[31:0] & ~wmask);
    end
end

// int_B_79[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_79[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_79_DATA_0)
            int_B_79[31:0] <= (WDATA[31:0] & wmask) | (int_B_79[31:0] & ~wmask);
    end
end

// int_B_80[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_80[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_80_DATA_0)
            int_B_80[31:0] <= (WDATA[31:0] & wmask) | (int_B_80[31:0] & ~wmask);
    end
end

// int_B_81[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_81[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_81_DATA_0)
            int_B_81[31:0] <= (WDATA[31:0] & wmask) | (int_B_81[31:0] & ~wmask);
    end
end

// int_B_82[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_82[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_82_DATA_0)
            int_B_82[31:0] <= (WDATA[31:0] & wmask) | (int_B_82[31:0] & ~wmask);
    end
end

// int_B_83[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_83[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_83_DATA_0)
            int_B_83[31:0] <= (WDATA[31:0] & wmask) | (int_B_83[31:0] & ~wmask);
    end
end

// int_B_84[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_84[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_84_DATA_0)
            int_B_84[31:0] <= (WDATA[31:0] & wmask) | (int_B_84[31:0] & ~wmask);
    end
end

// int_B_85[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_85[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_85_DATA_0)
            int_B_85[31:0] <= (WDATA[31:0] & wmask) | (int_B_85[31:0] & ~wmask);
    end
end

// int_B_86[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_86[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_86_DATA_0)
            int_B_86[31:0] <= (WDATA[31:0] & wmask) | (int_B_86[31:0] & ~wmask);
    end
end

// int_B_87[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_87[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_87_DATA_0)
            int_B_87[31:0] <= (WDATA[31:0] & wmask) | (int_B_87[31:0] & ~wmask);
    end
end

// int_B_88[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_88[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_88_DATA_0)
            int_B_88[31:0] <= (WDATA[31:0] & wmask) | (int_B_88[31:0] & ~wmask);
    end
end

// int_B_89[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_89[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_89_DATA_0)
            int_B_89[31:0] <= (WDATA[31:0] & wmask) | (int_B_89[31:0] & ~wmask);
    end
end

// int_B_90[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_90[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_90_DATA_0)
            int_B_90[31:0] <= (WDATA[31:0] & wmask) | (int_B_90[31:0] & ~wmask);
    end
end

// int_B_91[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_91[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_91_DATA_0)
            int_B_91[31:0] <= (WDATA[31:0] & wmask) | (int_B_91[31:0] & ~wmask);
    end
end

// int_B_92[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_92[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_92_DATA_0)
            int_B_92[31:0] <= (WDATA[31:0] & wmask) | (int_B_92[31:0] & ~wmask);
    end
end

// int_B_93[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_93[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_93_DATA_0)
            int_B_93[31:0] <= (WDATA[31:0] & wmask) | (int_B_93[31:0] & ~wmask);
    end
end

// int_B_94[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_94[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_94_DATA_0)
            int_B_94[31:0] <= (WDATA[31:0] & wmask) | (int_B_94[31:0] & ~wmask);
    end
end

// int_B_95[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_95[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_95_DATA_0)
            int_B_95[31:0] <= (WDATA[31:0] & wmask) | (int_B_95[31:0] & ~wmask);
    end
end

// int_B_96[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_96[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_96_DATA_0)
            int_B_96[31:0] <= (WDATA[31:0] & wmask) | (int_B_96[31:0] & ~wmask);
    end
end

// int_B_97[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_97[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_97_DATA_0)
            int_B_97[31:0] <= (WDATA[31:0] & wmask) | (int_B_97[31:0] & ~wmask);
    end
end

// int_B_98[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_98[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_98_DATA_0)
            int_B_98[31:0] <= (WDATA[31:0] & wmask) | (int_B_98[31:0] & ~wmask);
    end
end

// int_B_99[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_99[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_99_DATA_0)
            int_B_99[31:0] <= (WDATA[31:0] & wmask) | (int_B_99[31:0] & ~wmask);
    end
end

// int_B_100[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_100[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_100_DATA_0)
            int_B_100[31:0] <= (WDATA[31:0] & wmask) | (int_B_100[31:0] & ~wmask);
    end
end

// int_B_101[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_101[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_101_DATA_0)
            int_B_101[31:0] <= (WDATA[31:0] & wmask) | (int_B_101[31:0] & ~wmask);
    end
end

// int_B_102[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_102[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_102_DATA_0)
            int_B_102[31:0] <= (WDATA[31:0] & wmask) | (int_B_102[31:0] & ~wmask);
    end
end

// int_B_103[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_103[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_103_DATA_0)
            int_B_103[31:0] <= (WDATA[31:0] & wmask) | (int_B_103[31:0] & ~wmask);
    end
end

// int_B_104[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_104[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_104_DATA_0)
            int_B_104[31:0] <= (WDATA[31:0] & wmask) | (int_B_104[31:0] & ~wmask);
    end
end

// int_B_105[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_105[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_105_DATA_0)
            int_B_105[31:0] <= (WDATA[31:0] & wmask) | (int_B_105[31:0] & ~wmask);
    end
end

// int_B_106[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_106[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_106_DATA_0)
            int_B_106[31:0] <= (WDATA[31:0] & wmask) | (int_B_106[31:0] & ~wmask);
    end
end

// int_B_107[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_107[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_107_DATA_0)
            int_B_107[31:0] <= (WDATA[31:0] & wmask) | (int_B_107[31:0] & ~wmask);
    end
end

// int_B_108[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_108[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_108_DATA_0)
            int_B_108[31:0] <= (WDATA[31:0] & wmask) | (int_B_108[31:0] & ~wmask);
    end
end

// int_B_109[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_109[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_109_DATA_0)
            int_B_109[31:0] <= (WDATA[31:0] & wmask) | (int_B_109[31:0] & ~wmask);
    end
end

// int_B_110[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_110[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_110_DATA_0)
            int_B_110[31:0] <= (WDATA[31:0] & wmask) | (int_B_110[31:0] & ~wmask);
    end
end

// int_B_111[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_111[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_111_DATA_0)
            int_B_111[31:0] <= (WDATA[31:0] & wmask) | (int_B_111[31:0] & ~wmask);
    end
end

// int_B_112[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_112[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_112_DATA_0)
            int_B_112[31:0] <= (WDATA[31:0] & wmask) | (int_B_112[31:0] & ~wmask);
    end
end

// int_B_113[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_113[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_113_DATA_0)
            int_B_113[31:0] <= (WDATA[31:0] & wmask) | (int_B_113[31:0] & ~wmask);
    end
end

// int_B_114[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_114[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_114_DATA_0)
            int_B_114[31:0] <= (WDATA[31:0] & wmask) | (int_B_114[31:0] & ~wmask);
    end
end

// int_B_115[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_115[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_115_DATA_0)
            int_B_115[31:0] <= (WDATA[31:0] & wmask) | (int_B_115[31:0] & ~wmask);
    end
end

// int_B_116[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_116[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_116_DATA_0)
            int_B_116[31:0] <= (WDATA[31:0] & wmask) | (int_B_116[31:0] & ~wmask);
    end
end

// int_B_117[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_117[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_117_DATA_0)
            int_B_117[31:0] <= (WDATA[31:0] & wmask) | (int_B_117[31:0] & ~wmask);
    end
end

// int_B_118[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_118[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_118_DATA_0)
            int_B_118[31:0] <= (WDATA[31:0] & wmask) | (int_B_118[31:0] & ~wmask);
    end
end

// int_B_119[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_119[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_119_DATA_0)
            int_B_119[31:0] <= (WDATA[31:0] & wmask) | (int_B_119[31:0] & ~wmask);
    end
end

// int_B_120[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_120[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_120_DATA_0)
            int_B_120[31:0] <= (WDATA[31:0] & wmask) | (int_B_120[31:0] & ~wmask);
    end
end

// int_B_121[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_121[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_121_DATA_0)
            int_B_121[31:0] <= (WDATA[31:0] & wmask) | (int_B_121[31:0] & ~wmask);
    end
end

// int_B_122[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_122[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_122_DATA_0)
            int_B_122[31:0] <= (WDATA[31:0] & wmask) | (int_B_122[31:0] & ~wmask);
    end
end

// int_B_123[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_123[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_123_DATA_0)
            int_B_123[31:0] <= (WDATA[31:0] & wmask) | (int_B_123[31:0] & ~wmask);
    end
end

// int_B_124[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_124[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_124_DATA_0)
            int_B_124[31:0] <= (WDATA[31:0] & wmask) | (int_B_124[31:0] & ~wmask);
    end
end

// int_B_125[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_125[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_125_DATA_0)
            int_B_125[31:0] <= (WDATA[31:0] & wmask) | (int_B_125[31:0] & ~wmask);
    end
end

// int_B_126[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_126[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_126_DATA_0)
            int_B_126[31:0] <= (WDATA[31:0] & wmask) | (int_B_126[31:0] & ~wmask);
    end
end

// int_B_127[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_127[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_127_DATA_0)
            int_B_127[31:0] <= (WDATA[31:0] & wmask) | (int_B_127[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
