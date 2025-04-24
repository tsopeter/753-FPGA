# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\GitHub\753-FPGA\spi_controller\ws\spi-camera-test_system\_ide\scripts\systemdebugger_spi-camera-test_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\GitHub\753-FPGA\spi_controller\ws\spi-camera-test_system\_ide\scripts\systemdebugger_spi-camera-test_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
source C:/Xilinx/Vitis/2023.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*"}
reset_apu
targets -set -filter {jtag_cable_name =~ "Xilinx X-MLCC-01 XFL13Y1UTXG1A" && level==0 && jtag_device_ctx=="jsn-X-MLCC-01-XFL13Y1UTXG1A-04724093-0"}
fpga -file D:/GitHub/753-FPGA/spi_controller/ws/spi-camera-test/_ide/bitstream/base_uart.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/GitHub/753-FPGA/spi_controller/ws/base_uart/export/base_uart/hw/base_uart.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
mask_write 0xFF5E0200 0xf000 0
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow D:/GitHub/753-FPGA/spi_controller/ws/base_uart/export/base_uart/sw/base_uart/boot/fsbl.elf
set bp_44_16_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_44_16_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow D:/GitHub/753-FPGA/spi_controller/ws/spi-camera-test/Debug/spi-camera-test.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
