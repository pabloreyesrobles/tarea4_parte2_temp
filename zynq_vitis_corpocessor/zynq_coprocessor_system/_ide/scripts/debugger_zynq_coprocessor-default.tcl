# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\Magisterio\IPD-432\Tarea_4\zynq_vitis_corpocessor\zynq_coprocessor_system\_ide\scripts\debugger_zynq_coprocessor-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\Magisterio\IPD-432\Tarea_4\zynq_vitis_corpocessor\zynq_coprocessor_system\_ide\scripts\debugger_zynq_coprocessor-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279A428F5A" && level==0 && jtag_device_ctx=="jsn-Zybo-210279A428F5A-13722093-0"}
fpga -file E:/Magisterio/IPD-432/Tarea_4/zynq_vitis_corpocessor/zynq_coprocessor/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/Magisterio/IPD-432/Tarea_4/zynq_vitis_corpocessor/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source E:/Magisterio/IPD-432/Tarea_4/zynq_vitis_corpocessor/zynq_coprocessor/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow E:/Magisterio/IPD-432/Tarea_4/zynq_vitis_corpocessor/zynq_coprocessor/Debug/zynq_coprocessor.elf
configparams force-mem-access 0
bpadd -addr &main
