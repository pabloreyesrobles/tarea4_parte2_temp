# This script segment is generated automatically by AutoPilot

set name eucDis_mul_32s_32s_32_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
C { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 16
	offset_end 23
}
A_0 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 512
	offset_end 1023
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_1 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 1024
	offset_end 1535
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_2 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 1536
	offset_end 2047
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_3 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 2048
	offset_end 2559
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_4 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 2560
	offset_end 3071
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_5 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 3072
	offset_end 3583
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_6 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 3584
	offset_end 4095
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
A_7 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 4096
	offset_end 4607
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_0 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 4608
	offset_end 5119
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_1 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 5120
	offset_end 5631
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_2 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 5632
	offset_end 6143
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_3 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 6144
	offset_end 6655
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_4 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 6656
	offset_end 7167
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_5 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 7168
	offset_end 7679
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_6 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 7680
	offset_end 8191
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
B_7 { 
	dir I
	width 32
	depth 128
	mode ap_memory
	offset 8192
	offset_end 8703
	core_op ram_1p
	core_impl bram
	core_latency 1
	byte_write 0
}
ap_start {
	mailbox_input_ctrl 0
	mailbox_output_ctrl 0
	auto_restart_enabled 1
	auto_restart_counter_num 0
	auto_restart_counter_offset 16
	auto_restart_counter_size 32
}
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 19 \
			corename eucDis_control_axilite \
			name eucDis_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_mode default \
			is_flushable 0 \
			is_datawidth64 0 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler eucDis_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


