
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
l
"Loaded Vivado IP repository '%s'.
1332*coregen2#
!/opt/Xilinx/Vivado/2024.2/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/utils_1/imports/synth_1/base.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/utils_1/imports/synth_1/base.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
_
Command: %s
53*	vivadotcl2.
,synth_design -top base -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
�
^The reference checkpoint is from an old version of Vivado; A full resynthesis flow will be run653*	vivadotclZ4-1809h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
7Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
O
#Helper process launched with PID %s4824*oasys2
522844Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1922.770 ; gain = 418.828 ; free physical = 80735 ; free virtual = 123234
h px� 
�
synthesizing module '%s'%s4497*oasys2
base2
 2{
w/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/base.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
design_4_wrapper2
 2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.gen/sources_1/bd/design_4/hdl/design_4_wrapper.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

design_42
 2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.gen/sources_1/bd/design_4/synth/design_4.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
design_4_clk_wiz_0_02
 2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.runs/synth_1/.Xil/Vivado-522818-pop-os/realtime/design_4_clk_wiz_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_4_clk_wiz_0_02
 2
02
12�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.runs/synth_1/.Xil/Vivado-522818-pop-os/realtime/design_4_clk_wiz_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
locked2
design_4_clk_wiz_0_02
	clk_wiz_02�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.gen/sources_1/bd/design_4/synth/design_4.v2
268@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	clk_wiz_02
design_4_clk_wiz_0_02
42
32�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.gen/sources_1/bd/design_4/synth/design_4.v2
268@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

design_42
 2
02
12�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.gen/sources_1/bd/design_4/synth/design_4.v2
138@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_4_wrapper2
 2
02
12�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.gen/sources_1/bd/design_4/hdl/design_4_wrapper.v2
138@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
spi_camera_axis_wrapper2
 2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_camera_axis_wrapper.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
yuv422_2_gray82
 2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/yuv422_2_gray8.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
yuv422_2_gray82
 2
02
12�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/yuv422_2_gray8.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

decimate2
 2
{/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/decimate.v2
238@Z8-6157h px� 
K
%s
*synth23
1	Parameter ROW_MAX bound to: 96 - type: integer 
h p
x
� 
K
%s
*synth23
1	Parameter COL_MAX bound to: 96 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter N_BYTES bound to: 4900 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

decimate2
 2
02
12
{/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/decimate.v2
238@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
row2

decimate2
dec2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_camera_axis_wrapper.v2
818@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
col2

decimate2
dec2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_camera_axis_wrapper.v2
818@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
dec2

decimate2
112
92�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_camera_axis_wrapper.v2
818@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
spi_camera_controller2
 2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/imports/SPI-Controller/spi_camera_controller.v2
88@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/imports/SPI-Controller/spi_camera_controller.v2
2188@Z8-155h px� 
�
synthesizing module '%s'638*oasys2

SPI_MASTER2�
/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_master.vhd2
438@Z8-638h px� 
S
%s
*synth2;
9	Parameter CLK_FREQ bound to: 100000000 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter SCLK_FREQ bound to: 5000000 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter WORD_SIZE bound to: 8 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter SLAVE_COUNT bound to: 1 - type: integer 
h p
x
� 
�
null port '%s' ignored506*oasys2

DIN_ADDR2�
/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_master.vhd2
338@Z8-506h px� 
�
&Null subtype or type declaration found4617*oasys2�
/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_master.vhd2
528@Z8-6774h px� 
�
null assignment ignored3449*oasys2�
/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_master.vhd2
1378@Z8-3919h px� 
�
null assignment ignored3449*oasys2�
/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_master.vhd2
1398@Z8-3919h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

SPI_MASTER2
02
12�
/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_master.vhd2
438@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
spi_camera_controller2
 2
02
12�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/imports/SPI-Controller/spi_camera_controller.v2
88@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
spi_camera_stream_bridge2
 2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_camera_stream_bridge.v2
18@Z8-6157h px� 
P
%s
*synth28
6	Parameter FIFO_DEPTH bound to: 4900 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
spi_camera_stream_bridge2
 2
02
12�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_camera_stream_bridge.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
spi_camera_axis_wrapper2
 2
02
12�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/spi_camera_axis_wrapper.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
debounce_pulse2
 2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/debounce_pulse.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
debounce_pulse2
 2
02
12�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/debounce_pulse.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
base2
 2
02
12{
w/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/new/base.v2
238@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2	
row_reg2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/imports/SPI-Controller/spi_camera_controller.v2
2058@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2	
col_reg2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/imports/SPI-Controller/spi_camera_controller.v2
2068@Z8-6014h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
data_in_last2

decimateZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2004.707 ; gain = 500.766 ; free physical = 80734 ; free virtual = 123234
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2016.582 ; gain = 512.641 ; free physical = 80734 ; free virtual = 123234
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2016.582 ; gain = 512.641 ; free physical = 80734 ; free virtual = 123234
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012
00:00:00.012

2016.5822
0.0002
807342
123234Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.gen/sources_1/bd/design_4/ip/design_4_clk_wiz_0_0/design_4_clk_wiz_0_0/design_4_clk_wiz_0_0_in_context.xdc2!
design_4/design_4_i/clk_wiz_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.gen/sources_1/bd/design_4/ip/design_4_clk_wiz_0_0/design_4_clk_wiz_0_0/design_4_clk_wiz_0_0_in_context.xdc2!
design_4/design_4_i/clk_wiz_0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2
{/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/constrs_1/new/master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2
{/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/constrs_1/new/master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2}
{/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/constrs_1/new/master.xdc2
.Xil/base_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2}
y/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2}
y/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2141.3202
0.0002
807282
123229Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2

00:00:002

00:00:002

2141.3202
0.0002
807282
123229Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2141.320 ; gain = 637.379 ; free physical = 80724 ; free virtual = 123225
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2149.324 ; gain = 645.383 ; free physical = 80724 ; free virtual = 123225
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2149.324 ; gain = 645.383 ; free physical = 80724 ; free virtual = 123225
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
v
3inferred FSM for state register '%s' in module '%s'802*oasys2
present_state_reg2

SPI_MASTERZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                            00001 |                              000
h p
x
� 
y
%s
*synth2a
_              first_edge |                            00010 |                              001
h p
x
� 
y
%s
*synth2a
_             second_edge |                            00100 |                              010
h p
x
� 
y
%s
*synth2a
_            transmit_end |                            01000 |                              011
h p
x
� 
y
%s
*synth2a
_            transmit_gap |                            10000 |                              100
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
present_state_reg2	
one-hot2

SPI_MASTERZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2149.324 ; gain = 645.383 ; free physical = 80722 ; free virtual = 123224
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input   13 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 10    
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 11    
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 31    
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
X
%s
*synth2@
>	              38K Bit	(4900 X 8 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   13 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   5 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 36    
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 5     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
rx_addr_buf_reg2
82
72�
�/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.srcs/sources_1/imports/SPI-Controller/spi_camera_controller.v2
2818@Z8-3936h px� 
p
+Unused sequential element %s was removed. 
4326*oasys2!
spi_camera/bridge/fifo_data_regZ8-6014h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2149.324 ; gain = 645.383 ; free physical = 80687 ; free virtual = 123197
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
c
%s*synth2K
I+----------------------+--------------+---------------+----------------+
h px� 
d
%s*synth2L
J|Module Name           | RTL Object   | Depth x Width | Implemented As | 
h px� 
c
%s*synth2K
I+----------------------+--------------+---------------+----------------+
h px� 
d
%s*synth2L
J|spi_camera_controller | return_state | 128x1         | LUT            | 
h px� 
d
%s*synth2L
J+----------------------+--------------+---------------+----------------+

h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 2172.324 ; gain = 668.383 ; free physical = 80608 ; free virtual = 123118
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2215.371 ; gain = 711.430 ; free physical = 80569 ; free virtual = 123079
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2223.379 ; gain = 719.438 ; free physical = 80553 ; free virtual = 123063
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2360.191 ; gain = 856.250 ; free physical = 80443 ; free virtual = 122953
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2360.191 ; gain = 856.250 ; free physical = 80443 ; free virtual = 122953
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2360.191 ; gain = 856.250 ; free physical = 80443 ; free virtual = 122953
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2360.191 ; gain = 856.250 ; free physical = 80443 ; free virtual = 122953
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2360.191 ; gain = 856.250 ; free physical = 80443 ; free virtual = 122953
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2360.191 ; gain = 856.250 ; free physical = 80443 ; free virtual = 122953
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
D
%s
*synth2,
*+------+---------------------+----------+
h p
x
� 
D
%s
*synth2,
*|      |BlackBox name        |Instances |
h p
x
� 
D
%s
*synth2,
*+------+---------------------+----------+
h p
x
� 
D
%s
*synth2,
*|1     |design_4_clk_wiz_0_0 |         1|
h p
x
� 
D
%s
*synth2,
*+------+---------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
>
%s*synth2&
$+------+-------------------+------+
h px� 
>
%s*synth2&
$|      |Cell               |Count |
h px� 
>
%s*synth2&
$+------+-------------------+------+
h px� 
>
%s*synth2&
$|1     |design_4_clk_wiz_0 |     1|
h px� 
>
%s*synth2&
$|2     |CARRY4             |    36|
h px� 
>
%s*synth2&
$|3     |LUT1               |    25|
h px� 
>
%s*synth2&
$|4     |LUT2               |    67|
h px� 
>
%s*synth2&
$|5     |LUT3               |    22|
h px� 
>
%s*synth2&
$|6     |LUT4               |    59|
h px� 
>
%s*synth2&
$|7     |LUT5               |    38|
h px� 
>
%s*synth2&
$|8     |LUT6               |   132|
h px� 
>
%s*synth2&
$|9     |MUXF7              |     1|
h px� 
>
%s*synth2&
$|10    |FDRE               |   215|
h px� 
>
%s*synth2&
$|11    |IBUF               |     2|
h px� 
>
%s*synth2&
$|12    |OBUF               |     4|
h px� 
>
%s*synth2&
$+------+-------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2360.191 ; gain = 856.250 ; free physical = 80443 ; free virtual = 122953
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 3 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2360.191 ; gain = 731.512 ; free physical = 80443 ; free virtual = 122953
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2360.199 ; gain = 856.250 ; free physical = 80443 ; free virtual = 122953
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2360.1992
0.0002
804432
122953Z17-722h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
37Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
1Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2416.2192
0.0002
805162
123026Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

bc0a0256Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
492
162
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:172

00:00:162

2416.2192	
992.7932
805162
123026Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1566.205; main = 1566.205; forked = 268.934Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2=
;(MB): overall = 3095.152; main = 2416.223; forked = 945.824Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.012

00:00:002

2440.2302
0.0002
805152
123025Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2u
s/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.runs/synth_1/base.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2S
Qreport_utilization -file base_utilization_synth.rpt -pb base_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sat May  3 18:14:24 2025Z17-206h px� 


End Record