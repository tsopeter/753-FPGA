
B
Command: %s
53*	vivadotcl2
phys_opt_designZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7a35tZ17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7a35tZ17-349h px� 
R

Starting %s Task
103*constraints2
Initial Update TimingZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.09 ; elapsed = 00:00:00.03 . Memory (MB): peak = 2689.105 ; gain = 0.000 ; free physical = 80407 ; free virtual = 122937h px� 
�
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
0.102
0.04Z4-1435h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2689.1052
0.0002
804072
122937Z17-722h px� 
O

Starting %s Task
103*constraints2
Physical SynthesisZ18-103h px� 
^

Phase %s%s
101*constraints2
1 2#
!Physical Synthesis InitializationZ18-101h px� 
n
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
8Z32-721h px� 
t
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-5.6932
	-1512.273Z32-619h px� 
Z
%s*common2A
?Phase 1 Physical Synthesis Initialization | Checksum: b83d0794
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.19 ; elapsed = 00:00:00.05 . Memory (MB): peak = 2689.105 ; gain = 0.000 ; free physical = 80406 ; free virtual = 122937h px� 
t
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-5.6932
	-1512.273Z32-619h px� 
V

Phase %s%s
101*constraints2
2 2
DSP Register OptimizationZ18-101h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
R
%s*common29
7Phase 2 DSP Register Optimization | Checksum: b83d0794
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.22 ; elapsed = 00:00:00.05 . Memory (MB): peak = 2689.105 ; gain = 0.000 ; free physical = 80406 ; free virtual = 122937h px� 
W

Phase %s%s
101*constraints2
3 2
Critical Path OptimizationZ18-101h px� 
t
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-5.6932
	-1512.273Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6spi_camera/controller/read_burst_set_last_flag_reg_n_06spi_camera/controller/read_burst_set_last_flag_reg_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
@design_4/design_4_i/clk_wiz_0/inst/clk_out1_design_4_clk_wiz_0_0@design_4/design_4_i/clk_wiz_0/inst/clk_out1_design_4_clk_wiz_0_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2r
6spi_camera/controller/read_burst_set_last_flag_i_1_n_06spi_camera/controller/read_burst_set_last_flag_i_1_n_02t
7spi_camera/controller/read_burst_set_last_flag_i_1_comp	7spi_camera/controller/read_burst_set_last_flag_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6spi_camera/controller/read_burst_set_last_flag_i_3_n_06spi_camera/controller/read_burst_set_last_flag_i_3_n_08Z32-735h px� 
t
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-5.3772
	-1511.955Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2d
/spi_camera/controller/read_burst_set_last_flag0/spi_camera/controller/read_burst_set_last_flag08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
<spi_camera/controller/read_burst_set_last_flag0_carry__0_n_0<spi_camera/controller/read_burst_set_last_flag0_carry__0_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
262
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_2_n_0@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_2_n_08Z32-735h px� 
t
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-5.2472
	-1511.825Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
262
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_1_n_0@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_1_n_08Z32-735h px� 
t
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-5.1942
	-1511.772Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_2_n_0@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3spi_camera/controller/read_burst_set_last_flag1[18]3spi_camera/controller/read_burst_set_last_flag1[18]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
<spi_camera/controller/read_burst_set_last_flag1_carry__2_n_0<spi_camera/controller/read_burst_set_last_flag1_carry__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
<spi_camera/controller/read_burst_set_last_flag1_carry__1_n_0<spi_camera/controller/read_burst_set_last_flag1_carry__1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
<spi_camera/controller/read_burst_set_last_flag1_carry__0_n_0<spi_camera/controller/read_burst_set_last_flag1_carry__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2x
9spi_camera/controller/read_burst_set_last_flag1_carry_n_09spi_camera/controller/read_burst_set_last_flag1_carry_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
=spi_camera/controller/read_burst_set_last_flag1_carry_i_3_n_0=spi_camera/controller/read_burst_set_last_flag1_carry_i_3_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6spi_camera/controller/read_burst_set_last_flag_i_1_n_06spi_camera/controller/read_burst_set_last_flag_i_1_n_08Z32-702h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2`
-spi_camera/controller/fifo_length_reg_n_0_[2]-spi_camera/controller/fifo_length_reg_n_0_[2]2
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2`
-spi_camera/controller/fifo_length_reg_n_0_[2]-spi_camera/controller/fifo_length_reg_n_0_[2]8Z32-735h px� 
t
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-5.1942
	-1524.650Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2spi_camera/controller/fifo_length_reg_n_0_[2]_repN2spi_camera/controller/fifo_length_reg_n_0_[2]_repN8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6spi_camera/controller/read_burst_set_last_flag_reg_n_06spi_camera/controller/read_burst_set_last_flag_reg_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
@design_4/design_4_i/clk_wiz_0/inst/clk_out1_design_4_clk_wiz_0_0@design_4/design_4_i/clk_wiz_0/inst/clk_out1_design_4_clk_wiz_0_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2d
/spi_camera/controller/read_burst_set_last_flag0/spi_camera/controller/read_burst_set_last_flag08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_2_n_0@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3spi_camera/controller/read_burst_set_last_flag1[18]3spi_camera/controller/read_burst_set_last_flag1[18]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
=spi_camera/controller/read_burst_set_last_flag1_carry_i_3_n_0=spi_camera/controller/read_burst_set_last_flag1_carry_i_3_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6spi_camera/controller/read_burst_set_last_flag_i_1_n_06spi_camera/controller/read_burst_set_last_flag_i_1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2spi_camera/controller/fifo_length_reg_n_0_[2]_repN2spi_camera/controller/fifo_length_reg_n_0_[2]_repN8Z32-702h px� 
t
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-5.1942
	-1524.650Z32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2689.1052
