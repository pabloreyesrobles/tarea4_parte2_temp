# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\Magisterio\IPD-432\Tarea_4\zynq_vitis_corpocessor\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\Magisterio\IPD-432\Tarea_4\zynq_vitis_corpocessor\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {E:\Magisterio\IPD-432\Tarea_4\zynq_coprocessor\design_1_wrapper.xsa}\
-out {E:/Magisterio/IPD-432/Tarea_4/zynq_vitis_corpocessor}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
