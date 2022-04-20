-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity eucDis_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 12;
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
    A_0                   :out  STD_LOGIC_VECTOR(31 downto 0);
    A_1                   :out  STD_LOGIC_VECTOR(31 downto 0);
    A_2                   :out  STD_LOGIC_VECTOR(31 downto 0);
    A_3                   :out  STD_LOGIC_VECTOR(31 downto 0);
    A_4                   :out  STD_LOGIC_VECTOR(31 downto 0);
    A_5                   :out  STD_LOGIC_VECTOR(31 downto 0);
    A_6                   :out  STD_LOGIC_VECTOR(31 downto 0);
    A_7                   :out  STD_LOGIC_VECTOR(31 downto 0);
    A_8                   :out  STD_LOGIC_VECTOR(31 downto 0);
    A_9                   :out  STD_LOGIC_VECTOR(31 downto 0);
    A_10                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_11                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_12                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_13                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_14                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_15                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_16                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_17                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_18                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_19                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_20                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_21                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_22                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_23                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_24                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_25                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_26                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_27                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_28                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_29                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_30                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_31                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_32                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_33                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_34                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_35                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_36                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_37                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_38                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_39                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_40                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_41                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_42                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_43                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_44                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_45                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_46                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_47                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_48                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_49                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_50                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_51                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_52                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_53                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_54                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_55                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_56                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_57                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_58                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_59                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_60                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_61                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_62                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_63                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_64                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_65                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_66                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_67                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_68                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_69                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_70                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_71                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_72                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_73                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_74                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_75                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_76                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_77                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_78                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_79                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_80                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_81                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_82                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_83                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_84                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_85                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_86                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_87                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_88                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_89                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_90                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_91                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_92                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_93                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_94                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_95                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_96                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_97                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_98                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_99                  :out  STD_LOGIC_VECTOR(31 downto 0);
    A_100                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_101                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_102                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_103                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_104                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_105                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_106                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_107                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_108                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_109                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_110                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_111                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_112                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_113                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_114                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_115                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_116                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_117                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_118                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_119                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_120                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_121                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_122                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_123                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_124                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_125                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_126                 :out  STD_LOGIC_VECTOR(31 downto 0);
    A_127                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_0                   :out  STD_LOGIC_VECTOR(31 downto 0);
    B_1                   :out  STD_LOGIC_VECTOR(31 downto 0);
    B_2                   :out  STD_LOGIC_VECTOR(31 downto 0);
    B_3                   :out  STD_LOGIC_VECTOR(31 downto 0);
    B_4                   :out  STD_LOGIC_VECTOR(31 downto 0);
    B_5                   :out  STD_LOGIC_VECTOR(31 downto 0);
    B_6                   :out  STD_LOGIC_VECTOR(31 downto 0);
    B_7                   :out  STD_LOGIC_VECTOR(31 downto 0);
    B_8                   :out  STD_LOGIC_VECTOR(31 downto 0);
    B_9                   :out  STD_LOGIC_VECTOR(31 downto 0);
    B_10                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_11                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_12                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_13                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_14                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_15                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_16                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_17                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_18                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_19                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_20                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_21                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_22                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_23                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_24                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_25                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_26                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_27                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_28                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_29                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_30                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_31                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_32                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_33                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_34                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_35                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_36                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_37                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_38                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_39                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_40                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_41                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_42                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_43                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_44                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_45                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_46                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_47                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_48                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_49                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_50                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_51                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_52                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_53                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_54                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_55                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_56                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_57                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_58                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_59                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_60                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_61                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_62                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_63                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_64                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_65                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_66                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_67                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_68                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_69                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_70                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_71                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_72                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_73                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_74                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_75                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_76                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_77                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_78                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_79                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_80                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_81                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_82                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_83                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_84                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_85                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_86                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_87                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_88                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_89                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_90                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_91                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_92                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_93                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_94                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_95                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_96                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_97                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_98                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_99                  :out  STD_LOGIC_VECTOR(31 downto 0);
    B_100                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_101                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_102                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_103                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_104                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_105                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_106                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_107                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_108                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_109                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_110                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_111                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_112                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_113                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_114                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_115                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_116                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_117                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_118                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_119                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_120                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_121                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_122                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_123                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_124                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_125                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_126                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_127                 :out  STD_LOGIC_VECTOR(31 downto 0)
);
end entity eucDis_control_s_axi;