0.0002
804092
122940Z17-722h px� 
S
%s*common2:
8Phase 3 Critical Path Optimization | Checksum: b83d0794
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.41 . Memory (MB): peak = 2689.105 ; gain = 0.000 ; free physical = 80409 ; free virtual = 122940h px� 
W

Phase %s%s
101*constraints2
4 2
Critical Path OptimizationZ18-101h px� 
t
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-5.1942
	-1524.650Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6spi_camera/controller/read_burst_set_last_flag_reg_n_06spi_camera/controller/read_burst_set_last_flag_reg_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
@design_4/design_4_i/clk_wiz_0/inst/clk_out1_design_4_clk_wiz_0_0@design_4/design_4_i/clk_wiz_0/inst/clk_out1_design_4_clk_wiz_0_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2d
/spi_camera/controller/read_burst_set_last_flag0/spi_camera/controller/read_burst_set_last_flag08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
<spi_camera/controller/read_burst_set_last_flag0_carry__0_n_0<spi_camera/controller/read_burst_set_last_flag0_carry__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_2_n_0@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3spi_camera/controller/read_burst_set_last_flag1[18]3spi_camera/controller/read_burst_set_last_flag1[18]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
<spi_camera/controller/read_burst_set_last_flag1_carry__2_n_0<spi_camera/controller/read_burst_set_last_flag1_carry__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
<spi_camera/controller/read_burst_set_last_flag1_carry__1_n_0<spi_camera/controller/read_burst_set_last_flag1_carry__1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
<spi_camera/controller/read_burst_set_last_flag1_carry__0_n_0<spi_camera/controller/read_burst_set_last_flag1_carry__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2x
9spi_camera/controller/read_burst_set_last_flag1_carry_n_09spi_camera/controller/read_burst_set_last_flag1_carry_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
=spi_camera/controller/read_burst_set_last_flag1_carry_i_3_n_0=spi_camera/controller/read_burst_set_last_flag1_carry_i_3_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6spi_camera/controller/read_burst_set_last_flag_i_1_n_06spi_camera/controller/read_burst_set_last_flag_i_1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2spi_camera/controller/fifo_length_reg_n_0_[2]_repN2spi_camera/controller/fifo_length_reg_n_0_[2]_repN8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6spi_camera/controller/read_burst_set_last_flag_reg_n_06spi_camera/controller/read_burst_set_last_flag_reg_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
@design_4/design_4_i/clk_wiz_0/inst/clk_out1_design_4_clk_wiz_0_0@design_4/design_4_i/clk_wiz_0/inst/clk_out1_design_4_clk_wiz_0_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2d
/spi_camera/controller/read_burst_set_last_flag0/spi_camera/controller/read_burst_set_last_flag08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_2_n_0@spi_camera/controller/read_burst_set_last_flag0_carry__0_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3spi_camera/controller/read_burst_set_last_flag1[18]3spi_camera/controller/read_burst_set_last_flag1[18]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
=spi_camera/controller/read_burst_set_last_flag1_carry_i_3_n_0=spi_camera/controller/read_burst_set_last_flag1_carry_i_3_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6spi_camera/controller/read_burst_set_last_flag_i_1_n_06spi_camera/controller/read_burst_set_last_flag_i_1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2spi_camera/controller/fifo_length_reg_n_0_[2]_repN2spi_camera/controller/fifo_length_reg_n_0_[2]_repN8Z32-702h px� 
t
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-5.1942
	-1524.650Z32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2689.1052
0.0002
804092
122939Z17-722h px� 
S
%s*common2:
8Phase 4 Critical Path Optimization | Checksum: b83d0794
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.66 . Memory (MB): peak = 2689.105 ; gain = 0.000 ; free physical = 80409 ; free virtual = 122939h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2689.1052
0.0002
804092
122939Z17-722h px� 
y
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
-5.1942
	-1524.650Z32-603h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          0.499  |        -12.377  |            1  |              0  |                     4  |           0  |           2  |  00:00:01  |
|  Total          |          0.499  |        -12.377  |            1  |              0  |                     4  |           0  |           3  |  00:00:01  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2689.1052
0.0002
804092
122939Z17-722h px� 
P
%s*common27
5Ending Physical Synthesis Task | Checksum: 25c4d0ca8
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.66 . Memory (MB): peak = 2689.105 ; gain = 0.000 ; free physical = 80409 ; free virtual = 122939h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1522
02
02
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
phys_opt_designZ4-42h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2689.1052
0.0002
804082
122939Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2
00:00:00.052
00:00:00.022

2689.1052
0.0002
804082
122939Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

2689.1052
0.0002
804082
122939Z17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote RouteStorage: 2
00:00:00.012
00:00:00.012

2689.1052
0.0002
804082
122939Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2

00:00:002

00:00:002

2689.1052
0.0002
804072
122939Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2

00:00:002

00:00:002

2689.1052
0.0002
804072
122939Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2
00:00:00.062
00:00:00.032

2689.1052
0.0002
804072
122939Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2|
z/home/petertso/Documents/753-FPGA/spi-controller-cmod-a7-2024.2/spi-controller-cmod-a7-2024.2.runs/impl_1/base_physopt.dcpZ17-1381h px� 


End Record