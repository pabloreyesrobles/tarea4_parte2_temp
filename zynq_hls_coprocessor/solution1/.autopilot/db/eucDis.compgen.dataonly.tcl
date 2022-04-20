# This script segment is generated automatically by AutoPilot

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