-- ------------------------Address Info-------------------
-- 0x000 : reserved
-- 0x004 : reserved
-- 0x008 : reserved
-- 0x00c : reserved
-- 0x010 : Data signal of A_0
--         bit 31~0 - A_0[31:0] (Read/Write)
-- 0x014 : reserved
-- 0x018 : Data signal of A_1
--         bit 31~0 - A_1[31:0] (Read/Write)
-- 0x01c : reserved
-- 0x020 : Data signal of A_2
--         bit 31~0 - A_2[31:0] (Read/Write)
-- 0x024 : reserved
-- 0x028 : Data signal of A_3
--         bit 31~0 - A_3[31:0] (Read/Write)
-- 0x02c : reserved
-- 0x030 : Data signal of A_4
--         bit 31~0 - A_4[31:0] (Read/Write)
-- 0x034 : reserved
-- 0x038 : Data signal of A_5
--         bit 31~0 - A_5[31:0] (Read/Write)
-- 0x03c : reserved
-- 0x040 : Data signal of A_6
--         bit 31~0 - A_6[31:0] (Read/Write)
-- 0x044 : reserved
-- 0x048 : Data signal of A_7
--         bit 31~0 - A_7[31:0] (Read/Write)
-- 0x04c : reserved
-- 0x050 : Data signal of A_8
--         bit 31~0 - A_8[31:0] (Read/Write)
-- 0x054 : reserved
-- 0x058 : Data signal of A_9
--         bit 31~0 - A_9[31:0] (Read/Write)
-- 0x05c : reserved
-- 0x060 : Data signal of A_10
--         bit 31~0 - A_10[31:0] (Read/Write)
-- 0x064 : reserved
-- 0x068 : Data signal of A_11
--         bit 31~0 - A_11[31:0] (Read/Write)
-- 0x06c : reserved
-- 0x070 : Data signal of A_12
--         bit 31~0 - A_12[31:0] (Read/Write)
-- 0x074 : reserved
-- 0x078 : Data signal of A_13
--         bit 31~0 - A_13[31:0] (Read/Write)
-- 0x07c : reserved
-- 0x080 : Data signal of A_14
--         bit 31~0 - A_14[31:0] (Read/Write)
-- 0x084 : reserved
-- 0x088 : Data signal of A_15
--         bit 31~0 - A_15[31:0] (Read/Write)
-- 0x08c : reserved
-- 0x090 : Data signal of A_16
--         bit 31~0 - A_16[31:0] (Read/Write)
-- 0x094 : reserved
-- 0x098 : Data signal of A_17
--         bit 31~0 - A_17[31:0] (Read/Write)
-- 0x09c : reserved
-- 0x0a0 : Data signal of A_18
--         bit 31~0 - A_18[31:0] (Read/Write)
-- 0x0a4 : reserved
-- 0x0a8 : Data signal of A_19
--         bit 31~0 - A_19[31:0] (Read/Write)
-- 0x0ac : reserved
-- 0x0b0 : Data signal of A_20
--         bit 31~0 - A_20[31:0] (Read/Write)
-- 0x0b4 : reserved
-- 0x0b8 : Data signal of A_21
--         bit 31~0 - A_21[31:0] (Read/Write)
-- 0x0bc : reserved
-- 0x0c0 : Data signal of A_22
--         bit 31~0 - A_22[31:0] (Read/Write)
-- 0x0c4 : reserved
-- 0x0c8 : Data signal of A_23
--         bit 31~0 - A_23[31:0] (Read/Write)
-- 0x0cc : reserved
-- 0x0d0 : Data signal of A_24
--         bit 31~0 - A_24[31:0] (Read/Write)
-- 0x0d4 : reserved
-- 0x0d8 : Data signal of A_25
--         bit 31~0 - A_25[31:0] (Read/Write)
-- 0x0dc : reserved
-- 0x0e0 : Data signal of A_26
--         bit 31~0 - A_26[31:0] (Read/Write)
-- 0x0e4 : reserved
-- 0x0e8 : Data signal of A_27
--         bit 31~0 - A_27[31:0] (Read/Write)
-- 0x0ec : reserved
-- 0x0f0 : Data signal of A_28
--         bit 31~0 - A_28[31:0] (Read/Write)
-- 0x0f4 : reserved
-- 0x0f8 : Data signal of A_29
--         bit 31~0 - A_29[31:0] (Read/Write)
-- 0x0fc : reserved
-- 0x100 : Data signal of A_30
--         bit 31~0 - A_30[31:0] (Read/Write)
-- 0x104 : reserved
-- 0x108 : Data signal of A_31
--         bit 31~0 - A_31[31:0] (Read/Write)
-- 0x10c : reserved
-- 0x110 : Data signal of A_32
--         bit 31~0 - A_32[31:0] (Read/Write)
-- 0x114 : reserved
-- 0x118 : Data signal of A_33
--         bit 31~0 - A_33[31:0] (Read/Write)
-- 0x11c : reserved
-- 0x120 : Data signal of A_34
--         bit 31~0 - A_34[31:0] (Read/Write)
-- 0x124 : reserved
-- 0x128 : Data signal of A_35
--         bit 31~0 - A_35[31:0] (Read/Write)
-- 0x12c : reserved
-- 0x130 : Data signal of A_36
--         bit 31~0 - A_36[31:0] (Read/Write)
-- 0x134 : reserved
-- 0x138 : Data signal of A_37
--         bit 31~0 - A_37[31:0] (Read/Write)
-- 0x13c : reserved
-- 0x140 : Data signal of A_38
--         bit 31~0 - A_38[31:0] (Read/Write)
-- 0x144 : reserved
-- 0x148 : Data signal of A_39
--         bit 31~0 - A_39[31:0] (Read/Write)
-- 0x14c : reserved
-- 0x150 : Data signal of A_40
--         bit 31~0 - A_40[31:0] (Read/Write)
-- 0x154 : reserved
-- 0x158 : Data signal of A_41
--         bit 31~0 - A_41[31:0] (Read/Write)
-- 0x15c : reserved
-- 0x160 : Data signal of A_42
--         bit 31~0 - A_42[31:0] (Read/Write)
-- 0x164 : reserved
-- 0x168 : Data signal of A_43
--         bit 31~0 - A_43[31:0] (Read/Write)
-- 0x16c : reserved
-- 0x170 : Data signal of A_44
--         bit 31~0 - A_44[31:0] (Read/Write)
-- 0x174 : reserved
-- 0x178 : Data signal of A_45
--         bit 31~0 - A_45[31:0] (Read/Write)
-- 0x17c : reserved
-- 0x180 : Data signal of A_46
--         bit 31~0 - A_46[31:0] (Read/Write)
-- 0x184 : reserved
-- 0x188 : Data signal of A_47
--         bit 31~0 - A_47[31:0] (Read/Write)
-- 0x18c : reserved
-- 0x190 : Data signal of A_48
--         bit 31~0 - A_48[31:0] (Read/Write)
-- 0x194 : reserved
-- 0x198 : Data signal of A_49
--         bit 31~0 - A_49[31:0] (Read/Write)
-- 0x19c : reserved
-- 0x1a0 : Data signal of A_50
--         bit 31~0 - A_50[31:0] (Read/Write)
-- 0x1a4 : reserved
-- 0x1a8 : Data signal of A_51
--         bit 31~0 - A_51[31:0] (Read/Write)
-- 0x1ac : reserved
-- 0x1b0 : Data signal of A_52
--         bit 31~0 - A_52[31:0] (Read/Write)
-- 0x1b4 : reserved
-- 0x1b8 : Data signal of A_53
--         bit 31~0 - A_53[31:0] (Read/Write)
-- 0x1bc : reserved
-- 0x1c0 : Data signal of A_54
--         bit 31~0 - A_54[31:0] (Read/Write)
-- 0x1c4 : reserved
-- 0x1c8 : Data signal of A_55
--         bit 31~0 - A_55[31:0] (Read/Write)
-- 0x1cc : reserved
-- 0x1d0 : Data signal of A_56
--         bit 31~0 - A_56[31:0] (Read/Write)
-- 0x1d4 : reserved
-- 0x1d8 : Data signal of A_57
--         bit 31~0 - A_57[31:0] (Read/Write)
-- 0x1dc : reserved
-- 0x1e0 : Data signal of A_58
--         bit 31~0 - A_58[31:0] (Read/Write)
-- 0x1e4 : reserved
-- 0x1e8 : Data signal of A_59
--         bit 31~0 - A_59[31:0] (Read/Write)
-- 0x1ec : reserved
-- 0x1f0 : Data signal of A_60
--         bit 31~0 - A_60[31:0] (Read/Write)
-- 0x1f4 : reserved
-- 0x1f8 : Data signal of A_61
--         bit 31~0 - A_61[31:0] (Read/Write)
-- 0x1fc : reserved
-- 0x200 : Data signal of A_62
--         bit 31~0 - A_62[31:0] (Read/Write)
-- 0x204 : reserved
-- 0x208 : Data signal of A_63
--         bit 31~0 - A_63[31:0] (Read/Write)
-- 0x20c : reserved
-- 0x210 : Data signal of A_64
--         bit 31~0 - A_64[31:0] (Read/Write)
-- 0x214 : reserved
-- 0x218 : Data signal of A_65
--         bit 31~0 - A_65[31:0] (Read/Write)
-- 0x21c : reserved
-- 0x220 : Data signal of A_66
--         bit 31~0 - A_66[31:0] (Read/Write)
-- 0x224 : reserved
-- 0x228 : Data signal of A_67
--         bit 31~0 - A_67[31:0] (Read/Write)
-- 0x22c : reserved
-- 0x230 : Data signal of A_68
--         bit 31~0 - A_68[31:0] (Read/Write)
-- 0x234 : reserved
-- 0x238 : Data signal of A_69
--         bit 31~0 - A_69[31:0] (Read/Write)
-- 0x23c : reserved
-- 0x240 : Data signal of A_70
--         bit 31~0 - A_70[31:0] (Read/Write)
-- 0x244 : reserved
-- 0x248 : Data signal of A_71
--         bit 31~0 - A_71[31:0] (Read/Write)
-- 0x24c : reserved
-- 0x250 : Data signal of A_72
--         bit 31~0 - A_72[31:0] (Read/Write)
-- 0x254 : reserved
-- 0x258 : Data signal of A_73
--         bit 31~0 - A_73[31:0] (Read/Write)
-- 0x25c : reserved
-- 0x260 : Data signal of A_74
--         bit 31~0 - A_74[31:0] (Read/Write)
-- 0x264 : reserved
-- 0x268 : Data signal of A_75
--         bit 31~0 - A_75[31:0] (Read/Write)
-- 0x26c : reserved
-- 0x270 : Data signal of A_76
--         bit 31~0 - A_76[31:0] (Read/Write)
-- 0x274 : reserved
-- 0x278 : Data signal of A_77
--         bit 31~0 - A_77[31:0] (Read/Write)
-- 0x27c : reserved
-- 0x280 : Data signal of A_78
--         bit 31~0 - A_78[31:0] (Read/Write)
-- 0x284 : reserved
-- 0x288 : Data signal of A_79
--         bit 31~0 - A_79[31:0] (Read/Write)
-- 0x28c : reserved
-- 0x290 : Data signal of A_80
--         bit 31~0 - A_80[31:0] (Read/Write)
-- 0x294 : reserved
-- 0x298 : Data signal of A_81
--         bit 31~0 - A_81[31:0] (Read/Write)
-- 0x29c : reserved
-- 0x2a0 : Data signal of A_82
--         bit 31~0 - A_82[31:0] (Read/Write)
-- 0x2a4 : reserved
-- 0x2a8 : Data signal of A_83
--         bit 31~0 - A_83[31:0] (Read/Write)
-- 0x2ac : reserved
-- 0x2b0 : Data signal of A_84
--         bit 31~0 - A_84[31:0] (Read/Write)
-- 0x2b4 : reserved
-- 0x2b8 : Data signal of A_85
--         bit 31~0 - A_85[31:0] (Read/Write)
-- 0x2bc : reserved
-- 0x2c0 : Data signal of A_86
--         bit 31~0 - A_86[31:0] (Read/Write)
-- 0x2c4 : reserved
-- 0x2c8 : Data signal of A_87
--         bit 31~0 - A_87[31:0] (Read/Write)
-- 0x2cc : reserved
-- 0x2d0 : Data signal of A_88
--         bit 31~0 - A_88[31:0] (Read/Write)
-- 0x2d4 : reserved
-- 0x2d8 : Data signal of A_89
--         bit 31~0 - A_89[31:0] (Read/Write)
-- 0x2dc : reserved
-- 0x2e0 : Data signal of A_90
--         bit 31~0 - A_90[31:0] (Read/Write)
-- 0x2e4 : reserved
-- 0x2e8 : Data signal of A_91
--         bit 31~0 - A_91[31:0] (Read/Write)
-- 0x2ec : reserved
-- 0x2f0 : Data signal of A_92
--         bit 31~0 - A_92[31:0] (Read/Write)
-- 0x2f4 : reserved
-- 0x2f8 : Data signal of A_93
--         bit 31~0 - A_93[31:0] (Read/Write)
-- 0x2fc : reserved
-- 0x300 : Data signal of A_94
--         bit 31~0 - A_94[31:0] (Read/Write)
-- 0x304 : reserved
-- 0x308 : Data signal of A_95
--         bit 31~0 - A_95[31:0] (Read/Write)
-- 0x30c : reserved
-- 0x310 : Data signal of A_96
--         bit 31~0 - A_96[31:0] (Read/Write)
-- 0x314 : reserved
-- 0x318 : Data signal of A_97
--         bit 31~0 - A_97[31:0] (Read/Write)
-- 0x31c : reserved
-- 0x320 : Data signal of A_98
--         bit 31~0 - A_98[31:0] (Read/Write)
-- 0x324 : reserved
-- 0x328 : Data signal of A_99
--         bit 31~0 - A_99[31:0] (Read/Write)
-- 0x32c : reserved
-- 0x330 : Data signal of A_100
--         bit 31~0 - A_100[31:0] (Read/Write)
-- 0x334 : reserved
-- 0x338 : Data signal of A_101
--         bit 31~0 - A_101[31:0] (Read/Write)
-- 0x33c : reserved
-- 0x340 : Data signal of A_102
--         bit 31~0 - A_102[31:0] (Read/Write)
-- 0x344 : reserved
-- 0x348 : Data signal of A_103
--         bit 31~0 - A_103[31:0] (Read/Write)
-- 0x34c : reserved
-- 0x350 : Data signal of A_104
--         bit 31~0 - A_104[31:0] (Read/Write)
-- 0x354 : reserved
-- 0x358 : Data signal of A_105
--         bit 31~0 - A_105[31:0] (Read/Write)
-- 0x35c : reserved
-- 0x360 : Data signal of A_106
--         bit 31~0 - A_106[31:0] (Read/Write)
-- 0x364 : reserved
-- 0x368 : Data signal of A_107
--         bit 31~0 - A_107[31:0] (Read/Write)
-- 0x36c : reserved
-- 0x370 : Data signal of A_108
--         bit 31~0 - A_108[31:0] (Read/Write)
-- 0x374 : reserved
-- 0x378 : Data signal of A_109
--         bit 31~0 - A_109[31:0] (Read/Write)
-- 0x37c : reserved
-- 0x380 : Data signal of A_110
--         bit 31~0 - A_110[31:0] (Read/Write)
-- 0x384 : reserved
-- 0x388 : Data signal of A_111
--         bit 31~0 - A_111[31:0] (Read/Write)
-- 0x38c : reserved
-- 0x390 : Data signal of A_112
--         bit 31~0 - A_112[31:0] (Read/Write)
-- 0x394 : reserved
-- 0x398 : Data signal of A_113
--         bit 31~0 - A_113[31:0] (Read/Write)
-- 0x39c : reserved
-- 0x3a0 : Data signal of A_114
--         bit 31~0 - A_114[31:0] (Read/Write)
-- 0x3a4 : reserved
-- 0x3a8 : Data signal of A_115
--         bit 31~0 - A_115[31:0] (Read/Write)
-- 0x3ac : reserved
-- 0x3b0 : Data signal of A_116
--         bit 31~0 - A_116[31:0] (Read/Write)
-- 0x3b4 : reserved
-- 0x3b8 : Data signal of A_117
--         bit 31~0 - A_117[31:0] (Read/Write)
-- 0x3bc : reserved
-- 0x3c0 : Data signal of A_118
--         bit 31~0 - A_118[31:0] (Read/Write)
-- 0x3c4 : reserved
-- 0x3c8 : Data signal of A_119
--         bit 31~0 - A_119[31:0] (Read/Write)
-- 0x3cc : reserved
-- 0x3d0 : Data signal of A_120
--         bit 31~0 - A_120[31:0] (Read/Write)
-- 0x3d4 : reserved
-- 0x3d8 : Data signal of A_121
--         bit 31~0 - A_121[31:0] (Read/Write)
-- 0x3dc : reserved
-- 0x3e0 : Data signal of A_122
--         bit 31~0 - A_122[31:0] (Read/Write)
-- 0x3e4 : reserved
-- 0x3e8 : Data signal of A_123
--         bit 31~0 - A_123[31:0] (Read/Write)
-- 0x3ec : reserved
-- 0x3f0 : Data signal of A_124
--         bit 31~0 - A_124[31:0] (Read/Write)
-- 0x3f4 : reserved
-- 0x3f8 : Data signal of A_125
--         bit 31~0 - A_125[31:0] (Read/Write)
-- 0x3fc : reserved
-- 0x400 : Data signal of A_126
--         bit 31~0 - A_126[31:0] (Read/Write)
-- 0x404 : reserved
-- 0x408 : Data signal of A_127
--         bit 31~0 - A_127[31:0] (Read/Write)
-- 0x40c : reserved
-- 0x410 : Data signal of B_0
--         bit 31~0 - B_0[31:0] (Read/Write)
-- 0x414 : reserved
-- 0x418 : Data signal of B_1
--         bit 31~0 - B_1[31:0] (Read/Write)
-- 0x41c : reserved
-- 0x420 : Data signal of B_2
--         bit 31~0 - B_2[31:0] (Read/Write)
-- 0x424 : reserved
-- 0x428 : Data signal of B_3
--         bit 31~0 - B_3[31:0] (Read/Write)
-- 0x42c : reserved
-- 0x430 : Data signal of B_4
--         bit 31~0 - B_4[31:0] (Read/Write)
-- 0x434 : reserved
-- 0x438 : Data signal of B_5
--         bit 31~0 - B_5[31:0] (Read/Write)
-- 0x43c : reserved
-- 0x440 : Data signal of B_6
--         bit 31~0 - B_6[31:0] (Read/Write)
-- 0x444 : reserved
-- 0x448 : Data signal of B_7
--         bit 31~0 - B_7[31:0] (Read/Write)
-- 0x44c : reserved
-- 0x450 : Data signal of B_8
--         bit 31~0 - B_8[31:0] (Read/Write)
-- 0x454 : reserved
-- 0x458 : Data signal of B_9
--         bit 31~0 - B_9[31:0] (Read/Write)
-- 0x45c : reserved
-- 0x460 : Data signal of B_10
--         bit 31~0 - B_10[31:0] (Read/Write)
-- 0x464 : reserved
-- 0x468 : Data signal of B_11
--         bit 31~0 - B_11[31:0] (Read/Write)
-- 0x46c : reserved
-- 0x470 : Data signal of B_12
--         bit 31~0 - B_12[31:0] (Read/Write)
-- 0x474 : reserved
-- 0x478 : Data signal of B_13
--         bit 31~0 - B_13[31:0] (Read/Write)
-- 0x47c : reserved
-- 0x480 : Data signal of B_14
--         bit 31~0 - B_14[31:0] (Read/Write)
-- 0x484 : reserved
-- 0x488 : Data signal of B_15
--         bit 31~0 - B_15[31:0] (Read/Write)
-- 0x48c : reserved
-- 0x490 : Data signal of B_16
--         bit 31~0 - B_16[31:0] (Read/Write)
-- 0x494 : reserved
-- 0x498 : Data signal of B_17
--         bit 31~0 - B_17[31:0] (Read/Write)
-- 0x49c : reserved
-- 0x4a0 : Data signal of B_18
--         bit 31~0 - B_18[31:0] (Read/Write)
-- 0x4a4 : reserved
-- 0x4a8 : Data signal of B_19
--         bit 31~0 - B_19[31:0] (Read/Write)
-- 0x4ac : reserved
-- 0x4b0 : Data signal of B_20
--         bit 31~0 - B_20[31:0] (Read/Write)
-- 0x4b4 : reserved
-- 0x4b8 : Data signal of B_21
--         bit 31~0 - B_21[31:0] (Read/Write)
-- 0x4bc : reserved
-- 0x4c0 : Data signal of B_22
--         bit 31~0 - B_22[31:0] (Read/Write)
-- 0x4c4 : reserved
-- 0x4c8 : Data signal of B_23
--         bit 31~0 - B_23[31:0] (Read/Write)
-- 0x4cc : reserved
-- 0x4d0 : Data signal of B_24
--         bit 31~0 - B_24[31:0] (Read/Write)
-- 0x4d4 : reserved
-- 0x4d8 : Data signal of B_25
--         bit 31~0 - B_25[31:0] (Read/Write)
-- 0x4dc : reserved
-- 0x4e0 : Data signal of B_26
--         bit 31~0 - B_26[31:0] (Read/Write)
-- 0x4e4 : reserved
-- 0x4e8 : Data signal of B_27
--         bit 31~0 - B_27[31:0] (Read/Write)
-- 0x4ec : reserved
-- 0x4f0 : Data signal of B_28
--         bit 31~0 - B_28[31:0] (Read/Write)
-- 0x4f4 : reserved
-- 0x4f8 : Data signal of B_29
--         bit 31~0 - B_29[31:0] (Read/Write)
-- 0x4fc : reserved
-- 0x500 : Data signal of B_30
--         bit 31~0 - B_30[31:0] (Read/Write)
-- 0x504 : reserved
-- 0x508 : Data signal of B_31
--         bit 31~0 - B_31[31:0] (Read/Write)
-- 0x50c : reserved
-- 0x510 : Data signal of B_32
--         bit 31~0 - B_32[31:0] (Read/Write)
-- 0x514 : reserved
-- 0x518 : Data signal of B_33
--         bit 31~0 - B_33[31:0] (Read/Write)
-- 0x51c : reserved
-- 0x520 : Data signal of B_34
--         bit 31~0 - B_34[31:0] (Read/Write)
-- 0x524 : reserved
-- 0x528 : Data signal of B_35
--         bit 31~0 - B_35[31:0] (Read/Write)
-- 0x52c : reserved
-- 0x530 : Data signal of B_36
--         bit 31~0 - B_36[31:0] (Read/Write)
-- 0x534 : reserved
-- 0x538 : Data signal of B_37
--         bit 31~0 - B_37[31:0] (Read/Write)
-- 0x53c : reserved
-- 0x540 : Data signal of B_38
--         bit 31~0 - B_38[31:0] (Read/Write)
-- 0x544 : reserved
-- 0x548 : Data signal of B_39
--         bit 31~0 - B_39[31:0] (Read/Write)
-- 0x54c : reserved
-- 0x550 : Data signal of B_40
--         bit 31~0 - B_40[31:0] (Read/Write)
-- 0x554 : reserved
-- 0x558 : Data signal of B_41
--         bit 31~0 - B_41[31:0] (Read/Write)
-- 0x55c : reserved
-- 0x560 : Data signal of B_42
--         bit 31~0 - B_42[31:0] (Read/Write)
-- 0x564 : reserved
-- 0x568 : Data signal of B_43
--         bit 31~0 - B_43[31:0] (Read/Write)
-- 0x56c : reserved
-- 0x570 : Data signal of B_44
--         bit 31~0 - B_44[31:0] (Read/Write)
-- 0x574 : reserved
-- 0x578 : Data signal of B_45
--         bit 31~0 - B_45[31:0] (Read/Write)
-- 0x57c : reserved
-- 0x580 : Data signal of B_46
--         bit 31~0 - B_46[31:0] (Read/Write)
-- 0x584 : reserved
-- 0x588 : Data signal of B_47
--         bit 31~0 - B_47[31:0] (Read/Write)
-- 0x58c : reserved
-- 0x590 : Data signal of B_48
--         bit 31~0 - B_48[31:0] (Read/Write)
-- 0x594 : reserved
-- 0x598 : Data signal of B_49
--         bit 31~0 - B_49[31:0] (Read/Write)
-- 0x59c : reserved
-- 0x5a0 : Data signal of B_50
--         bit 31~0 - B_50[31:0] (Read/Write)
-- 0x5a4 : reserved
-- 0x5a8 : Data signal of B_51
--         bit 31~0 - B_51[31:0] (Read/Write)
-- 0x5ac : reserved
-- 0x5b0 : Data signal of B_52
--         bit 31~0 - B_52[31:0] (Read/Write)
-- 0x5b4 : reserved
-- 0x5b8 : Data signal of B_53
--         bit 31~0 - B_53[31:0] (Read/Write)
-- 0x5bc : reserved
-- 0x5c0 : Data signal of B_54
--         bit 31~0 - B_54[31:0] (Read/Write)
-- 0x5c4 : reserved
-- 0x5c8 : Data signal of B_55
--         bit 31~0 - B_55[31:0] (Read/Write)
-- 0x5cc : reserved
-- 0x5d0 : Data signal of B_56
--         bit 31~0 - B_56[31:0] (Read/Write)
-- 0x5d4 : reserved
-- 0x5d8 : Data signal of B_57
--         bit 31~0 - B_57[31:0] (Read/Write)
-- 0x5dc : reserved
-- 0x5e0 : Data signal of B_58
--         bit 31~0 - B_58[31:0] (Read/Write)
-- 0x5e4 : reserved
-- 0x5e8 : Data signal of B_59
--         bit 31~0 - B_59[31:0] (Read/Write)
-- 0x5ec : reserved
-- 0x5f0 : Data signal of B_60
--         bit 31~0 - B_60[31:0] (Read/Write)
-- 0x5f4 : reserved
-- 0x5f8 : Data signal of B_61
--         bit 31~0 - B_61[31:0] (Read/Write)
-- 0x5fc : reserved
-- 0x600 : Data signal of B_62
--         bit 31~0 - B_62[31:0] (Read/Write)
-- 0x604 : reserved
-- 0x608 : Data signal of B_63
--         bit 31~0 - B_63[31:0] (Read/Write)
-- 0x60c : reserved
-- 0x610 : Data signal of B_64
--         bit 31~0 - B_64[31:0] (Read/Write)
-- 0x614 : reserved
-- 0x618 : Data signal of B_65
--         bit 31~0 - B_65[31:0] (Read/Write)
-- 0x61c : reserved
-- 0x620 : Data signal of B_66
--         bit 31~0 - B_66[31:0] (Read/Write)
-- 0x624 : reserved
-- 0x628 : Data signal of B_67
--         bit 31~0 - B_67[31:0] (Read/Write)
-- 0x62c : reserved
-- 0x630 : Data signal of B_68
--         bit 31~0 - B_68[31:0] (Read/Write)
-- 0x634 : reserved
-- 0x638 : Data signal of B_69
--         bit 31~0 - B_69[31:0] (Read/Write)
-- 0x63c : reserved
-- 0x640 : Data signal of B_70
--         bit 31~0 - B_70[31:0] (Read/Write)
-- 0x644 : reserved
-- 0x648 : Data signal of B_71
--         bit 31~0 - B_71[31:0] (Read/Write)
-- 0x64c : reserved
-- 0x650 : Data signal of B_72
--         bit 31~0 - B_72[31:0] (Read/Write)
-- 0x654 : reserved
-- 0x658 : Data signal of B_73
--         bit 31~0 - B_73[31:0] (Read/Write)
-- 0x65c : reserved
-- 0x660 : Data signal of B_74
--         bit 31~0 - B_74[31:0] (Read/Write)
-- 0x664 : reserved
-- 0x668 : Data signal of B_75
--         bit 31~0 - B_75[31:0] (Read/Write)
-- 0x66c : reserved
-- 0x670 : Data signal of B_76
--         bit 31~0 - B_76[31:0] (Read/Write)
-- 0x674 : reserved
-- 0x678 : Data signal of B_77
--         bit 31~0 - B_77[31:0] (Read/Write)
-- 0x67c : reserved
-- 0x680 : Data signal of B_78
--         bit 31~0 - B_78[31:0] (Read/Write)
-- 0x684 : reserved
-- 0x688 : Data signal of B_79
--         bit 31~0 - B_79[31:0] (Read/Write)
-- 0x68c : reserved
-- 0x690 : Data signal of B_80
--         bit 31~0 - B_80[31:0] (Read/Write)
-- 0x694 : reserved
-- 0x698 : Data signal of B_81
--         bit 31~0 - B_81[31:0] (Read/Write)
-- 0x69c : reserved
-- 0x6a0 : Data signal of B_82
--         bit 31~0 - B_82[31:0] (Read/Write)
-- 0x6a4 : reserved
-- 0x6a8 : Data signal of B_83
--         bit 31~0 - B_83[31:0] (Read/Write)
-- 0x6ac : reserved
-- 0x6b0 : Data signal of B_84
--         bit 31~0 - B_84[31:0] (Read/Write)
-- 0x6b4 : reserved
-- 0x6b8 : Data signal of B_85
--         bit 31~0 - B_85[31:0] (Read/Write)
-- 0x6bc : reserved
-- 0x6c0 : Data signal of B_86
--         bit 31~0 - B_86[31:0] (Read/Write)
-- 0x6c4 : reserved
-- 0x6c8 : Data signal of B_87
--         bit 31~0 - B_87[31:0] (Read/Write)
-- 0x6cc : reserved
-- 0x6d0 : Data signal of B_88
--         bit 31~0 - B_88[31:0] (Read/Write)
-- 0x6d4 : reserved
-- 0x6d8 : Data signal of B_89
--         bit 31~0 - B_89[31:0] (Read/Write)
-- 0x6dc : reserved
-- 0x6e0 : Data signal of B_90
--         bit 31~0 - B_90[31:0] (Read/Write)
-- 0x6e4 : reserved
-- 0x6e8 : Data signal of B_91
--         bit 31~0 - B_91[31:0] (Read/Write)
-- 0x6ec : reserved
-- 0x6f0 : Data signal of B_92
--         bit 31~0 - B_92[31:0] (Read/Write)
-- 0x6f4 : reserved
-- 0x6f8 : Data signal of B_93
--         bit 31~0 - B_93[31:0] (Read/Write)
-- 0x6fc : reserved
-- 0x700 : Data signal of B_94
--         bit 31~0 - B_94[31:0] (Read/Write)
-- 0x704 : reserved
-- 0x708 : Data signal of B_95
--         bit 31~0 - B_95[31:0] (Read/Write)
-- 0x70c : reserved
-- 0x710 : Data signal of B_96
--         bit 31~0 - B_96[31:0] (Read/Write)
-- 0x714 : reserved
-- 0x718 : Data signal of B_97
--         bit 31~0 - B_97[31:0] (Read/Write)
-- 0x71c : reserved
-- 0x720 : Data signal of B_98
--         bit 31~0 - B_98[31:0] (Read/Write)
-- 0x724 : reserved
-- 0x728 : Data signal of B_99
--         bit 31~0 - B_99[31:0] (Read/Write)
-- 0x72c : reserved
-- 0x730 : Data signal of B_100
--         bit 31~0 - B_100[31:0] (Read/Write)
-- 0x734 : reserved
-- 0x738 : Data signal of B_101
--         bit 31~0 - B_101[31:0] (Read/Write)
-- 0x73c : reserved
-- 0x740 : Data signal of B_102
--         bit 31~0 - B_102[31:0] (Read/Write)
-- 0x744 : reserved
-- 0x748 : Data signal of B_103
--         bit 31~0 - B_103[31:0] (Read/Write)
-- 0x74c : reserved
-- 0x750 : Data signal of B_104
--         bit 31~0 - B_104[31:0] (Read/Write)
-- 0x754 : reserved
-- 0x758 : Data signal of B_105
--         bit 31~0 - B_105[31:0] (Read/Write)
-- 0x75c : reserved
-- 0x760 : Data signal of B_106
--         bit 31~0 - B_106[31:0] (Read/Write)
-- 0x764 : reserved
-- 0x768 : Data signal of B_107
--         bit 31~0 - B_107[31:0] (Read/Write)
-- 0x76c : reserved
-- 0x770 : Data signal of B_108
--         bit 31~0 - B_108[31:0] (Read/Write)
-- 0x774 : reserved
-- 0x778 : Data signal of B_109
--         bit 31~0 - B_109[31:0] (Read/Write)
-- 0x77c : reserved
-- 0x780 : Data signal of B_110
--         bit 31~0 - B_110[31:0] (Read/Write)
-- 0x784 : reserved
-- 0x788 : Data signal of B_111
--         bit 31~0 - B_111[31:0] (Read/Write)
-- 0x78c : reserved
-- 0x790 : Data signal of B_112
--         bit 31~0 - B_112[31:0] (Read/Write)
-- 0x794 : reserved
-- 0x798 : Data signal of B_113
--         bit 31~0 - B_113[31:0] (Read/Write)
-- 0x79c : reserved
-- 0x7a0 : Data signal of B_114
--         bit 31~0 - B_114[31:0] (Read/Write)
-- 0x7a4 : reserved
-- 0x7a8 : Data signal of B_115
--         bit 31~0 - B_115[31:0] (Read/Write)
-- 0x7ac : reserved
-- 0x7b0 : Data signal of B_116
--         bit 31~0 - B_116[31:0] (Read/Write)
-- 0x7b4 : reserved
-- 0x7b8 : Data signal of B_117
--         bit 31~0 - B_117[31:0] (Read/Write)
-- 0x7bc : reserved
-- 0x7c0 : Data signal of B_118
--         bit 31~0 - B_118[31:0] (Read/Write)
-- 0x7c4 : reserved
-- 0x7c8 : Data signal of B_119
--         bit 31~0 - B_119[31:0] (Read/Write)
-- 0x7cc : reserved
-- 0x7d0 : Data signal of B_120
--         bit 31~0 - B_120[31:0] (Read/Write)
-- 0x7d4 : reserved
-- 0x7d8 : Data signal of B_121
--         bit 31~0 - B_121[31:0] (Read/Write)
-- 0x7dc : reserved
-- 0x7e0 : Data signal of B_122
--         bit 31~0 - B_122[31:0] (Read/Write)
-- 0x7e4 : reserved
-- 0x7e8 : Data signal of B_123
--         bit 31~0 - B_123[31:0] (Read/Write)
-- 0x7ec : reserved
-- 0x7f0 : Data signal of B_124
--         bit 31~0 - B_124[31:0] (Read/Write)
-- 0x7f4 : reserved
-- 0x7f8 : Data signal of B_125
--         bit 31~0 - B_125[31:0] (Read/Write)
-- 0x7fc : reserved
-- 0x800 : Data signal of B_126
--         bit 31~0 - B_126[31:0] (Read/Write)
-- 0x804 : reserved
-- 0x808 : Data signal of B_127
--         bit 31~0 - B_127[31:0] (Read/Write)
-- 0x80c : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of eucDis_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_A_0_DATA_0   : INTEGER := 16#010#;
    constant ADDR_A_0_CTRL     : INTEGER := 16#014#;
    constant ADDR_A_1_DATA_0   : INTEGER := 16#018#;
    constant ADDR_A_1_CTRL     : INTEGER := 16#01c#;
    constant ADDR_A_2_DATA_0   : INTEGER := 16#020#;
    constant ADDR_A_2_CTRL     : INTEGER := 16#024#;
    constant ADDR_A_3_DATA_0   : INTEGER := 16#028#;
    constant ADDR_A_3_CTRL     : INTEGER := 16#02c#;
    constant ADDR_A_4_DATA_0   : INTEGER := 16#030#;
    constant ADDR_A_4_CTRL     : INTEGER := 16#034#;
    constant ADDR_A_5_DATA_0   : INTEGER := 16#038#;
    constant ADDR_A_5_CTRL     : INTEGER := 16#03c#;
    constant ADDR_A_6_DATA_0   : INTEGER := 16#040#;
    constant ADDR_A_6_CTRL     : INTEGER := 16#044#;
    constant ADDR_A_7_DATA_0   : INTEGER := 16#048#;
    constant ADDR_A_7_CTRL     : INTEGER := 16#04c#;
    constant ADDR_A_8_DATA_0   : INTEGER := 16#050#;
    constant ADDR_A_8_CTRL     : INTEGER := 16#054#;
    constant ADDR_A_9_DATA_0   : INTEGER := 16#058#;
    constant ADDR_A_9_CTRL     : INTEGER := 16#05c#;
    constant ADDR_A_10_DATA_0  : INTEGER := 16#060#;
    constant ADDR_A_10_CTRL    : INTEGER := 16#064#;
    constant ADDR_A_11_DATA_0  : INTEGER := 16#068#;
    constant ADDR_A_11_CTRL    : INTEGER := 16#06c#;
    constant ADDR_A_12_DATA_0  : INTEGER := 16#070#;
    constant ADDR_A_12_CTRL    : INTEGER := 16#074#;
    constant ADDR_A_13_DATA_0  : INTEGER := 16#078#;
    constant ADDR_A_13_CTRL    : INTEGER := 16#07c#;
    constant ADDR_A_14_DATA_0  : INTEGER := 16#080#;
    constant ADDR_A_14_CTRL    : INTEGER := 16#084#;
    constant ADDR_A_15_DATA_0  : INTEGER := 16#088#;
    constant ADDR_A_15_CTRL    : INTEGER := 16#08c#;
    constant ADDR_A_16_DATA_0  : INTEGER := 16#090#;
    constant ADDR_A_16_CTRL    : INTEGER := 16#094#;
    constant ADDR_A_17_DATA_0  : INTEGER := 16#098#;
    constant ADDR_A_17_CTRL    : INTEGER := 16#09c#;
    constant ADDR_A_18_DATA_0  : INTEGER := 16#0a0#;
    constant ADDR_A_18_CTRL    : INTEGER := 16#0a4#;
    constant ADDR_A_19_DATA_0  : INTEGER := 16#0a8#;
    constant ADDR_A_19_CTRL    : INTEGER := 16#0ac#;
    constant ADDR_A_20_DATA_0  : INTEGER := 16#0b0#;
    constant ADDR_A_20_CTRL    : INTEGER := 16#0b4#;
    constant ADDR_A_21_DATA_0  : INTEGER := 16#0b8#;
    constant ADDR_A_21_CTRL    : INTEGER := 16#0bc#;
    constant ADDR_A_22_DATA_0  : INTEGER := 16#0c0#;
    constant ADDR_A_22_CTRL    : INTEGER := 16#0c4#;
    constant ADDR_A_23_DATA_0  : INTEGER := 16#0c8#;
    constant ADDR_A_23_CTRL    : INTEGER := 16#0cc#;
    constant ADDR_A_24_DATA_0  : INTEGER := 16#0d0#;
    constant ADDR_A_24_CTRL    : INTEGER := 16#0d4#;
    constant ADDR_A_25_DATA_0  : INTEGER := 16#0d8#;
    constant ADDR_A_25_CTRL    : INTEGER := 16#0dc#;
    constant ADDR_A_26_DATA_0  : INTEGER := 16#0e0#;
    constant ADDR_A_26_CTRL    : INTEGER := 16#0e4#;
    constant ADDR_A_27_DATA_0  : INTEGER := 16#0e8#;
    constant ADDR_A_27_CTRL    : INTEGER := 16#0ec#;
    constant ADDR_A_28_DATA_0  : INTEGER := 16#0f0#;
    constant ADDR_A_28_CTRL    : INTEGER := 16#0f4#;
    constant ADDR_A_29_DATA_0  : INTEGER := 16#0f8#;
    constant ADDR_A_29_CTRL    : INTEGER := 16#0fc#;
    constant ADDR_A_30_DATA_0  : INTEGER := 16#100#;
    constant ADDR_A_30_CTRL    : INTEGER := 16#104#;
    constant ADDR_A_31_DATA_0  : INTEGER := 16#108#;
    constant ADDR_A_31_CTRL    : INTEGER := 16#10c#;
    constant ADDR_A_32_DATA_0  : INTEGER := 16#110#;
    constant ADDR_A_32_CTRL    : INTEGER := 16#114#;
    constant ADDR_A_33_DATA_0  : INTEGER := 16#118#;
    constant ADDR_A_33_CTRL    : INTEGER := 16#11c#;
    constant ADDR_A_34_DATA_0  : INTEGER := 16#120#;
    constant ADDR_A_34_CTRL    : INTEGER := 16#124#;
    constant ADDR_A_35_DATA_0  : INTEGER := 16#128#;
    constant ADDR_A_35_CTRL    : INTEGER := 16#12c#;
    constant ADDR_A_36_DATA_0  : INTEGER := 16#130#;
    constant ADDR_A_36_CTRL    : INTEGER := 16#134#;
    constant ADDR_A_37_DATA_0  : INTEGER := 16#138#;
    constant ADDR_A_37_CTRL    : INTEGER := 16#13c#;
    constant ADDR_A_38_DATA_0  : INTEGER := 16#140#;
    constant ADDR_A_38_CTRL    : INTEGER := 16#144#;
    constant ADDR_A_39_DATA_0  : INTEGER := 16#148#;
    constant ADDR_A_39_CTRL    : INTEGER := 16#14c#;
    constant ADDR_A_40_DATA_0  : INTEGER := 16#150#;
    constant ADDR_A_40_CTRL    : INTEGER := 16#154#;
    constant ADDR_A_41_DATA_0  : INTEGER := 16#158#;
    constant ADDR_A_41_CTRL    : INTEGER := 16#15c#;
    constant ADDR_A_42_DATA_0  : INTEGER := 16#160#;
    constant ADDR_A_42_CTRL    : INTEGER := 16#164#;
    constant ADDR_A_43_DATA_0  : INTEGER := 16#168#;
    constant ADDR_A_43_CTRL    : INTEGER := 16#16c#;
    constant ADDR_A_44_DATA_0  : INTEGER := 16#170#;
    constant ADDR_A_44_CTRL    : INTEGER := 16#174#;
    constant ADDR_A_45_DATA_0  : INTEGER := 16#178#;
    constant ADDR_A_45_CTRL    : INTEGER := 16#17c#;
    constant ADDR_A_46_DATA_0  : INTEGER := 16#180#;
    constant ADDR_A_46_CTRL    : INTEGER := 16#184#;
    constant ADDR_A_47_DATA_0  : INTEGER := 16#188#;
    constant ADDR_A_47_CTRL    : INTEGER := 16#18c#;
    constant ADDR_A_48_DATA_0  : INTEGER := 16#190#;
    constant ADDR_A_48_CTRL    : INTEGER := 16#194#;
    constant ADDR_A_49_DATA_0  : INTEGER := 16#198#;
    constant ADDR_A_49_CTRL    : INTEGER := 16#19c#;
    constant ADDR_A_50_DATA_0  : INTEGER := 16#1a0#;
    constant ADDR_A_50_CTRL    : INTEGER := 16#1a4#;
    constant ADDR_A_51_DATA_0  : INTEGER := 16#1a8#;
    constant ADDR_A_51_CTRL    : INTEGER := 16#1ac#;
    constant ADDR_A_52_DATA_0  : INTEGER := 16#1b0#;
    constant ADDR_A_52_CTRL    : INTEGER := 16#1b4#;
    constant ADDR_A_53_DATA_0  : INTEGER := 16#1b8#;
    constant ADDR_A_53_CTRL    : INTEGER := 16#1bc#;
    constant ADDR_A_54_DATA_0  : INTEGER := 16#1c0#;
    constant ADDR_A_54_CTRL    : INTEGER := 16#1c4#;
    constant ADDR_A_55_DATA_0  : INTEGER := 16#1c8#;
    constant ADDR_A_55_CTRL    : INTEGER := 16#1cc#;
    constant ADDR_A_56_DATA_0  : INTEGER := 16#1d0#;
    constant ADDR_A_56_CTRL    : INTEGER := 16#1d4#;
    constant ADDR_A_57_DATA_0  : INTEGER := 16#1d8#;
    constant ADDR_A_57_CTRL    : INTEGER := 16#1dc#;
    constant ADDR_A_58_DATA_0  : INTEGER := 16#1e0#;
    constant ADDR_A_58_CTRL    : INTEGER := 16#1e4#;
    constant ADDR_A_59_DATA_0  : INTEGER := 16#1e8#;
    constant ADDR_A_59_CTRL    : INTEGER := 16#1ec#;
    constant ADDR_A_60_DATA_0  : INTEGER := 16#1f0#;
    constant ADDR_A_60_CTRL    : INTEGER := 16#1f4#;
    constant ADDR_A_61_DATA_0  : INTEGER := 16#1f8#;
    constant ADDR_A_61_CTRL    : INTEGER := 16#1fc#;
    constant ADDR_A_62_DATA_0  : INTEGER := 16#200#;
    constant ADDR_A_62_CTRL    : INTEGER := 16#204#;
    constant ADDR_A_63_DATA_0  : INTEGER := 16#208#;
    constant ADDR_A_63_CTRL    : INTEGER := 16#20c#;
    constant ADDR_A_64_DATA_0  : INTEGER := 16#210#;
    constant ADDR_A_64_CTRL    : INTEGER := 16#214#;
    constant ADDR_A_65_DATA_0  : INTEGER := 16#218#;
    constant ADDR_A_65_CTRL    : INTEGER := 16#21c#;
    constant ADDR_A_66_DATA_0  : INTEGER := 16#220#;
    constant ADDR_A_66_CTRL    : INTEGER := 16#224#;
    constant ADDR_A_67_DATA_0  : INTEGER := 16#228#;
    constant ADDR_A_67_CTRL    : INTEGER := 16#22c#;
    constant ADDR_A_68_DATA_0  : INTEGER := 16#230#;
    constant ADDR_A_68_CTRL    : INTEGER := 16#234#;
    constant ADDR_A_69_DATA_0  : INTEGER := 16#238#;
    constant ADDR_A_69_CTRL    : INTEGER := 16#23c#;
    constant ADDR_A_70_DATA_0  : INTEGER := 16#240#;
    constant ADDR_A_70_CTRL    : INTEGER := 16#244#;
    constant ADDR_A_71_DATA_0  : INTEGER := 16#248#;
    constant ADDR_A_71_CTRL    : INTEGER := 16#24c#;
    constant ADDR_A_72_DATA_0  : INTEGER := 16#250#;
    constant ADDR_A_72_CTRL    : INTEGER := 16#254#;
    constant ADDR_A_73_DATA_0  : INTEGER := 16#258#;
    constant ADDR_A_73_CTRL    : INTEGER := 16#25c#;
    constant ADDR_A_74_DATA_0  : INTEGER := 16#260#;
    constant ADDR_A_74_CTRL    : INTEGER := 16#264#;
    constant ADDR_A_75_DATA_0  : INTEGER := 16#268#;
    constant ADDR_A_75_CTRL    : INTEGER := 16#26c#;
    constant ADDR_A_76_DATA_0  : INTEGER := 16#270#;
    constant ADDR_A_76_CTRL    : INTEGER := 16#274#;
    constant ADDR_A_77_DATA_0  : INTEGER := 16#278#;
    constant ADDR_A_77_CTRL    : INTEGER := 16#27c#;
    constant ADDR_A_78_DATA_0  : INTEGER := 16#280#;
    constant ADDR_A_78_CTRL    : INTEGER := 16#284#;
    constant ADDR_A_79_DATA_0  : INTEGER := 16#288#;
    constant ADDR_A_79_CTRL    : INTEGER := 16#28c#;
    constant ADDR_A_80_DATA_0  : INTEGER := 16#290#;
    constant ADDR_A_80_CTRL    : INTEGER := 16#294#;
    constant ADDR_A_81_DATA_0  : INTEGER := 16#298#;
    constant ADDR_A_81_CTRL    : INTEGER := 16#29c#;
    constant ADDR_A_82_DATA_0  : INTEGER := 16#2a0#;
    constant ADDR_A_82_CTRL    : INTEGER := 16#2a4#;
    constant ADDR_A_83_DATA_0  : INTEGER := 16#2a8#;
    constant ADDR_A_83_CTRL    : INTEGER := 16#2ac#;
    constant ADDR_A_84_DATA_0  : INTEGER := 16#2b0#;
    constant ADDR_A_84_CTRL    : INTEGER := 16#2b4#;
    constant ADDR_A_85_DATA_0  : INTEGER := 16#2b8#;
    constant ADDR_A_85_CTRL    : INTEGER := 16#2bc#;
    constant ADDR_A_86_DATA_0  : INTEGER := 16#2c0#;
    constant ADDR_A_86_CTRL    : INTEGER := 16#2c4#;
    constant ADDR_A_87_DATA_0  : INTEGER := 16#2c8#;
    constant ADDR_A_87_CTRL    : INTEGER := 16#2cc#;
    constant ADDR_A_88_DATA_0  : INTEGER := 16#2d0#;
    constant ADDR_A_88_CTRL    : INTEGER := 16#2d4#;
    constant ADDR_A_89_DATA_0  : INTEGER := 16#2d8#;
    constant ADDR_A_89_CTRL    : INTEGER := 16#2dc#;
    constant ADDR_A_90_DATA_0  : INTEGER := 16#2e0#;
    constant ADDR_A_90_CTRL    : INTEGER := 16#2e4#;
    constant ADDR_A_91_DATA_0  : INTEGER := 16#2e8#;
    constant ADDR_A_91_CTRL    : INTEGER := 16#2ec#;
    constant ADDR_A_92_DATA_0  : INTEGER := 16#2f0#;
    constant ADDR_A_92_CTRL    : INTEGER := 16#2f4#;
    constant ADDR_A_93_DATA_0  : INTEGER := 16#2f8#;
    constant ADDR_A_93_CTRL    : INTEGER := 16#2fc#;
    constant ADDR_A_94_DATA_0  : INTEGER := 16#300#;
    constant ADDR_A_94_CTRL    : INTEGER := 16#304#;
    constant ADDR_A_95_DATA_0  : INTEGER := 16#308#;
    constant ADDR_A_95_CTRL    : INTEGER := 16#30c#;
    constant ADDR_A_96_DATA_0  : INTEGER := 16#310#;
    constant ADDR_A_96_CTRL    : INTEGER := 16#314#;
    constant ADDR_A_97_DATA_0  : INTEGER := 16#318#;
    constant ADDR_A_97_CTRL    : INTEGER := 16#31c#;
    constant ADDR_A_98_DATA_0  : INTEGER := 16#320#;
    constant ADDR_A_98_CTRL    : INTEGER := 16#324#;
    constant ADDR_A_99_DATA_0  : INTEGER := 16#328#;
    constant ADDR_A_99_CTRL    : INTEGER := 16#32c#;
    constant ADDR_A_100_DATA_0 : INTEGER := 16#330#;
    constant ADDR_A_100_CTRL   : INTEGER := 16#334#;
    constant ADDR_A_101_DATA_0 : INTEGER := 16#338#;
    constant ADDR_A_101_CTRL   : INTEGER := 16#33c#;
    constant ADDR_A_102_DATA_0 : INTEGER := 16#340#;
    constant ADDR_A_102_CTRL   : INTEGER := 16#344#;
    constant ADDR_A_103_DATA_0 : INTEGER := 16#348#;
    constant ADDR_A_103_CTRL   : INTEGER := 16#34c#;
    constant ADDR_A_104_DATA_0 : INTEGER := 16#350#;
    constant ADDR_A_104_CTRL   : INTEGER := 16#354#;
    constant ADDR_A_105_DATA_0 : INTEGER := 16#358#;
    constant ADDR_A_105_CTRL   : INTEGER := 16#35c#;
    constant ADDR_A_106_DATA_0 : INTEGER := 16#360#;
    constant ADDR_A_106_CTRL   : INTEGER := 16#364#;
    constant ADDR_A_107_DATA_0 : INTEGER := 16#368#;
    constant ADDR_A_107_CTRL   : INTEGER := 16#36c#;
    constant ADDR_A_108_DATA_0 : INTEGER := 16#370#;
    constant ADDR_A_108_CTRL   : INTEGER := 16#374#;
    constant ADDR_A_109_DATA_0 : INTEGER := 16#378#;
    constant ADDR_A_109_CTRL   : INTEGER := 16#37c#;
    constant ADDR_A_110_DATA_0 : INTEGER := 16#380#;
    constant ADDR_A_110_CTRL   : INTEGER := 16#384#;
    constant ADDR_A_111_DATA_0 : INTEGER := 16#388#;
    constant ADDR_A_111_CTRL   : INTEGER := 16#38c#;
    constant ADDR_A_112_DATA_0 : INTEGER := 16#390#;
    constant ADDR_A_112_CTRL   : INTEGER := 16#394#;
    constant ADDR_A_113_DATA_0 : INTEGER := 16#398#;
    constant ADDR_A_113_CTRL   : INTEGER := 16#39c#;
    constant ADDR_A_114_DATA_0 : INTEGER := 16#3a0#;
    constant ADDR_A_114_CTRL   : INTEGER := 16#3a4#;
    constant ADDR_A_115_DATA_0 : INTEGER := 16#3a8#;
    constant ADDR_A_115_CTRL   : INTEGER := 16#3ac#;
    constant ADDR_A_116_DATA_0 : INTEGER := 16#3b0#;
    constant ADDR_A_116_CTRL   : INTEGER := 16#3b4#;
    constant ADDR_A_117_DATA_0 : INTEGER := 16#3b8#;
    constant ADDR_A_117_CTRL   : INTEGER := 16#3bc#;
    constant ADDR_A_118_DATA_0 : INTEGER := 16#3c0#;
    constant ADDR_A_118_CTRL   : INTEGER := 16#3c4#;
    constant ADDR_A_119_DATA_0 : INTEGER := 16#3c8#;
    constant ADDR_A_119_CTRL   : INTEGER := 16#3cc#;
    constant ADDR_A_120_DATA_0 : INTEGER := 16#3d0#;
    constant ADDR_A_120_CTRL   : INTEGER := 16#3d4#;
    constant ADDR_A_121_DATA_0 : INTEGER := 16#3d8#;
    constant ADDR_A_121_CTRL   : INTEGER := 16#3dc#;
    constant ADDR_A_122_DATA_0 : INTEGER := 16#3e0#;
    constant ADDR_A_122_CTRL   : INTEGER := 16#3e4#;
    constant ADDR_A_123_DATA_0 : INTEGER := 16#3e8#;
    constant ADDR_A_123_CTRL   : INTEGER := 16#3ec#;
    constant ADDR_A_124_DATA_0 : INTEGER := 16#3f0#;
    constant ADDR_A_124_CTRL   : INTEGER := 16#3f4#;
    constant ADDR_A_125_DATA_0 : INTEGER := 16#3f8#;
    constant ADDR_A_125_CTRL   : INTEGER := 16#3fc#;
    constant ADDR_A_126_DATA_0 : INTEGER := 16#400#;
    constant ADDR_A_126_CTRL   : INTEGER := 16#404#;
    constant ADDR_A_127_DATA_0 : INTEGER := 16#408#;
    constant ADDR_A_127_CTRL   : INTEGER := 16#40c#;
    constant ADDR_B_0_DATA_0   : INTEGER := 16#410#;
    constant ADDR_B_0_CTRL     : INTEGER := 16#414#;
    constant ADDR_B_1_DATA_0   : INTEGER := 16#418#;
    constant ADDR_B_1_CTRL     : INTEGER := 16#41c#;
    constant ADDR_B_2_DATA_0   : INTEGER := 16#420#;
    constant ADDR_B_2_CTRL     : INTEGER := 16#424#;
    constant ADDR_B_3_DATA_0   : INTEGER := 16#428#;
    constant ADDR_B_3_CTRL     : INTEGER := 16#42c#;
    constant ADDR_B_4_DATA_0   : INTEGER := 16#430#;
    constant ADDR_B_4_CTRL     : INTEGER := 16#434#;
    constant ADDR_B_5_DATA_0   : INTEGER := 16#438#;
    constant ADDR_B_5_CTRL     : INTEGER := 16#43c#;
    constant ADDR_B_6_DATA_0   : INTEGER := 16#440#;
    constant ADDR_B_6_CTRL     : INTEGER := 16#444#;
    constant ADDR_B_7_DATA_0   : INTEGER := 16#448#;
    constant ADDR_B_7_CTRL     : INTEGER := 16#44c#;
    constant ADDR_B_8_DATA_0   : INTEGER := 16#450#;
    constant ADDR_B_8_CTRL     : INTEGER := 16#454#;
    constant ADDR_B_9_DATA_0   : INTEGER := 16#458#;
    constant ADDR_B_9_CTRL     : INTEGER := 16#45c#;
    constant ADDR_B_10_DATA_0  : INTEGER := 16#460#;
    constant ADDR_B_10_CTRL    : INTEGER := 16#464#;
    constant ADDR_B_11_DATA_0  : INTEGER := 16#468#;
    constant ADDR_B_11_CTRL    : INTEGER := 16#46c#;
    constant ADDR_B_12_DATA_0  : INTEGER := 16#470#;
    constant ADDR_B_12_CTRL    : INTEGER := 16#474#;
    constant ADDR_B_13_DATA_0  : INTEGER := 16#478#;
    constant ADDR_B_13_CTRL    : INTEGER := 16#47c#;
    constant ADDR_B_14_DATA_0  : INTEGER := 16#480#;
    constant ADDR_B_14_CTRL    : INTEGER := 16#484#;
    constant ADDR_B_15_DATA_0  : INTEGER := 16#488#;
    constant ADDR_B_15_CTRL    : INTEGER := 16#48c#;
    constant ADDR_B_16_DATA_0  : INTEGER := 16#490#;
    constant ADDR_B_16_CTRL    : INTEGER := 16#494#;
    constant ADDR_B_17_DATA_0  : INTEGER := 16#498#;
    constant ADDR_B_17_CTRL    : INTEGER := 16#49c#;
    constant ADDR_B_18_DATA_0  : INTEGER := 16#4a0#;
    constant ADDR_B_18_CTRL    : INTEGER := 16#4a4#;
    constant ADDR_B_19_DATA_0  : INTEGER := 16#4a8#;
    constant ADDR_B_19_CTRL    : INTEGER := 16#4ac#;
    constant ADDR_B_20_DATA_0  : INTEGER := 16#4b0#;
    constant ADDR_B_20_CTRL    : INTEGER := 16#4b4#;
    constant ADDR_B_21_DATA_0  : INTEGER := 16#4b8#;
    constant ADDR_B_21_CTRL    : INTEGER := 16#4bc#;
    constant ADDR_B_22_DATA_0  : INTEGER := 16#4c0#;
    constant ADDR_B_22_CTRL    : INTEGER := 16#4c4#;
    constant ADDR_B_23_DATA_0  : INTEGER := 16#4c8#;
    constant ADDR_B_23_CTRL    : INTEGER := 16#4cc#;
    constant ADDR_B_24_DATA_0  : INTEGER := 16#4d0#;
    constant ADDR_B_24_CTRL    : INTEGER := 16#4d4#;
    constant ADDR_B_25_DATA_0  : INTEGER := 16#4d8#;
    constant ADDR_B_25_CTRL    : INTEGER := 16#4dc#;
    constant ADDR_B_26_DATA_0  : INTEGER := 16#4e0#;
    constant ADDR_B_26_CTRL    : INTEGER := 16#4e4#;
    constant ADDR_B_27_DATA_0  : INTEGER := 16#4e8#;
    constant ADDR_B_27_CTRL    : INTEGER := 16#4ec#;
    constant ADDR_B_28_DATA_0  : INTEGER := 16#4f0#;
    constant ADDR_B_28_CTRL    : INTEGER := 16#4f4#;
    constant ADDR_B_29_DATA_0  : INTEGER := 16#4f8#;
    constant ADDR_B_29_CTRL    : INTEGER := 16#4fc#;
    constant ADDR_B_30_DATA_0  : INTEGER := 16#500#;
    constant ADDR_B_30_CTRL    : INTEGER := 16#504#;
    constant ADDR_B_31_DATA_0  : INTEGER := 16#508#;
    constant ADDR_B_31_CTRL    : INTEGER := 16#50c#;
    constant ADDR_B_32_DATA_0  : INTEGER := 16#510#;
    constant ADDR_B_32_CTRL    : INTEGER := 16#514#;
    constant ADDR_B_33_DATA_0  : INTEGER := 16#518#;
    constant ADDR_B_33_CTRL    : INTEGER := 16#51c#;
    constant ADDR_B_34_DATA_0  : INTEGER := 16#520#;
    constant ADDR_B_34_CTRL    : INTEGER := 16#524#;
    constant ADDR_B_35_DATA_0  : INTEGER := 16#528#;
    constant ADDR_B_35_CTRL    : INTEGER := 16#52c#;
    constant ADDR_B_36_DATA_0  : INTEGER := 16#530#;
    constant ADDR_B_36_CTRL    : INTEGER := 16#534#;
    constant ADDR_B_37_DATA_0  : INTEGER := 16#538#;
    constant ADDR_B_37_CTRL    : INTEGER := 16#53c#;
    constant ADDR_B_38_DATA_0  : INTEGER := 16#540#;
    constant ADDR_B_38_CTRL    : INTEGER := 16#544#;
    constant ADDR_B_39_DATA_0  : INTEGER := 16#548#;
    constant ADDR_B_39_CTRL    : INTEGER := 16#54c#;
    constant ADDR_B_40_DATA_0  : INTEGER := 16#550#;
    constant ADDR_B_40_CTRL    : INTEGER := 16#554#;
    constant ADDR_B_41_DATA_0  : INTEGER := 16#558#;
    constant ADDR_B_41_CTRL    : INTEGER := 16#55c#;
    constant ADDR_B_42_DATA_0  : INTEGER := 16#560#;
    constant ADDR_B_42_CTRL    : INTEGER := 16#564#;
    constant ADDR_B_43_DATA_0  : INTEGER := 16#568#;
    constant ADDR_B_43_CTRL    : INTEGER := 16#56c#;
    constant ADDR_B_44_DATA_0  : INTEGER := 16#570#;
    constant ADDR_B_44_CTRL    : INTEGER := 16#574#;
    constant ADDR_B_45_DATA_0  : INTEGER := 16#578#;
    constant ADDR_B_45_CTRL    : INTEGER := 16#57c#;
    constant ADDR_B_46_DATA_0  : INTEGER := 16#580#;
    constant ADDR_B_46_CTRL    : INTEGER := 16#584#;
    constant ADDR_B_47_DATA_0  : INTEGER := 16#588#;
    constant ADDR_B_47_CTRL    : INTEGER := 16#58c#;
    constant ADDR_B_48_DATA_0  : INTEGER := 16#590#;
    constant ADDR_B_48_CTRL    : INTEGER := 16#594#;
    constant ADDR_B_49_DATA_0  : INTEGER := 16#598#;
    constant ADDR_B_49_CTRL    : INTEGER := 16#59c#;
    constant ADDR_B_50_DATA_0  : INTEGER := 16#5a0#;
    constant ADDR_B_50_CTRL    : INTEGER := 16#5a4#;
    constant ADDR_B_51_DATA_0  : INTEGER := 16#5a8#;
    constant ADDR_B_51_CTRL    : INTEGER := 16#5ac#;
    constant ADDR_B_52_DATA_0  : INTEGER := 16#5b0#;
    constant ADDR_B_52_CTRL    : INTEGER := 16#5b4#;
    constant ADDR_B_53_DATA_0  : INTEGER := 16#5b8#;
    constant ADDR_B_53_CTRL    : INTEGER := 16#5bc#;
    constant ADDR_B_54_DATA_0  : INTEGER := 16#5c0#;
    constant ADDR_B_54_CTRL    : INTEGER := 16#5c4#;
    constant ADDR_B_55_DATA_0  : INTEGER := 16#5c8#;
    constant ADDR_B_55_CTRL    : INTEGER := 16#5cc#;
    constant ADDR_B_56_DATA_0  : INTEGER := 16#5d0#;
    constant ADDR_B_56_CTRL    : INTEGER := 16#5d4#;
    constant ADDR_B_57_DATA_0  : INTEGER := 16#5d8#;
    constant ADDR_B_57_CTRL    : INTEGER := 16#5dc#;
    constant ADDR_B_58_DATA_0  : INTEGER := 16#5e0#;
    constant ADDR_B_58_CTRL    : INTEGER := 16#5e4#;
    constant ADDR_B_59_DATA_0  : INTEGER := 16#5e8#;
    constant ADDR_B_59_CTRL    : INTEGER := 16#5ec#;
    constant ADDR_B_60_DATA_0  : INTEGER := 16#5f0#;
    constant ADDR_B_60_CTRL    : INTEGER := 16#5f4#;
    constant ADDR_B_61_DATA_0  : INTEGER := 16#5f8#;
    constant ADDR_B_61_CTRL    : INTEGER := 16#5fc#;
    constant ADDR_B_62_DATA_0  : INTEGER := 16#600#;
    constant ADDR_B_62_CTRL    : INTEGER := 16#604#;
    constant ADDR_B_63_DATA_0  : INTEGER := 16#608#;
    constant ADDR_B_63_CTRL    : INTEGER := 16#60c#;
    constant ADDR_B_64_DATA_0  : INTEGER := 16#610#;
    constant ADDR_B_64_CTRL    : INTEGER := 16#614#;
    constant ADDR_B_65_DATA_0  : INTEGER := 16#618#;
    constant ADDR_B_65_CTRL    : INTEGER := 16#61c#;
    constant ADDR_B_66_DATA_0  : INTEGER := 16#620#;
    constant ADDR_B_66_CTRL    : INTEGER := 16#624#;
    constant ADDR_B_67_DATA_0  : INTEGER := 16#628#;
    constant ADDR_B_67_CTRL    : INTEGER := 16#62c#;
    constant ADDR_B_68_DATA_0  : INTEGER := 16#630#;
    constant ADDR_B_68_CTRL    : INTEGER := 16#634#;
    constant ADDR_B_69_DATA_0  : INTEGER := 16#638#;
    constant ADDR_B_69_CTRL    : INTEGER := 16#63c#;
    constant ADDR_B_70_DATA_0  : INTEGER := 16#640#;
    constant ADDR_B_70_CTRL    : INTEGER := 16#644#;
    constant ADDR_B_71_DATA_0  : INTEGER := 16#648#;
    constant ADDR_B_71_CTRL    : INTEGER := 16#64c#;
    constant ADDR_B_72_DATA_0  : INTEGER := 16#650#;
    constant ADDR_B_72_CTRL    : INTEGER := 16#654#;
    constant ADDR_B_73_DATA_0  : INTEGER := 16#658#;
    constant ADDR_B_73_CTRL    : INTEGER := 16#65c#;
    constant ADDR_B_74_DATA_0  : INTEGER := 16#660#;
    constant ADDR_B_74_CTRL    : INTEGER := 16#664#;
    constant ADDR_B_75_DATA_0  : INTEGER := 16#668#;
    constant ADDR_B_75_CTRL    : INTEGER := 16#66c#;
    constant ADDR_B_76_DATA_0  : INTEGER := 16#670#;
    constant ADDR_B_76_CTRL    : INTEGER := 16#674#;
    constant ADDR_B_77_DATA_0  : INTEGER := 16#678#;
    constant ADDR_B_77_CTRL    : INTEGER := 16#67c#;
    constant ADDR_B_78_DATA_0  : INTEGER := 16#680#;
    constant ADDR_B_78_CTRL    : INTEGER := 16#684#;
    constant ADDR_B_79_DATA_0  : INTEGER := 16#688#;
    constant ADDR_B_79_CTRL    : INTEGER := 16#68c#;
    constant ADDR_B_80_DATA_0  : INTEGER := 16#690#;
    constant ADDR_B_80_CTRL    : INTEGER := 16#694#;
    constant ADDR_B_81_DATA_0  : INTEGER := 16#698#;
    constant ADDR_B_81_CTRL    : INTEGER := 16#69c#;
    constant ADDR_B_82_DATA_0  : INTEGER := 16#6a0#;
    constant ADDR_B_82_CTRL    : INTEGER := 16#6a4#;
    constant ADDR_B_83_DATA_0  : INTEGER := 16#6a8#;
    constant ADDR_B_83_CTRL    : INTEGER := 16#6ac#;
    constant ADDR_B_84_DATA_0  : INTEGER := 16#6b0#;
    constant ADDR_B_84_CTRL    : INTEGER := 16#6b4#;
    constant ADDR_B_85_DATA_0  : INTEGER := 16#6b8#;
    constant ADDR_B_85_CTRL    : INTEGER := 16#6bc#;
    constant ADDR_B_86_DATA_0  : INTEGER := 16#6c0#;
    constant ADDR_B_86_CTRL    : INTEGER := 16#6c4#;
    constant ADDR_B_87_DATA_0  : INTEGER := 16#6c8#;
    constant ADDR_B_87_CTRL    : INTEGER := 16#6cc#;
    constant ADDR_B_88_DATA_0  : INTEGER := 16#6d0#;
    constant ADDR_B_88_CTRL    : INTEGER := 16#6d4#;
    constant ADDR_B_89_DATA_0  : INTEGER := 16#6d8#;
    constant ADDR_B_89_CTRL    : INTEGER := 16#6dc#;
    constant ADDR_B_90_DATA_0  : INTEGER := 16#6e0#;
    constant ADDR_B_90_CTRL    : INTEGER := 16#6e4#;
    constant ADDR_B_91_DATA_0  : INTEGER := 16#6e8#;
    constant ADDR_B_91_CTRL    : INTEGER := 16#6ec#;
    constant ADDR_B_92_DATA_0  : INTEGER := 16#6f0#;
    constant ADDR_B_92_CTRL    : INTEGER := 16#6f4#;
    constant ADDR_B_93_DATA_0  : INTEGER := 16#6f8#;
    constant ADDR_B_93_CTRL    : INTEGER := 16#6fc#;
    constant ADDR_B_94_DATA_0  : INTEGER := 16#700#;
    constant ADDR_B_94_CTRL    : INTEGER := 16#704#;
    constant ADDR_B_95_DATA_0  : INTEGER := 16#708#;
    constant ADDR_B_95_CTRL    : INTEGER := 16#70c#;
    constant ADDR_B_96_DATA_0  : INTEGER := 16#710#;
    constant ADDR_B_96_CTRL    : INTEGER := 16#714#;
    constant ADDR_B_97_DATA_0  : INTEGER := 16#718#;
    constant ADDR_B_97_CTRL    : INTEGER := 16#71c#;
    constant ADDR_B_98_DATA_0  : INTEGER := 16#720#;
    constant ADDR_B_98_CTRL    : INTEGER := 16#724#;
    constant ADDR_B_99_DATA_0  : INTEGER := 16#728#;
    constant ADDR_B_99_CTRL    : INTEGER := 16#72c#;
    constant ADDR_B_100_DATA_0 : INTEGER := 16#730#;
    constant ADDR_B_100_CTRL   : INTEGER := 16#734#;
    constant ADDR_B_101_DATA_0 : INTEGER := 16#738#;
    constant ADDR_B_101_CTRL   : INTEGER := 16#73c#;
    constant ADDR_B_102_DATA_0 : INTEGER := 16#740#;
    constant ADDR_B_102_CTRL   : INTEGER := 16#744#;
    constant ADDR_B_103_DATA_0 : INTEGER := 16#748#;
    constant ADDR_B_103_CTRL   : INTEGER := 16#74c#;
    constant ADDR_B_104_DATA_0 : INTEGER := 16#750#;
    constant ADDR_B_104_CTRL   : INTEGER := 16#754#;
    constant ADDR_B_105_DATA_0 : INTEGER := 16#758#;
    constant ADDR_B_105_CTRL   : INTEGER := 16#75c#;
    constant ADDR_B_106_DATA_0 : INTEGER := 16#760#;
    constant ADDR_B_106_CTRL   : INTEGER := 16#764#;
    constant ADDR_B_107_DATA_0 : INTEGER := 16#768#;
    constant ADDR_B_107_CTRL   : INTEGER := 16#76c#;
    constant ADDR_B_108_DATA_0 : INTEGER := 16#770#;
    constant ADDR_B_108_CTRL   : INTEGER := 16#774#;
    constant ADDR_B_109_DATA_0 : INTEGER := 16#778#;
    constant ADDR_B_109_CTRL   : INTEGER := 16#77c#;
    constant ADDR_B_110_DATA_0 : INTEGER := 16#780#;
    constant ADDR_B_110_CTRL   : INTEGER := 16#784#;
    constant ADDR_B_111_DATA_0 : INTEGER := 16#788#;
    constant ADDR_B_111_CTRL   : INTEGER := 16#78c#;
    constant ADDR_B_112_DATA_0 : INTEGER := 16#790#;
    constant ADDR_B_112_CTRL   : INTEGER := 16#794#;
    constant ADDR_B_113_DATA_0 : INTEGER := 16#798#;
    constant ADDR_B_113_CTRL   : INTEGER := 16#79c#;
    constant ADDR_B_114_DATA_0 : INTEGER := 16#7a0#;
    constant ADDR_B_114_CTRL   : INTEGER := 16#7a4#;
    constant ADDR_B_115_DATA_0 : INTEGER := 16#7a8#;
    constant ADDR_B_115_CTRL   : INTEGER := 16#7ac#;
    constant ADDR_B_116_DATA_0 : INTEGER := 16#7b0#;
    constant ADDR_B_116_CTRL   : INTEGER := 16#7b4#;
    constant ADDR_B_117_DATA_0 : INTEGER := 16#7b8#;
    constant ADDR_B_117_CTRL   : INTEGER := 16#7bc#;
    constant ADDR_B_118_DATA_0 : INTEGER := 16#7c0#;
    constant ADDR_B_118_CTRL   : INTEGER := 16#7c4#;
    constant ADDR_B_119_DATA_0 : INTEGER := 16#7c8#;
    constant ADDR_B_119_CTRL   : INTEGER := 16#7cc#;
    constant ADDR_B_120_DATA_0 : INTEGER := 16#7d0#;
    constant ADDR_B_120_CTRL   : INTEGER := 16#7d4#;
    constant ADDR_B_121_DATA_0 : INTEGER := 16#7d8#;
    constant ADDR_B_121_CTRL   : INTEGER := 16#7dc#;
    constant ADDR_B_122_DATA_0 : INTEGER := 16#7e0#;
    constant ADDR_B_122_CTRL   : INTEGER := 16#7e4#;
    constant ADDR_B_123_DATA_0 : INTEGER := 16#7e8#;
    constant ADDR_B_123_CTRL   : INTEGER := 16#7ec#;
    constant ADDR_B_124_DATA_0 : INTEGER := 16#7f0#;
    constant ADDR_B_124_CTRL   : INTEGER := 16#7f4#;
    constant ADDR_B_125_DATA_0 : INTEGER := 16#7f8#;
    constant ADDR_B_125_CTRL   : INTEGER := 16#7fc#;
    constant ADDR_B_126_DATA_0 : INTEGER := 16#800#;
    constant ADDR_B_126_CTRL   : INTEGER := 16#804#;
    constant ADDR_B_127_DATA_0 : INTEGER := 16#808#;
    constant ADDR_B_127_CTRL   : INTEGER := 16#80c#;
    constant ADDR_BITS         : INTEGER := 12;

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
    signal int_A_0             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_1             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_2             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_3             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_4             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_5             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_6             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_7             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_8             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_9             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_10            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_11            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_12            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_13            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_14            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_15            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_16            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_17            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_18            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_19            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_20            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_21            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_22            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_23            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_24            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_25            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_26            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_27            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_28            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_29            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_30            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_31            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_32            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_33            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_34            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_35            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_36            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_37            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_38            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_39            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_40            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_41            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_42            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_43            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_44            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_45            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_46            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_47            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_48            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_49            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_50            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_51            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_52            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_53            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_54            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_55            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_56            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_57            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_58            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_59            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_60            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_61            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_62            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_63            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_64            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_65            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_66            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_67            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_68            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_69            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_70            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_71            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_72            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_73            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_74            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_75            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_76            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_77            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_78            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_79            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_80            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_81            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_82            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_83            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_84            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_85            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_86            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_87            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_88            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_89            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_90            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_91            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_92            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_93            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_94            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_95            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_96            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_97            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_98            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_99            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_100           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_101           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_102           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_103           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_104           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_105           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_106           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_107           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_108           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_109           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_110           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_111           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_112           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_113           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_114           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_115           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_116           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_117           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_118           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_119           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_120           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_121           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_122           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_123           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_124           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_125           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_126           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_A_127           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_0             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_1             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_2             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_3             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_4             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_5             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_6             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_7             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_8             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_9             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_10            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_11            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_12            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_13            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_14            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_15            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_16            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_17            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_18            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_19            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_20            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_21            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_22            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_23            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_24            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_25            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_26            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_27            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_28            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_29            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_30            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_31            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_32            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_33            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_34            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_35            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_36            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_37            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_38            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_39            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_40            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_41            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_42            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_43            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_44            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_45            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_46            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_47            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_48            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_49            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_50            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_51            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_52            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_53            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_54            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_55            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_56            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_57            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_58            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_59            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_60            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_61            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_62            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_63            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_64            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_65            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_66            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_67            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_68            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_69            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_70            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_71            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_72            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_73            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_74            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_75            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_76            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_77            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_78            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_79            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_80            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_81            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_82            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_83            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_84            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_85            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_86            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_87            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_88            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_89            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_90            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_91            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_92            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_93            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_94            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_95            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_96            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_97            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_98            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_99            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_100           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_101           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_102           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_103           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_104           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_105           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_106           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_107           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_108           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_109           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_110           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_111           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_112           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_113           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_114           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_115           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_116           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_117           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_118           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_119           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_120           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_121           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_122           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_123           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_124           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_125           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_126           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_127           : UNSIGNED(31 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
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

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
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
    RVALID_t  <= '1' when (rstate = rddata) else '0';
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
                    when ADDR_A_0_DATA_0 =>
                        rdata_data <= RESIZE(int_A_0(31 downto 0), 32);
                    when ADDR_A_1_DATA_0 =>
                        rdata_data <= RESIZE(int_A_1(31 downto 0), 32);
                    when ADDR_A_2_DATA_0 =>
                        rdata_data <= RESIZE(int_A_2(31 downto 0), 32);
                    when ADDR_A_3_DATA_0 =>
                        rdata_data <= RESIZE(int_A_3(31 downto 0), 32);
                    when ADDR_A_4_DATA_0 =>
                        rdata_data <= RESIZE(int_A_4(31 downto 0), 32);
                    when ADDR_A_5_DATA_0 =>
                        rdata_data <= RESIZE(int_A_5(31 downto 0), 32);
                    when ADDR_A_6_DATA_0 =>
                        rdata_data <= RESIZE(int_A_6(31 downto 0), 32);
                    when ADDR_A_7_DATA_0 =>
                        rdata_data <= RESIZE(int_A_7(31 downto 0), 32);
                    when ADDR_A_8_DATA_0 =>
                        rdata_data <= RESIZE(int_A_8(31 downto 0), 32);
                    when ADDR_A_9_DATA_0 =>
                        rdata_data <= RESIZE(int_A_9(31 downto 0), 32);
                    when ADDR_A_10_DATA_0 =>
                        rdata_data <= RESIZE(int_A_10(31 downto 0), 32);
                    when ADDR_A_11_DATA_0 =>
                        rdata_data <= RESIZE(int_A_11(31 downto 0), 32);
                    when ADDR_A_12_DATA_0 =>
                        rdata_data <= RESIZE(int_A_12(31 downto 0), 32);
                    when ADDR_A_13_DATA_0 =>
                        rdata_data <= RESIZE(int_A_13(31 downto 0), 32);
                    when ADDR_A_14_DATA_0 =>
                        rdata_data <= RESIZE(int_A_14(31 downto 0), 32);
                    when ADDR_A_15_DATA_0 =>
                        rdata_data <= RESIZE(int_A_15(31 downto 0), 32);
                    when ADDR_A_16_DATA_0 =>
                        rdata_data <= RESIZE(int_A_16(31 downto 0), 32);
                    when ADDR_A_17_DATA_0 =>
                        rdata_data <= RESIZE(int_A_17(31 downto 0), 32);
                    when ADDR_A_18_DATA_0 =>
                        rdata_data <= RESIZE(int_A_18(31 downto 0), 32);
                    when ADDR_A_19_DATA_0 =>
                        rdata_data <= RESIZE(int_A_19(31 downto 0), 32);
                    when ADDR_A_20_DATA_0 =>
                        rdata_data <= RESIZE(int_A_20(31 downto 0), 32);
                    when ADDR_A_21_DATA_0 =>
                        rdata_data <= RESIZE(int_A_21(31 downto 0), 32);
                    when ADDR_A_22_DATA_0 =>
                        rdata_data <= RESIZE(int_A_22(31 downto 0), 32);
                    when ADDR_A_23_DATA_0 =>
                        rdata_data <= RESIZE(int_A_23(31 downto 0), 32);
                    when ADDR_A_24_DATA_0 =>
                        rdata_data <= RESIZE(int_A_24(31 downto 0), 32);
                    when ADDR_A_25_DATA_0 =>
                        rdata_data <= RESIZE(int_A_25(31 downto 0), 32);
                    when ADDR_A_26_DATA_0 =>
                        rdata_data <= RESIZE(int_A_26(31 downto 0), 32);
                    when ADDR_A_27_DATA_0 =>
                        rdata_data <= RESIZE(int_A_27(31 downto 0), 32);
                    when ADDR_A_28_DATA_0 =>
                        rdata_data <= RESIZE(int_A_28(31 downto 0), 32);
                    when ADDR_A_29_DATA_0 =>
                        rdata_data <= RESIZE(int_A_29(31 downto 0), 32);
                    when ADDR_A_30_DATA_0 =>
                        rdata_data <= RESIZE(int_A_30(31 downto 0), 32);
                    when ADDR_A_31_DATA_0 =>
                        rdata_data <= RESIZE(int_A_31(31 downto 0), 32);
                    when ADDR_A_32_DATA_0 =>
                        rdata_data <= RESIZE(int_A_32(31 downto 0), 32);
                    when ADDR_A_33_DATA_0 =>
                        rdata_data <= RESIZE(int_A_33(31 downto 0), 32);
                    when ADDR_A_34_DATA_0 =>
                        rdata_data <= RESIZE(int_A_34(31 downto 0), 32);
                    when ADDR_A_35_DATA_0 =>
                        rdata_data <= RESIZE(int_A_35(31 downto 0), 32);
                    when ADDR_A_36_DATA_0 =>
                        rdata_data <= RESIZE(int_A_36(31 downto 0), 32);
                    when ADDR_A_37_DATA_0 =>
                        rdata_data <= RESIZE(int_A_37(31 downto 0), 32);
                    when ADDR_A_38_DATA_0 =>
                        rdata_data <= RESIZE(int_A_38(31 downto 0), 32);
                    when ADDR_A_39_DATA_0 =>
                        rdata_data <= RESIZE(int_A_39(31 downto 0), 32);
                    when ADDR_A_40_DATA_0 =>
                        rdata_data <= RESIZE(int_A_40(31 downto 0), 32);
                    when ADDR_A_41_DATA_0 =>
                        rdata_data <= RESIZE(int_A_41(31 downto 0), 32);
                    when ADDR_A_42_DATA_0 =>
                        rdata_data <= RESIZE(int_A_42(31 downto 0), 32);
                    when ADDR_A_43_DATA_0 =>
                        rdata_data <= RESIZE(int_A_43(31 downto 0), 32);
                    when ADDR_A_44_DATA_0 =>
                        rdata_data <= RESIZE(int_A_44(31 downto 0), 32);
                    when ADDR_A_45_DATA_0 =>
                        rdata_data <= RESIZE(int_A_45(31 downto 0), 32);
                    when ADDR_A_46_DATA_0 =>
                        rdata_data <= RESIZE(int_A_46(31 downto 0), 32);
                    when ADDR_A_47_DATA_0 =>
                        rdata_data <= RESIZE(int_A_47(31 downto 0), 32);
                    when ADDR_A_48_DATA_0 =>
                        rdata_data <= RESIZE(int_A_48(31 downto 0), 32);
                    when ADDR_A_49_DATA_0 =>
                        rdata_data <= RESIZE(int_A_49(31 downto 0), 32);
                    when ADDR_A_50_DATA_0 =>
                        rdata_data <= RESIZE(int_A_50(31 downto 0), 32);
                    when ADDR_A_51_DATA_0 =>
                        rdata_data <= RESIZE(int_A_51(31 downto 0), 32);
                    when ADDR_A_52_DATA_0 =>
                        rdata_data <= RESIZE(int_A_52(31 downto 0), 32);
                    when ADDR_A_53_DATA_0 =>
                        rdata_data <= RESIZE(int_A_53(31 downto 0), 32);
                    when ADDR_A_54_DATA_0 =>
                        rdata_data <= RESIZE(int_A_54(31 downto 0), 32);
                    when ADDR_A_55_DATA_0 =>
                        rdata_data <= RESIZE(int_A_55(31 downto 0), 32);
                    when ADDR_A_56_DATA_0 =>
                        rdata_data <= RESIZE(int_A_56(31 downto 0), 32);
                    when ADDR_A_57_DATA_0 =>
                        rdata_data <= RESIZE(int_A_57(31 downto 0), 32);
                    when ADDR_A_58_DATA_0 =>
                        rdata_data <= RESIZE(int_A_58(31 downto 0), 32);
                    when ADDR_A_59_DATA_0 =>
                        rdata_data <= RESIZE(int_A_59(31 downto 0), 32);
                    when ADDR_A_60_DATA_0 =>
                        rdata_data <= RESIZE(int_A_60(31 downto 0), 32);
                    when ADDR_A_61_DATA_0 =>
                        rdata_data <= RESIZE(int_A_61(31 downto 0), 32);
                    when ADDR_A_62_DATA_0 =>
                        rdata_data <= RESIZE(int_A_62(31 downto 0), 32);
                    when ADDR_A_63_DATA_0 =>
                        rdata_data <= RESIZE(int_A_63(31 downto 0), 32);
                    when ADDR_A_64_DATA_0 =>
                        rdata_data <= RESIZE(int_A_64(31 downto 0), 32);
                    when ADDR_A_65_DATA_0 =>
                        rdata_data <= RESIZE(int_A_65(31 downto 0), 32);
                    when ADDR_A_66_DATA_0 =>
                        rdata_data <= RESIZE(int_A_66(31 downto 0), 32);
                    when ADDR_A_67_DATA_0 =>
                        rdata_data <= RESIZE(int_A_67(31 downto 0), 32);
                    when ADDR_A_68_DATA_0 =>
                        rdata_data <= RESIZE(int_A_68(31 downto 0), 32);
                    when ADDR_A_69_DATA_0 =>
                        rdata_data <= RESIZE(int_A_69(31 downto 0), 32);
                    when ADDR_A_70_DATA_0 =>
                        rdata_data <= RESIZE(int_A_70(31 downto 0), 32);
                    when ADDR_A_71_DATA_0 =>
                        rdata_data <= RESIZE(int_A_71(31 downto 0), 32);
                    when ADDR_A_72_DATA_0 =>
                        rdata_data <= RESIZE(int_A_72(31 downto 0), 32);
                    when ADDR_A_73_DATA_0 =>
                        rdata_data <= RESIZE(int_A_73(31 downto 0), 32);
                    when ADDR_A_74_DATA_0 =>
                        rdata_data <= RESIZE(int_A_74(31 downto 0), 32);
                    when ADDR_A_75_DATA_0 =>
                        rdata_data <= RESIZE(int_A_75(31 downto 0), 32);
                    when ADDR_A_76_DATA_0 =>
                        rdata_data <= RESIZE(int_A_76(31 downto 0), 32);
                    when ADDR_A_77_DATA_0 =>
                        rdata_data <= RESIZE(int_A_77(31 downto 0), 32);
                    when ADDR_A_78_DATA_0 =>
                        rdata_data <= RESIZE(int_A_78(31 downto 0), 32);
                    when ADDR_A_79_DATA_0 =>
                        rdata_data <= RESIZE(int_A_79(31 downto 0), 32);
                    when ADDR_A_80_DATA_0 =>
                        rdata_data <= RESIZE(int_A_80(31 downto 0), 32);
                    when ADDR_A_81_DATA_0 =>
                        rdata_data <= RESIZE(int_A_81(31 downto 0), 32);
                    when ADDR_A_82_DATA_0 =>
                        rdata_data <= RESIZE(int_A_82(31 downto 0), 32);
                    when ADDR_A_83_DATA_0 =>
                        rdata_data <= RESIZE(int_A_83(31 downto 0), 32);
                    when ADDR_A_84_DATA_0 =>
                        rdata_data <= RESIZE(int_A_84(31 downto 0), 32);
                    when ADDR_A_85_DATA_0 =>
                        rdata_data <= RESIZE(int_A_85(31 downto 0), 32);
                    when ADDR_A_86_DATA_0 =>
                        rdata_data <= RESIZE(int_A_86(31 downto 0), 32);
                    when ADDR_A_87_DATA_0 =>
                        rdata_data <= RESIZE(int_A_87(31 downto 0), 32);
                    when ADDR_A_88_DATA_0 =>
                        rdata_data <= RESIZE(int_A_88(31 downto 0), 32);
                    when ADDR_A_89_DATA_0 =>
                        rdata_data <= RESIZE(int_A_89(31 downto 0), 32);
                    when ADDR_A_90_DATA_0 =>
                        rdata_data <= RESIZE(int_A_90(31 downto 0), 32);
                    when ADDR_A_91_DATA_0 =>
                        rdata_data <= RESIZE(int_A_91(31 downto 0), 32);
                    when ADDR_A_92_DATA_0 =>
                        rdata_data <= RESIZE(int_A_92(31 downto 0), 32);
                    when ADDR_A_93_DATA_0 =>
                        rdata_data <= RESIZE(int_A_93(31 downto 0), 32);
                    when ADDR_A_94_DATA_0 =>
                        rdata_data <= RESIZE(int_A_94(31 downto 0), 32);
                    when ADDR_A_95_DATA_0 =>
                        rdata_data <= RESIZE(int_A_95(31 downto 0), 32);
                    when ADDR_A_96_DATA_0 =>
                        rdata_data <= RESIZE(int_A_96(31 downto 0), 32);
                    when ADDR_A_97_DATA_0 =>
                        rdata_data <= RESIZE(int_A_97(31 downto 0), 32);
                    when ADDR_A_98_DATA_0 =>
                        rdata_data <= RESIZE(int_A_98(31 downto 0), 32);
                    when ADDR_A_99_DATA_0 =>
                        rdata_data <= RESIZE(int_A_99(31 downto 0), 32);
                    when ADDR_A_100_DATA_0 =>
                        rdata_data <= RESIZE(int_A_100(31 downto 0), 32);
                    when ADDR_A_101_DATA_0 =>
                        rdata_data <= RESIZE(int_A_101(31 downto 0), 32);
                    when ADDR_A_102_DATA_0 =>
                        rdata_data <= RESIZE(int_A_102(31 downto 0), 32);
                    when ADDR_A_103_DATA_0 =>
                        rdata_data <= RESIZE(int_A_103(31 downto 0), 32);
                    when ADDR_A_104_DATA_0 =>
                        rdata_data <= RESIZE(int_A_104(31 downto 0), 32);
                    when ADDR_A_105_DATA_0 =>
                        rdata_data <= RESIZE(int_A_105(31 downto 0), 32);
                    when ADDR_A_106_DATA_0 =>
                        rdata_data <= RESIZE(int_A_106(31 downto 0), 32);
                    when ADDR_A_107_DATA_0 =>
                        rdata_data <= RESIZE(int_A_107(31 downto 0), 32);
                    when ADDR_A_108_DATA_0 =>
                        rdata_data <= RESIZE(int_A_108(31 downto 0), 32);
                    when ADDR_A_109_DATA_0 =>
                        rdata_data <= RESIZE(int_A_109(31 downto 0), 32);
                    when ADDR_A_110_DATA_0 =>
                        rdata_data <= RESIZE(int_A_110(31 downto 0), 32);
                    when ADDR_A_111_DATA_0 =>
                        rdata_data <= RESIZE(int_A_111(31 downto 0), 32);
                    when ADDR_A_112_DATA_0 =>
                        rdata_data <= RESIZE(int_A_112(31 downto 0), 32);
                    when ADDR_A_113_DATA_0 =>
                        rdata_data <= RESIZE(int_A_113(31 downto 0), 32);
                    when ADDR_A_114_DATA_0 =>
                        rdata_data <= RESIZE(int_A_114(31 downto 0), 32);
                    when ADDR_A_115_DATA_0 =>
                        rdata_data <= RESIZE(int_A_115(31 downto 0), 32);
                    when ADDR_A_116_DATA_0 =>
                        rdata_data <= RESIZE(int_A_116(31 downto 0), 32);
                    when ADDR_A_117_DATA_0 =>
                        rdata_data <= RESIZE(int_A_117(31 downto 0), 32);
                    when ADDR_A_118_DATA_0 =>
                        rdata_data <= RESIZE(int_A_118(31 downto 0), 32);
                    when ADDR_A_119_DATA_0 =>
                        rdata_data <= RESIZE(int_A_119(31 downto 0), 32);
                    when ADDR_A_120_DATA_0 =>
                        rdata_data <= RESIZE(int_A_120(31 downto 0), 32);
                    when ADDR_A_121_DATA_0 =>
                        rdata_data <= RESIZE(int_A_121(31 downto 0), 32);
                    when ADDR_A_122_DATA_0 =>
                        rdata_data <= RESIZE(int_A_122(31 downto 0), 32);
                    when ADDR_A_123_DATA_0 =>
                        rdata_data <= RESIZE(int_A_123(31 downto 0), 32);
                    when ADDR_A_124_DATA_0 =>
                        rdata_data <= RESIZE(int_A_124(31 downto 0), 32);
                    when ADDR_A_125_DATA_0 =>
                        rdata_data <= RESIZE(int_A_125(31 downto 0), 32);
                    when ADDR_A_126_DATA_0 =>
                        rdata_data <= RESIZE(int_A_126(31 downto 0), 32);
                    when ADDR_A_127_DATA_0 =>
                        rdata_data <= RESIZE(int_A_127(31 downto 0), 32);
                    when ADDR_B_0_DATA_0 =>
                        rdata_data <= RESIZE(int_B_0(31 downto 0), 32);
                    when ADDR_B_1_DATA_0 =>
                        rdata_data <= RESIZE(int_B_1(31 downto 0), 32);
                    when ADDR_B_2_DATA_0 =>
                        rdata_data <= RESIZE(int_B_2(31 downto 0), 32);
                    when ADDR_B_3_DATA_0 =>
                        rdata_data <= RESIZE(int_B_3(31 downto 0), 32);
                    when ADDR_B_4_DATA_0 =>
                        rdata_data <= RESIZE(int_B_4(31 downto 0), 32);
                    when ADDR_B_5_DATA_0 =>
                        rdata_data <= RESIZE(int_B_5(31 downto 0), 32);
                    when ADDR_B_6_DATA_0 =>
                        rdata_data <= RESIZE(int_B_6(31 downto 0), 32);
                    when ADDR_B_7_DATA_0 =>
                        rdata_data <= RESIZE(int_B_7(31 downto 0), 32);
                    when ADDR_B_8_DATA_0 =>
                        rdata_data <= RESIZE(int_B_8(31 downto 0), 32);
                    when ADDR_B_9_DATA_0 =>
                        rdata_data <= RESIZE(int_B_9(31 downto 0), 32);
                    when ADDR_B_10_DATA_0 =>
                        rdata_data <= RESIZE(int_B_10(31 downto 0), 32);
                    when ADDR_B_11_DATA_0 =>
                        rdata_data <= RESIZE(int_B_11(31 downto 0), 32);
                    when ADDR_B_12_DATA_0 =>
                        rdata_data <= RESIZE(int_B_12(31 downto 0), 32);
                    when ADDR_B_13_DATA_0 =>
                        rdata_data <= RESIZE(int_B_13(31 downto 0), 32);
                    when ADDR_B_14_DATA_0 =>
                        rdata_data <= RESIZE(int_B_14(31 downto 0), 32);
                    when ADDR_B_15_DATA_0 =>
                        rdata_data <= RESIZE(int_B_15(31 downto 0), 32);
                    when ADDR_B_16_DATA_0 =>
                        rdata_data <= RESIZE(int_B_16(31 downto 0), 32);
                    when ADDR_B_17_DATA_0 =>
                        rdata_data <= RESIZE(int_B_17(31 downto 0), 32);
                    when ADDR_B_18_DATA_0 =>
                        rdata_data <= RESIZE(int_B_18(31 downto 0), 32);
                    when ADDR_B_19_DATA_0 =>
                        rdata_data <= RESIZE(int_B_19(31 downto 0), 32);
                    when ADDR_B_20_DATA_0 =>
                        rdata_data <= RESIZE(int_B_20(31 downto 0), 32);
                    when ADDR_B_21_DATA_0 =>
                        rdata_data <= RESIZE(int_B_21(31 downto 0), 32);
                    when ADDR_B_22_DATA_0 =>
                        rdata_data <= RESIZE(int_B_22(31 downto 0), 32);
                    when ADDR_B_23_DATA_0 =>
                        rdata_data <= RESIZE(int_B_23(31 downto 0), 32);
                    when ADDR_B_24_DATA_0 =>
                        rdata_data <= RESIZE(int_B_24(31 downto 0), 32);
                    when ADDR_B_25_DATA_0 =>
                        rdata_data <= RESIZE(int_B_25(31 downto 0), 32);
                    when ADDR_B_26_DATA_0 =>
                        rdata_data <= RESIZE(int_B_26(31 downto 0), 32);
                    when ADDR_B_27_DATA_0 =>
                        rdata_data <= RESIZE(int_B_27(31 downto 0), 32);
                    when ADDR_B_28_DATA_0 =>
                        rdata_data <= RESIZE(int_B_28(31 downto 0), 32);
                    when ADDR_B_29_DATA_0 =>
                        rdata_data <= RESIZE(int_B_29(31 downto 0), 32);
                    when ADDR_B_30_DATA_0 =>
                        rdata_data <= RESIZE(int_B_30(31 downto 0), 32);
                    when ADDR_B_31_DATA_0 =>
                        rdata_data <= RESIZE(int_B_31(31 downto 0), 32);
                    when ADDR_B_32_DATA_0 =>
                        rdata_data <= RESIZE(int_B_32(31 downto 0), 32);
                    when ADDR_B_33_DATA_0 =>
                        rdata_data <= RESIZE(int_B_33(31 downto 0), 32);
                    when ADDR_B_34_DATA_0 =>
                        rdata_data <= RESIZE(int_B_34(31 downto 0), 32);
                    when ADDR_B_35_DATA_0 =>
                        rdata_data <= RESIZE(int_B_35(31 downto 0), 32);
                    when ADDR_B_36_DATA_0 =>
                        rdata_data <= RESIZE(int_B_36(31 downto 0), 32);
                    when ADDR_B_37_DATA_0 =>
                        rdata_data <= RESIZE(int_B_37(31 downto 0), 32);
                    when ADDR_B_38_DATA_0 =>
                        rdata_data <= RESIZE(int_B_38(31 downto 0), 32);
                    when ADDR_B_39_DATA_0 =>
                        rdata_data <= RESIZE(int_B_39(31 downto 0), 32);
                    when ADDR_B_40_DATA_0 =>
                        rdata_data <= RESIZE(int_B_40(31 downto 0), 32);
                    when ADDR_B_41_DATA_0 =>
                        rdata_data <= RESIZE(int_B_41(31 downto 0), 32);
                    when ADDR_B_42_DATA_0 =>
                        rdata_data <= RESIZE(int_B_42(31 downto 0), 32);
                    when ADDR_B_43_DATA_0 =>
                        rdata_data <= RESIZE(int_B_43(31 downto 0), 32);
                    when ADDR_B_44_DATA_0 =>
                        rdata_data <= RESIZE(int_B_44(31 downto 0), 32);
                    when ADDR_B_45_DATA_0 =>
                        rdata_data <= RESIZE(int_B_45(31 downto 0), 32);
                    when ADDR_B_46_DATA_0 =>
                        rdata_data <= RESIZE(int_B_46(31 downto 0), 32);
                    when ADDR_B_47_DATA_0 =>
                        rdata_data <= RESIZE(int_B_47(31 downto 0), 32);
                    when ADDR_B_48_DATA_0 =>
                        rdata_data <= RESIZE(int_B_48(31 downto 0), 32);
                    when ADDR_B_49_DATA_0 =>
                        rdata_data <= RESIZE(int_B_49(31 downto 0), 32);
                    when ADDR_B_50_DATA_0 =>
                        rdata_data <= RESIZE(int_B_50(31 downto 0), 32);
                    when ADDR_B_51_DATA_0 =>
                        rdata_data <= RESIZE(int_B_51(31 downto 0), 32);
                    when ADDR_B_52_DATA_0 =>
                        rdata_data <= RESIZE(int_B_52(31 downto 0), 32);
                    when ADDR_B_53_DATA_0 =>
                        rdata_data <= RESIZE(int_B_53(31 downto 0), 32);
                    when ADDR_B_54_DATA_0 =>
                        rdata_data <= RESIZE(int_B_54(31 downto 0), 32);
                    when ADDR_B_55_DATA_0 =>
                        rdata_data <= RESIZE(int_B_55(31 downto 0), 32);
                    when ADDR_B_56_DATA_0 =>
                        rdata_data <= RESIZE(int_B_56(31 downto 0), 32);
                    when ADDR_B_57_DATA_0 =>
                        rdata_data <= RESIZE(int_B_57(31 downto 0), 32);
                    when ADDR_B_58_DATA_0 =>
                        rdata_data <= RESIZE(int_B_58(31 downto 0), 32);
                    when ADDR_B_59_DATA_0 =>
                        rdata_data <= RESIZE(int_B_59(31 downto 0), 32);
                    when ADDR_B_60_DATA_0 =>
                        rdata_data <= RESIZE(int_B_60(31 downto 0), 32);
                    when ADDR_B_61_DATA_0 =>
                        rdata_data <= RESIZE(int_B_61(31 downto 0), 32);
                    when ADDR_B_62_DATA_0 =>
                        rdata_data <= RESIZE(int_B_62(31 downto 0), 32);
                    when ADDR_B_63_DATA_0 =>
                        rdata_data <= RESIZE(int_B_63(31 downto 0), 32);
                    when ADDR_B_64_DATA_0 =>
                        rdata_data <= RESIZE(int_B_64(31 downto 0), 32);
                    when ADDR_B_65_DATA_0 =>
                        rdata_data <= RESIZE(int_B_65(31 downto 0), 32);
                    when ADDR_B_66_DATA_0 =>
                        rdata_data <= RESIZE(int_B_66(31 downto 0), 32);
                    when ADDR_B_67_DATA_0 =>
                        rdata_data <= RESIZE(int_B_67(31 downto 0), 32);
                    when ADDR_B_68_DATA_0 =>
                        rdata_data <= RESIZE(int_B_68(31 downto 0), 32);
                    when ADDR_B_69_DATA_0 =>
                        rdata_data <= RESIZE(int_B_69(31 downto 0), 32);
                    when ADDR_B_70_DATA_0 =>
                        rdata_data <= RESIZE(int_B_70(31 downto 0), 32);
                    when ADDR_B_71_DATA_0 =>
                        rdata_data <= RESIZE(int_B_71(31 downto 0), 32);
                    when ADDR_B_72_DATA_0 =>
                        rdata_data <= RESIZE(int_B_72(31 downto 0), 32);
                    when ADDR_B_73_DATA_0 =>
                        rdata_data <= RESIZE(int_B_73(31 downto 0), 32);
                    when ADDR_B_74_DATA_0 =>
                        rdata_data <= RESIZE(int_B_74(31 downto 0), 32);
                    when ADDR_B_75_DATA_0 =>
                        rdata_data <= RESIZE(int_B_75(31 downto 0), 32);
                    when ADDR_B_76_DATA_0 =>
                        rdata_data <= RESIZE(int_B_76(31 downto 0), 32);
                    when ADDR_B_77_DATA_0 =>
                        rdata_data <= RESIZE(int_B_77(31 downto 0), 32);
                    when ADDR_B_78_DATA_0 =>
                        rdata_data <= RESIZE(int_B_78(31 downto 0), 32);
                    when ADDR_B_79_DATA_0 =>
                        rdata_data <= RESIZE(int_B_79(31 downto 0), 32);
                    when ADDR_B_80_DATA_0 =>
                        rdata_data <= RESIZE(int_B_80(31 downto 0), 32);
                    when ADDR_B_81_DATA_0 =>
                        rdata_data <= RESIZE(int_B_81(31 downto 0), 32);
                    when ADDR_B_82_DATA_0 =>
                        rdata_data <= RESIZE(int_B_82(31 downto 0), 32);
                    when ADDR_B_83_DATA_0 =>
                        rdata_data <= RESIZE(int_B_83(31 downto 0), 32);
                    when ADDR_B_84_DATA_0 =>
                        rdata_data <= RESIZE(int_B_84(31 downto 0), 32);
                    when ADDR_B_85_DATA_0 =>
                        rdata_data <= RESIZE(int_B_85(31 downto 0), 32);
                    when ADDR_B_86_DATA_0 =>
                        rdata_data <= RESIZE(int_B_86(31 downto 0), 32);
                    when ADDR_B_87_DATA_0 =>
                        rdata_data <= RESIZE(int_B_87(31 downto 0), 32);
                    when ADDR_B_88_DATA_0 =>
                        rdata_data <= RESIZE(int_B_88(31 downto 0), 32);
                    when ADDR_B_89_DATA_0 =>
                        rdata_data <= RESIZE(int_B_89(31 downto 0), 32);
                    when ADDR_B_90_DATA_0 =>
                        rdata_data <= RESIZE(int_B_90(31 downto 0), 32);
                    when ADDR_B_91_DATA_0 =>
                        rdata_data <= RESIZE(int_B_91(31 downto 0), 32);
                    when ADDR_B_92_DATA_0 =>
                        rdata_data <= RESIZE(int_B_92(31 downto 0), 32);
                    when ADDR_B_93_DATA_0 =>
                        rdata_data <= RESIZE(int_B_93(31 downto 0), 32);
                    when ADDR_B_94_DATA_0 =>
                        rdata_data <= RESIZE(int_B_94(31 downto 0), 32);
                    when ADDR_B_95_DATA_0 =>
                        rdata_data <= RESIZE(int_B_95(31 downto 0), 32);
                    when ADDR_B_96_DATA_0 =>
                        rdata_data <= RESIZE(int_B_96(31 downto 0), 32);
                    when ADDR_B_97_DATA_0 =>
                        rdata_data <= RESIZE(int_B_97(31 downto 0), 32);
                    when ADDR_B_98_DATA_0 =>
                        rdata_data <= RESIZE(int_B_98(31 downto 0), 32);
                    when ADDR_B_99_DATA_0 =>
                        rdata_data <= RESIZE(int_B_99(31 downto 0), 32);
                    when ADDR_B_100_DATA_0 =>
                        rdata_data <= RESIZE(int_B_100(31 downto 0), 32);
                    when ADDR_B_101_DATA_0 =>
                        rdata_data <= RESIZE(int_B_101(31 downto 0), 32);
                    when ADDR_B_102_DATA_0 =>
                        rdata_data <= RESIZE(int_B_102(31 downto 0), 32);
                    when ADDR_B_103_DATA_0 =>
                        rdata_data <= RESIZE(int_B_103(31 downto 0), 32);
                    when ADDR_B_104_DATA_0 =>
                        rdata_data <= RESIZE(int_B_104(31 downto 0), 32);
                    when ADDR_B_105_DATA_0 =>
                        rdata_data <= RESIZE(int_B_105(31 downto 0), 32);
                    when ADDR_B_106_DATA_0 =>
                        rdata_data <= RESIZE(int_B_106(31 downto 0), 32);
                    when ADDR_B_107_DATA_0 =>
                        rdata_data <= RESIZE(int_B_107(31 downto 0), 32);
                    when ADDR_B_108_DATA_0 =>
                        rdata_data <= RESIZE(int_B_108(31 downto 0), 32);
                    when ADDR_B_109_DATA_0 =>
                        rdata_data <= RESIZE(int_B_109(31 downto 0), 32);
                    when ADDR_B_110_DATA_0 =>
                        rdata_data <= RESIZE(int_B_110(31 downto 0), 32);
                    when ADDR_B_111_DATA_0 =>
                        rdata_data <= RESIZE(int_B_111(31 downto 0), 32);
                    when ADDR_B_112_DATA_0 =>
                        rdata_data <= RESIZE(int_B_112(31 downto 0), 32);
                    when ADDR_B_113_DATA_0 =>
                        rdata_data <= RESIZE(int_B_113(31 downto 0), 32);
                    when ADDR_B_114_DATA_0 =>
                        rdata_data <= RESIZE(int_B_114(31 downto 0), 32);
                    when ADDR_B_115_DATA_0 =>
                        rdata_data <= RESIZE(int_B_115(31 downto 0), 32);
                    when ADDR_B_116_DATA_0 =>
                        rdata_data <= RESIZE(int_B_116(31 downto 0), 32);
                    when ADDR_B_117_DATA_0 =>
                        rdata_data <= RESIZE(int_B_117(31 downto 0), 32);
                    when ADDR_B_118_DATA_0 =>
                        rdata_data <= RESIZE(int_B_118(31 downto 0), 32);
                    when ADDR_B_119_DATA_0 =>
                        rdata_data <= RESIZE(int_B_119(31 downto 0), 32);
                    when ADDR_B_120_DATA_0 =>
                        rdata_data <= RESIZE(int_B_120(31 downto 0), 32);
                    when ADDR_B_121_DATA_0 =>
                        rdata_data <= RESIZE(int_B_121(31 downto 0), 32);
                    when ADDR_B_122_DATA_0 =>
                        rdata_data <= RESIZE(int_B_122(31 downto 0), 32);
                    when ADDR_B_123_DATA_0 =>
                        rdata_data <= RESIZE(int_B_123(31 downto 0), 32);
                    when ADDR_B_124_DATA_0 =>
                        rdata_data <= RESIZE(int_B_124(31 downto 0), 32);
                    when ADDR_B_125_DATA_0 =>
                        rdata_data <= RESIZE(int_B_125(31 downto 0), 32);
                    when ADDR_B_126_DATA_0 =>
                        rdata_data <= RESIZE(int_B_126(31 downto 0), 32);
                    when ADDR_B_127_DATA_0 =>
                        rdata_data <= RESIZE(int_B_127(31 downto 0), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    A_0                  <= STD_LOGIC_VECTOR(int_A_0);
    A_1                  <= STD_LOGIC_VECTOR(int_A_1);
    A_2                  <= STD_LOGIC_VECTOR(int_A_2);
    A_3                  <= STD_LOGIC_VECTOR(int_A_3);
    A_4                  <= STD_LOGIC_VECTOR(int_A_4);
    A_5                  <= STD_LOGIC_VECTOR(int_A_5);
    A_6                  <= STD_LOGIC_VECTOR(int_A_6);
    A_7                  <= STD_LOGIC_VECTOR(int_A_7);
    A_8                  <= STD_LOGIC_VECTOR(int_A_8);
    A_9                  <= STD_LOGIC_VECTOR(int_A_9);
    A_10                 <= STD_LOGIC_VECTOR(int_A_10);
    A_11                 <= STD_LOGIC_VECTOR(int_A_11);
    A_12                 <= STD_LOGIC_VECTOR(int_A_12);
    A_13                 <= STD_LOGIC_VECTOR(int_A_13);
    A_14                 <= STD_LOGIC_VECTOR(int_A_14);
    A_15                 <= STD_LOGIC_VECTOR(int_A_15);
    A_16                 <= STD_LOGIC_VECTOR(int_A_16);
    A_17                 <= STD_LOGIC_VECTOR(int_A_17);
    A_18                 <= STD_LOGIC_VECTOR(int_A_18);
    A_19                 <= STD_LOGIC_VECTOR(int_A_19);
    A_20                 <= STD_LOGIC_VECTOR(int_A_20);
    A_21                 <= STD_LOGIC_VECTOR(int_A_21);
    A_22                 <= STD_LOGIC_VECTOR(int_A_22);
    A_23                 <= STD_LOGIC_VECTOR(int_A_23);
    A_24                 <= STD_LOGIC_VECTOR(int_A_24);
    A_25                 <= STD_LOGIC_VECTOR(int_A_25);
    A_26                 <= STD_LOGIC_VECTOR(int_A_26);
    A_27                 <= STD_LOGIC_VECTOR(int_A_27);
    A_28                 <= STD_LOGIC_VECTOR(int_A_28);
    A_29                 <= STD_LOGIC_VECTOR(int_A_29);
    A_30                 <= STD_LOGIC_VECTOR(int_A_30);
    A_31                 <= STD_LOGIC_VECTOR(int_A_31);
    A_32                 <= STD_LOGIC_VECTOR(int_A_32);
    A_33                 <= STD_LOGIC_VECTOR(int_A_33);
    A_34                 <= STD_LOGIC_VECTOR(int_A_34);
    A_35                 <= STD_LOGIC_VECTOR(int_A_35);
    A_36                 <= STD_LOGIC_VECTOR(int_A_36);
    A_37                 <= STD_LOGIC_VECTOR(int_A_37);
    A_38                 <= STD_LOGIC_VECTOR(int_A_38);
    A_39                 <= STD_LOGIC_VECTOR(int_A_39);
    A_40                 <= STD_LOGIC_VECTOR(int_A_40);
    A_41                 <= STD_LOGIC_VECTOR(int_A_41);
    A_42                 <= STD_LOGIC_VECTOR(int_A_42);
    A_43                 <= STD_LOGIC_VECTOR(int_A_43);
    A_44                 <= STD_LOGIC_VECTOR(int_A_44);
    A_45                 <= STD_LOGIC_VECTOR(int_A_45);
    A_46                 <= STD_LOGIC_VECTOR(int_A_46);
    A_47                 <= STD_LOGIC_VECTOR(int_A_47);
    A_48                 <= STD_LOGIC_VECTOR(int_A_48);
    A_49                 <= STD_LOGIC_VECTOR(int_A_49);
    A_50                 <= STD_LOGIC_VECTOR(int_A_50);
    A_51                 <= STD_LOGIC_VECTOR(int_A_51);
    A_52                 <= STD_LOGIC_VECTOR(int_A_52);
    A_53                 <= STD_LOGIC_VECTOR(int_A_53);
    A_54                 <= STD_LOGIC_VECTOR(int_A_54);
    A_55                 <= STD_LOGIC_VECTOR(int_A_55);
    A_56                 <= STD_LOGIC_VECTOR(int_A_56);
    A_57                 <= STD_LOGIC_VECTOR(int_A_57);
    A_58                 <= STD_LOGIC_VECTOR(int_A_58);
    A_59                 <= STD_LOGIC_VECTOR(int_A_59);
    A_60                 <= STD_LOGIC_VECTOR(int_A_60);
    A_61                 <= STD_LOGIC_VECTOR(int_A_61);
    A_62                 <= STD_LOGIC_VECTOR(int_A_62);
    A_63                 <= STD_LOGIC_VECTOR(int_A_63);
    A_64                 <= STD_LOGIC_VECTOR(int_A_64);
    A_65                 <= STD_LOGIC_VECTOR(int_A_65);
    A_66                 <= STD_LOGIC_VECTOR(int_A_66);
    A_67                 <= STD_LOGIC_VECTOR(int_A_67);
    A_68                 <= STD_LOGIC_VECTOR(int_A_68);
    A_69                 <= STD_LOGIC_VECTOR(int_A_69);
    A_70                 <= STD_LOGIC_VECTOR(int_A_70);
    A_71                 <= STD_LOGIC_VECTOR(int_A_71);
    A_72                 <= STD_LOGIC_VECTOR(int_A_72);
    A_73                 <= STD_LOGIC_VECTOR(int_A_73);
    A_74                 <= STD_LOGIC_VECTOR(int_A_74);
    A_75                 <= STD_LOGIC_VECTOR(int_A_75);
    A_76                 <= STD_LOGIC_VECTOR(int_A_76);
    A_77                 <= STD_LOGIC_VECTOR(int_A_77);
    A_78                 <= STD_LOGIC_VECTOR(int_A_78);
    A_79                 <= STD_LOGIC_VECTOR(int_A_79);
    A_80                 <= STD_LOGIC_VECTOR(int_A_80);
    A_81                 <= STD_LOGIC_VECTOR(int_A_81);
    A_82                 <= STD_LOGIC_VECTOR(int_A_82);
    A_83                 <= STD_LOGIC_VECTOR(int_A_83);
    A_84                 <= STD_LOGIC_VECTOR(int_A_84);
    A_85                 <= STD_LOGIC_VECTOR(int_A_85);
    A_86                 <= STD_LOGIC_VECTOR(int_A_86);
    A_87                 <= STD_LOGIC_VECTOR(int_A_87);
    A_88                 <= STD_LOGIC_VECTOR(int_A_88);
    A_89                 <= STD_LOGIC_VECTOR(int_A_89);
    A_90                 <= STD_LOGIC_VECTOR(int_A_90);
    A_91                 <= STD_LOGIC_VECTOR(int_A_91);
    A_92                 <= STD_LOGIC_VECTOR(int_A_92);
    A_93                 <= STD_LOGIC_VECTOR(int_A_93);
    A_94                 <= STD_LOGIC_VECTOR(int_A_94);
    A_95                 <= STD_LOGIC_VECTOR(int_A_95);
    A_96                 <= STD_LOGIC_VECTOR(int_A_96);
    A_97                 <= STD_LOGIC_VECTOR(int_A_97);
    A_98                 <= STD_LOGIC_VECTOR(int_A_98);
    A_99                 <= STD_LOGIC_VECTOR(int_A_99);
    A_100                <= STD_LOGIC_VECTOR(int_A_100);
    A_101                <= STD_LOGIC_VECTOR(int_A_101);
    A_102                <= STD_LOGIC_VECTOR(int_A_102);
    A_103                <= STD_LOGIC_VECTOR(int_A_103);
    A_104                <= STD_LOGIC_VECTOR(int_A_104);
    A_105                <= STD_LOGIC_VECTOR(int_A_105);
    A_106                <= STD_LOGIC_VECTOR(int_A_106);
    A_107                <= STD_LOGIC_VECTOR(int_A_107);
    A_108                <= STD_LOGIC_VECTOR(int_A_108);
    A_109                <= STD_LOGIC_VECTOR(int_A_109);
    A_110                <= STD_LOGIC_VECTOR(int_A_110);
    A_111                <= STD_LOGIC_VECTOR(int_A_111);
    A_112                <= STD_LOGIC_VECTOR(int_A_112);
    A_113                <= STD_LOGIC_VECTOR(int_A_113);
    A_114                <= STD_LOGIC_VECTOR(int_A_114);
    A_115                <= STD_LOGIC_VECTOR(int_A_115);
    A_116                <= STD_LOGIC_VECTOR(int_A_116);
    A_117                <= STD_LOGIC_VECTOR(int_A_117);
    A_118                <= STD_LOGIC_VECTOR(int_A_118);
    A_119                <= STD_LOGIC_VECTOR(int_A_119);
    A_120                <= STD_LOGIC_VECTOR(int_A_120);
    A_121                <= STD_LOGIC_VECTOR(int_A_121);
    A_122                <= STD_LOGIC_VECTOR(int_A_122);
    A_123                <= STD_LOGIC_VECTOR(int_A_123);
    A_124                <= STD_LOGIC_VECTOR(int_A_124);
    A_125                <= STD_LOGIC_VECTOR(int_A_125);
    A_126                <= STD_LOGIC_VECTOR(int_A_126);
    A_127                <= STD_LOGIC_VECTOR(int_A_127);
    B_0                  <= STD_LOGIC_VECTOR(int_B_0);
    B_1                  <= STD_LOGIC_VECTOR(int_B_1);
    B_2                  <= STD_LOGIC_VECTOR(int_B_2);
    B_3                  <= STD_LOGIC_VECTOR(int_B_3);
    B_4                  <= STD_LOGIC_VECTOR(int_B_4);
    B_5                  <= STD_LOGIC_VECTOR(int_B_5);
    B_6                  <= STD_LOGIC_VECTOR(int_B_6);
    B_7                  <= STD_LOGIC_VECTOR(int_B_7);
    B_8                  <= STD_LOGIC_VECTOR(int_B_8);
    B_9                  <= STD_LOGIC_VECTOR(int_B_9);
    B_10                 <= STD_LOGIC_VECTOR(int_B_10);
    B_11                 <= STD_LOGIC_VECTOR(int_B_11);
    B_12                 <= STD_LOGIC_VECTOR(int_B_12);
    B_13                 <= STD_LOGIC_VECTOR(int_B_13);
    B_14                 <= STD_LOGIC_VECTOR(int_B_14);
    B_15                 <= STD_LOGIC_VECTOR(int_B_15);
    B_16                 <= STD_LOGIC_VECTOR(int_B_16);
    B_17                 <= STD_LOGIC_VECTOR(int_B_17);
    B_18                 <= STD_LOGIC_VECTOR(int_B_18);
    B_19                 <= STD_LOGIC_VECTOR(int_B_19);
    B_20                 <= STD_LOGIC_VECTOR(int_B_20);
    B_21                 <= STD_LOGIC_VECTOR(int_B_21);
    B_22                 <= STD_LOGIC_VECTOR(int_B_22);
    B_23                 <= STD_LOGIC_VECTOR(int_B_23);
    B_24                 <= STD_LOGIC_VECTOR(int_B_24);
    B_25                 <= STD_LOGIC_VECTOR(int_B_25);
    B_26                 <= STD_LOGIC_VECTOR(int_B_26);
    B_27                 <= STD_LOGIC_VECTOR(int_B_27);
    B_28                 <= STD_LOGIC_VECTOR(int_B_28);
    B_29                 <= STD_LOGIC_VECTOR(int_B_29);
    B_30                 <= STD_LOGIC_VECTOR(int_B_30);
    B_31                 <= STD_LOGIC_VECTOR(int_B_31);
    B_32                 <= STD_LOGIC_VECTOR(int_B_32);
    B_33                 <= STD_LOGIC_VECTOR(int_B_33);
    B_34                 <= STD_LOGIC_VECTOR(int_B_34);
    B_35                 <= STD_LOGIC_VECTOR(int_B_35);
    B_36                 <= STD_LOGIC_VECTOR(int_B_36);
    B_37                 <= STD_LOGIC_VECTOR(int_B_37);
    B_38                 <= STD_LOGIC_VECTOR(int_B_38);
    B_39                 <= STD_LOGIC_VECTOR(int_B_39);
    B_40                 <= STD_LOGIC_VECTOR(int_B_40);
    B_41                 <= STD_LOGIC_VECTOR(int_B_41);
    B_42                 <= STD_LOGIC_VECTOR(int_B_42);
    B_43                 <= STD_LOGIC_VECTOR(int_B_43);
    B_44                 <= STD_LOGIC_VECTOR(int_B_44);
    B_45                 <= STD_LOGIC_VECTOR(int_B_45);
    B_46                 <= STD_LOGIC_VECTOR(int_B_46);
    B_47                 <= STD_LOGIC_VECTOR(int_B_47);
    B_48                 <= STD_LOGIC_VECTOR(int_B_48);
    B_49                 <= STD_LOGIC_VECTOR(int_B_49);
    B_50                 <= STD_LOGIC_VECTOR(int_B_50);
    B_51                 <= STD_LOGIC_VECTOR(int_B_51);
    B_52                 <= STD_LOGIC_VECTOR(int_B_52);
    B_53                 <= STD_LOGIC_VECTOR(int_B_53);
    B_54                 <= STD_LOGIC_VECTOR(int_B_54);
    B_55                 <= STD_LOGIC_VECTOR(int_B_55);
    B_56                 <= STD_LOGIC_VECTOR(int_B_56);
    B_57                 <= STD_LOGIC_VECTOR(int_B_57);
    B_58                 <= STD_LOGIC_VECTOR(int_B_58);
    B_59                 <= STD_LOGIC_VECTOR(int_B_59);
    B_60                 <= STD_LOGIC_VECTOR(int_B_60);
    B_61                 <= STD_LOGIC_VECTOR(int_B_61);
    B_62                 <= STD_LOGIC_VECTOR(int_B_62);
    B_63                 <= STD_LOGIC_VECTOR(int_B_63);
    B_64                 <= STD_LOGIC_VECTOR(int_B_64);
    B_65                 <= STD_LOGIC_VECTOR(int_B_65);
    B_66                 <= STD_LOGIC_VECTOR(int_B_66);
    B_67                 <= STD_LOGIC_VECTOR(int_B_67);
    B_68                 <= STD_LOGIC_VECTOR(int_B_68);
    B_69                 <= STD_LOGIC_VECTOR(int_B_69);
    B_70                 <= STD_LOGIC_VECTOR(int_B_70);
    B_71                 <= STD_LOGIC_VECTOR(int_B_71);
    B_72                 <= STD_LOGIC_VECTOR(int_B_72);
    B_73                 <= STD_LOGIC_VECTOR(int_B_73);
    B_74                 <= STD_LOGIC_VECTOR(int_B_74);
    B_75                 <= STD_LOGIC_VECTOR(int_B_75);
    B_76                 <= STD_LOGIC_VECTOR(int_B_76);
    B_77                 <= STD_LOGIC_VECTOR(int_B_77);
    B_78                 <= STD_LOGIC_VECTOR(int_B_78);
    B_79                 <= STD_LOGIC_VECTOR(int_B_79);
    B_80                 <= STD_LOGIC_VECTOR(int_B_80);
    B_81                 <= STD_LOGIC_VECTOR(int_B_81);
    B_82                 <= STD_LOGIC_VECTOR(int_B_82);
    B_83                 <= STD_LOGIC_VECTOR(int_B_83);
    B_84                 <= STD_LOGIC_VECTOR(int_B_84);
    B_85                 <= STD_LOGIC_VECTOR(int_B_85);
    B_86                 <= STD_LOGIC_VECTOR(int_B_86);
    B_87                 <= STD_LOGIC_VECTOR(int_B_87);
    B_88                 <= STD_LOGIC_VECTOR(int_B_88);
    B_89                 <= STD_LOGIC_VECTOR(int_B_89);
    B_90                 <= STD_LOGIC_VECTOR(int_B_90);
    B_91                 <= STD_LOGIC_VECTOR(int_B_91);
    B_92                 <= STD_LOGIC_VECTOR(int_B_92);
    B_93                 <= STD_LOGIC_VECTOR(int_B_93);
    B_94                 <= STD_LOGIC_VECTOR(int_B_94);
    B_95                 <= STD_LOGIC_VECTOR(int_B_95);
    B_96                 <= STD_LOGIC_VECTOR(int_B_96);
    B_97                 <= STD_LOGIC_VECTOR(int_B_97);
    B_98                 <= STD_LOGIC_VECTOR(int_B_98);
    B_99                 <= STD_LOGIC_VECTOR(int_B_99);
    B_100                <= STD_LOGIC_VECTOR(int_B_100);
    B_101                <= STD_LOGIC_VECTOR(int_B_101);
    B_102                <= STD_LOGIC_VECTOR(int_B_102);
    B_103                <= STD_LOGIC_VECTOR(int_B_103);
    B_104                <= STD_LOGIC_VECTOR(int_B_104);
    B_105                <= STD_LOGIC_VECTOR(int_B_105);
    B_106                <= STD_LOGIC_VECTOR(int_B_106);
    B_107                <= STD_LOGIC_VECTOR(int_B_107);
    B_108                <= STD_LOGIC_VECTOR(int_B_108);
    B_109                <= STD_LOGIC_VECTOR(int_B_109);
    B_110                <= STD_LOGIC_VECTOR(int_B_110);
    B_111                <= STD_LOGIC_VECTOR(int_B_111);
    B_112                <= STD_LOGIC_VECTOR(int_B_112);
    B_113                <= STD_LOGIC_VECTOR(int_B_113);
    B_114                <= STD_LOGIC_VECTOR(int_B_114);
    B_115                <= STD_LOGIC_VECTOR(int_B_115);
    B_116                <= STD_LOGIC_VECTOR(int_B_116);
    B_117                <= STD_LOGIC_VECTOR(int_B_117);
    B_118                <= STD_LOGIC_VECTOR(int_B_118);
    B_119                <= STD_LOGIC_VECTOR(int_B_119);
    B_120                <= STD_LOGIC_VECTOR(int_B_120);
    B_121                <= STD_LOGIC_VECTOR(int_B_121);
    B_122                <= STD_LOGIC_VECTOR(int_B_122);
    B_123                <= STD_LOGIC_VECTOR(int_B_123);
    B_124                <= STD_LOGIC_VECTOR(int_B_124);
    B_125                <= STD_LOGIC_VECTOR(int_B_125);
    B_126                <= STD_LOGIC_VECTOR(int_B_126);
    B_127                <= STD_LOGIC_VECTOR(int_B_127);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_0_DATA_0) then
                    int_A_0(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_0(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_1_DATA_0) then
                    int_A_1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_2_DATA_0) then
                    int_A_2(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_2(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_3_DATA_0) then
                    int_A_3(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_3(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_4_DATA_0) then
                    int_A_4(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_4(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_5_DATA_0) then
                    int_A_5(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_5(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_6_DATA_0) then
                    int_A_6(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_6(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_7_DATA_0) then
                    int_A_7(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_7(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_8_DATA_0) then
                    int_A_8(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_8(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_9_DATA_0) then
                    int_A_9(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_9(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_10_DATA_0) then
                    int_A_10(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_10(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_11_DATA_0) then
                    int_A_11(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_11(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_12_DATA_0) then
                    int_A_12(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_12(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_13_DATA_0) then
                    int_A_13(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_13(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_14_DATA_0) then
                    int_A_14(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_14(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_15_DATA_0) then
                    int_A_15(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_15(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_16_DATA_0) then
                    int_A_16(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_16(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_17_DATA_0) then
                    int_A_17(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_17(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_18_DATA_0) then
                    int_A_18(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_18(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_19_DATA_0) then
                    int_A_19(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_19(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_20_DATA_0) then
                    int_A_20(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_20(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_21_DATA_0) then
                    int_A_21(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_21(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_22_DATA_0) then
                    int_A_22(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_22(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_23_DATA_0) then
                    int_A_23(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_23(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_24_DATA_0) then
                    int_A_24(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_24(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_25_DATA_0) then
                    int_A_25(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_25(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_26_DATA_0) then
                    int_A_26(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_26(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_27_DATA_0) then
                    int_A_27(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_27(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_28_DATA_0) then
                    int_A_28(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_28(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_29_DATA_0) then
                    int_A_29(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_29(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_30_DATA_0) then
                    int_A_30(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_30(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_31_DATA_0) then
                    int_A_31(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_31(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_32_DATA_0) then
                    int_A_32(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_32(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_33_DATA_0) then
                    int_A_33(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_33(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_34_DATA_0) then
                    int_A_34(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_34(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_35_DATA_0) then
                    int_A_35(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_35(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_36_DATA_0) then
                    int_A_36(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_36(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_37_DATA_0) then
                    int_A_37(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_37(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_38_DATA_0) then
                    int_A_38(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_38(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_39_DATA_0) then
                    int_A_39(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_39(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_40_DATA_0) then
                    int_A_40(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_40(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_41_DATA_0) then
                    int_A_41(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_41(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_42_DATA_0) then
                    int_A_42(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_42(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_43_DATA_0) then
                    int_A_43(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_43(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_44_DATA_0) then
                    int_A_44(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_44(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_45_DATA_0) then
                    int_A_45(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_45(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_46_DATA_0) then
                    int_A_46(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_46(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_47_DATA_0) then
                    int_A_47(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_47(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_48_DATA_0) then
                    int_A_48(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_48(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_49_DATA_0) then
                    int_A_49(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_49(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_50_DATA_0) then
                    int_A_50(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_50(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_51_DATA_0) then
                    int_A_51(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_51(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_52_DATA_0) then
                    int_A_52(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_52(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_53_DATA_0) then
                    int_A_53(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_53(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_54_DATA_0) then
                    int_A_54(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_54(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_55_DATA_0) then
                    int_A_55(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_55(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_56_DATA_0) then
                    int_A_56(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_56(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_57_DATA_0) then
                    int_A_57(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_57(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_58_DATA_0) then
                    int_A_58(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_58(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_59_DATA_0) then
                    int_A_59(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_59(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_60_DATA_0) then
                    int_A_60(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_60(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_61_DATA_0) then
                    int_A_61(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_61(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_62_DATA_0) then
                    int_A_62(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_62(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_63_DATA_0) then
                    int_A_63(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_63(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_64_DATA_0) then
                    int_A_64(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_64(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_65_DATA_0) then
                    int_A_65(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_65(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_66_DATA_0) then
                    int_A_66(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_66(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_67_DATA_0) then
                    int_A_67(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_67(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_68_DATA_0) then
                    int_A_68(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_68(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_69_DATA_0) then
                    int_A_69(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_69(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_70_DATA_0) then
                    int_A_70(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_70(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_71_DATA_0) then
                    int_A_71(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_71(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_72_DATA_0) then
                    int_A_72(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_72(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_73_DATA_0) then
                    int_A_73(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_73(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_74_DATA_0) then
                    int_A_74(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_74(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_75_DATA_0) then
                    int_A_75(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_75(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_76_DATA_0) then
                    int_A_76(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_76(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_77_DATA_0) then
                    int_A_77(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_77(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_78_DATA_0) then
                    int_A_78(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_78(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_79_DATA_0) then
                    int_A_79(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_79(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_80_DATA_0) then
                    int_A_80(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_80(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_81_DATA_0) then
                    int_A_81(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_81(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_82_DATA_0) then
                    int_A_82(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_82(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_83_DATA_0) then
                    int_A_83(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_83(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_84_DATA_0) then
                    int_A_84(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_84(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_85_DATA_0) then
                    int_A_85(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_85(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_86_DATA_0) then
                    int_A_86(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_86(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_87_DATA_0) then
                    int_A_87(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_87(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_88_DATA_0) then
                    int_A_88(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_88(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_89_DATA_0) then
                    int_A_89(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_89(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_90_DATA_0) then
                    int_A_90(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_90(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_91_DATA_0) then
                    int_A_91(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_91(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_92_DATA_0) then
                    int_A_92(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_92(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_93_DATA_0) then
                    int_A_93(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_93(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_94_DATA_0) then
                    int_A_94(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_94(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_95_DATA_0) then
                    int_A_95(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_95(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_96_DATA_0) then
                    int_A_96(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_96(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_97_DATA_0) then
                    int_A_97(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_97(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_98_DATA_0) then
                    int_A_98(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_98(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_99_DATA_0) then
                    int_A_99(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_99(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_100_DATA_0) then
                    int_A_100(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_100(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_101_DATA_0) then
                    int_A_101(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_101(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_102_DATA_0) then
                    int_A_102(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_102(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_103_DATA_0) then
                    int_A_103(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_103(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_104_DATA_0) then
                    int_A_104(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_104(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_105_DATA_0) then
                    int_A_105(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_105(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_106_DATA_0) then
                    int_A_106(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_106(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_107_DATA_0) then
                    int_A_107(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_107(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_108_DATA_0) then
                    int_A_108(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_108(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_109_DATA_0) then
                    int_A_109(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_109(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_110_DATA_0) then
                    int_A_110(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_110(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_111_DATA_0) then
                    int_A_111(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_111(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_112_DATA_0) then
                    int_A_112(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_112(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_113_DATA_0) then
                    int_A_113(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_113(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_114_DATA_0) then
                    int_A_114(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_114(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_115_DATA_0) then
                    int_A_115(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_115(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_116_DATA_0) then
                    int_A_116(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_116(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_117_DATA_0) then
                    int_A_117(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_117(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_118_DATA_0) then
                    int_A_118(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_118(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_119_DATA_0) then
                    int_A_119(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_119(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_120_DATA_0) then
                    int_A_120(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_120(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_121_DATA_0) then
                    int_A_121(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_121(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_122_DATA_0) then
                    int_A_122(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_122(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_123_DATA_0) then
                    int_A_123(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_123(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_124_DATA_0) then
                    int_A_124(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_124(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_125_DATA_0) then
                    int_A_125(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_125(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_126_DATA_0) then
                    int_A_126(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_126(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_127_DATA_0) then
                    int_A_127(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_127(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_0_DATA_0) then
                    int_B_0(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_0(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_1_DATA_0) then
                    int_B_1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_2_DATA_0) then
                    int_B_2(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_2(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_3_DATA_0) then
                    int_B_3(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_3(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_4_DATA_0) then
                    int_B_4(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_4(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_5_DATA_0) then
                    int_B_5(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_5(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_6_DATA_0) then
                    int_B_6(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_6(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_7_DATA_0) then
                    int_B_7(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_7(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_8_DATA_0) then
                    int_B_8(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_8(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_9_DATA_0) then
                    int_B_9(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_9(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_10_DATA_0) then
                    int_B_10(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_10(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_11_DATA_0) then
                    int_B_11(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_11(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_12_DATA_0) then
                    int_B_12(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_12(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_13_DATA_0) then
                    int_B_13(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_13(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_14_DATA_0) then
                    int_B_14(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_14(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_15_DATA_0) then
                    int_B_15(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_15(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_16_DATA_0) then
                    int_B_16(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_16(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_17_DATA_0) then
                    int_B_17(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_17(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_18_DATA_0) then
                    int_B_18(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_18(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_19_DATA_0) then
                    int_B_19(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_19(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_20_DATA_0) then
                    int_B_20(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_20(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_21_DATA_0) then
                    int_B_21(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_21(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_22_DATA_0) then
                    int_B_22(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_22(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_23_DATA_0) then
                    int_B_23(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_23(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_24_DATA_0) then
                    int_B_24(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_24(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_25_DATA_0) then
                    int_B_25(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_25(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_26_DATA_0) then
                    int_B_26(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_26(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_27_DATA_0) then
                    int_B_27(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_27(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_28_DATA_0) then
                    int_B_28(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_28(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_29_DATA_0) then
                    int_B_29(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_29(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_30_DATA_0) then
                    int_B_30(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_30(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_31_DATA_0) then
                    int_B_31(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_31(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_32_DATA_0) then
                    int_B_32(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_32(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_33_DATA_0) then
                    int_B_33(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_33(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_34_DATA_0) then
                    int_B_34(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_34(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_35_DATA_0) then
                    int_B_35(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_35(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_36_DATA_0) then
                    int_B_36(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_36(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_37_DATA_0) then
                    int_B_37(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_37(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_38_DATA_0) then
                    int_B_38(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_38(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_39_DATA_0) then
                    int_B_39(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_39(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_40_DATA_0) then
                    int_B_40(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_40(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_41_DATA_0) then
                    int_B_41(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_41(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_42_DATA_0) then
                    int_B_42(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_42(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_43_DATA_0) then
                    int_B_43(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_43(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_44_DATA_0) then
                    int_B_44(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_44(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_45_DATA_0) then
                    int_B_45(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_45(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_46_DATA_0) then
                    int_B_46(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_46(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_47_DATA_0) then
                    int_B_47(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_47(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_48_DATA_0) then
                    int_B_48(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_48(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_49_DATA_0) then
                    int_B_49(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_49(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_50_DATA_0) then
                    int_B_50(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_50(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_51_DATA_0) then
                    int_B_51(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_51(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_52_DATA_0) then
                    int_B_52(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_52(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_53_DATA_0) then
                    int_B_53(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_53(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_54_DATA_0) then
                    int_B_54(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_54(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_55_DATA_0) then
                    int_B_55(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_55(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_56_DATA_0) then
                    int_B_56(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_56(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_57_DATA_0) then
                    int_B_57(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_57(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_58_DATA_0) then
                    int_B_58(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_58(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_59_DATA_0) then
                    int_B_59(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_59(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_60_DATA_0) then
                    int_B_60(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_60(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_61_DATA_0) then
                    int_B_61(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_61(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_62_DATA_0) then
                    int_B_62(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_62(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_63_DATA_0) then
                    int_B_63(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_63(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_64_DATA_0) then
                    int_B_64(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_64(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_65_DATA_0) then
                    int_B_65(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_65(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_66_DATA_0) then
                    int_B_66(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_66(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_67_DATA_0) then
                    int_B_67(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_67(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_68_DATA_0) then
                    int_B_68(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_68(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_69_DATA_0) then
                    int_B_69(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_69(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_70_DATA_0) then
                    int_B_70(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_70(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_71_DATA_0) then
                    int_B_71(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_71(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_72_DATA_0) then
                    int_B_72(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_72(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_73_DATA_0) then
                    int_B_73(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_73(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_74_DATA_0) then
                    int_B_74(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_74(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_75_DATA_0) then
                    int_B_75(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_75(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_76_DATA_0) then
                    int_B_76(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_76(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_77_DATA_0) then
                    int_B_77(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_77(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_78_DATA_0) then
                    int_B_78(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_78(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_79_DATA_0) then
                    int_B_79(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_79(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_80_DATA_0) then
                    int_B_80(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_80(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_81_DATA_0) then
                    int_B_81(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_81(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_82_DATA_0) then
                    int_B_82(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_82(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_83_DATA_0) then
                    int_B_83(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_83(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_84_DATA_0) then
                    int_B_84(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_84(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_85_DATA_0) then
                    int_B_85(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_85(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_86_DATA_0) then
                    int_B_86(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_86(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_87_DATA_0) then
                    int_B_87(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_87(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_88_DATA_0) then
                    int_B_88(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_88(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_89_DATA_0) then
                    int_B_89(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_89(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_90_DATA_0) then
                    int_B_90(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_90(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_91_DATA_0) then
                    int_B_91(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_91(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_92_DATA_0) then
                    int_B_92(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_92(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_93_DATA_0) then
                    int_B_93(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_93(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_94_DATA_0) then
                    int_B_94(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_94(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_95_DATA_0) then
                    int_B_95(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_95(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_96_DATA_0) then
                    int_B_96(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_96(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_97_DATA_0) then
                    int_B_97(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_97(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_98_DATA_0) then
                    int_B_98(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_98(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_99_DATA_0) then
                    int_B_99(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_99(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_100_DATA_0) then
                    int_B_100(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_100(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_101_DATA_0) then
                    int_B_101(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_101(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_102_DATA_0) then
                    int_B_102(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_102(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_103_DATA_0) then
                    int_B_103(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_103(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_104_DATA_0) then
                    int_B_104(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_104(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_105_DATA_0) then
                    int_B_105(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_105(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_106_DATA_0) then
                    int_B_106(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_106(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_107_DATA_0) then
                    int_B_107(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_107(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_108_DATA_0) then
                    int_B_108(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_108(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_109_DATA_0) then
                    int_B_109(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_109(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_110_DATA_0) then
                    int_B_110(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_110(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_111_DATA_0) then
                    int_B_111(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_111(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_112_DATA_0) then
                    int_B_112(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_112(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_113_DATA_0) then
                    int_B_113(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_113(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_114_DATA_0) then
                    int_B_114(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_114(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_115_DATA_0) then
                    int_B_115(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_115(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_116_DATA_0) then
                    int_B_116(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_116(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_117_DATA_0) then
                    int_B_117(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_117(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_118_DATA_0) then
                    int_B_118(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_118(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_119_DATA_0) then
                    int_B_119(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_119(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_120_DATA_0) then
                    int_B_120(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_120(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_121_DATA_0) then
                    int_B_121(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_121(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_122_DATA_0) then
                    int_B_122(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_122(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_123_DATA_0) then
                    int_B_123(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_123(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_124_DATA_0) then
                    int_B_124(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_124(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_125_DATA_0) then
                    int_B_125(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_125(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_126_DATA_0) then
                    int_B_126(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_126(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_127_DATA_0) then
                    int_B_127(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_127(31 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
