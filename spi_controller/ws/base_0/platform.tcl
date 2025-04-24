# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\GitHub\753-FPGA\spi_controller\ws\base_0\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\GitHub\753-FPGA\spi_controller\ws\base_0\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {base_0}\
-hw {D:\GitHub\753-FPGA\spi_controller\base.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {D:/GitHub/753-FPGA/spi_controller/ws}

platform write
platform generate -domains 
platform active {base_0}
platform generate
