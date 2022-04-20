set SynModuleInfo {
  {SRCNAME {sqrt_fixed<33, 33>} MODELNAME sqrt_fixed_33_33_s RTLNAME eucDis_sqrt_fixed_33_33_s}
  {SRCNAME eucDis MODELNAME eucDis RTLNAME eucDis IS_TOP 1
    SUBMODULES {
      {MODELNAME eucDis_mul_32s_32s_32_2_1 RTLNAME eucDis_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME eucDis_control_s_axi RTLNAME eucDis_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
