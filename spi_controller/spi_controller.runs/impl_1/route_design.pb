
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xck262default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xck262default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common22
Nodegraph reading from file.  2default:default2
00:00:012default:default2 
00:00:00.9512default:default2
4023.9492default:default2
0.0002default:defaultZ17-268h px� 
[
%s*common2B
.Phase 1 Build RT Design | Checksum: 16ee2bd48
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
f
%s*common2M
9Phase 2.1 Fix Topology Constraints | Checksum: 16ee2bd48
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
_
%s*common2F
2Phase 2.2 Pre Route Cleanup | Checksum: 16ee2bd48
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
2.3 2default:default2,
Global Clock Net Routing2default:defaultZ18-101h px� 
f
%s*common2M
9Phase 2.3 Global Clock Net Routing | Checksum: 20bd4d1b5
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
[
%s*common2B
.Phase 2.4 Update Timing | Checksum: 1d543630a
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=6.991  | TNS=0.000  | WHS=-0.079 | THS=-16.835|
2default:defaultZ35-416h px� 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
]
%s*common2D
0Phase 2.5.1 Update Timing | Checksum: 1e61429c5
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=6.991  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
h
%s*common2O
;Phase 2.5 Update Timing for Bus Skew | Checksum: 16d618187
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
a
%s*common2H
4Phase 2 Router Initialization | Checksum: 1fb0d4926
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px� 
\
%s*common2C
/Phase 3.1 Global Routing | Checksum: 1fb0d4926
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
[
%s*common2B
.Phase 3 Initial Routing | Checksum: 1bbe26e38
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=5.886  | TNS=0.000  | WHS=-0.034 | THS=-0.148 |
2default:defaultZ35-416h px� 
`
%s*common2G
3Phase 4.1 Global Iteration 0 | Checksum: 2a7b17f3e
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
�

Phase %s%s
101*constraints2
4.2 2default:default21
Additional Iteration for Hold2default:defaultZ18-101h px� 
k
%s*common2R
>Phase 4.2 Additional Iteration for Hold | Checksum: 2a6e88ace
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
^
%s*common2E
1Phase 4 Rip-up And Reroute | Checksum: 2a6e88ace
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
]
%s*common2D
0Phase 5.1.1 Update Timing | Checksum: 2b4c8f939
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=5.886  | TNS=0.000  | WHS=0.012  | THS=0.000  |
2default:defaultZ35-416h px� 
r

Phase %s%s
101*constraints2
5.1.2 2default:default2!
Update Timing2default:defaultZ18-101h px� 
]
%s*common2D
0Phase 5.1.2 Update Timing | Checksum: 311b804d8
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=5.886  | TNS=0.000  | WHS=0.012  | THS=0.000  |
2default:defaultZ35-416h px� 
[
%s*common2B
.Phase 5.1 Delay CleanUp | Checksum: 2ff977be3
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
e
%s*common2L
8Phase 5.2 Clock Skew Optimization | Checksum: 2ff977be3
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
g
%s*common2N
:Phase 5 Delay and Skew Optimization | Checksum: 2ff977be3
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
]
%s*common2D
0Phase 6.1.1 Update Timing | Checksum: 2d811f965
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=5.886  | TNS=0.000  | WHS=0.012  | THS=0.000  |
2default:defaultZ35-416h px� 
[
%s*common2B
.Phase 6.1 Hold Fix Iter | Checksum: 2a916a7c9
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
Y
%s*common2@
,Phase 6 Post Hold Fix | Checksum: 2a916a7c9
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
Z
%s*common2A
-Phase 7 Route finalize | Checksum: 332f83fd0
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
a
%s*common2H
4Phase 8 Verifying routed nets | Checksum: 332f83fd0
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
]
%s*common2D
0Phase 9 Depositing Routes | Checksum: 332f83fd0
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
o

Phase %s%s
101*constraints2
10 2default:default2!
Resolve XTalk2default:defaultZ18-101h px� 
Z
%s*common2A
-Phase 10 Resolve XTalk | Checksum: 332f83fd0
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
11 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=5.886  | TNS=0.000  | WHS=0.012  | THS=0.000  |
2default:defaultZ35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
_
%s*common2F
2Phase 11 Post Router Timing | Checksum: 332f83fd0
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
}

Phase %s%s
101*constraints2
12 2default:default2/
Post-Route Event Processing2default:defaultZ18-101h px� 
h
%s*common2O
;Phase 12 Post-Route Event Processing | Checksum: 1047248f7
2default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 4023.949 ; gain = 0.0002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1202default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:152default:default2
00:00:152default:default2
4023.9492default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2u
aExecuting : report_drc -file base_drc_routed.rpt -pb base_drc_routed.pb -rpx base_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2h
Treport_drc -file base_drc_routed.rpt -pb base_drc_routed.pb -rpx base_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
PD:/GitHub/753-FPGA/spi_controller/spi_controller.runs/impl_1/base_drc_routed.rptPD:/GitHub/753-FPGA/spi_controller/spi_controller.runs/impl_1/base_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file base_methodology_drc_routed.rpt -pb base_methodology_drc_routed.pb -rpx base_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file base_methodology_drc_routed.rpt -pb base_methodology_drc_routed.pb -rpx base_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
\D:/GitHub/753-FPGA/spi_controller/spi_controller.runs/impl_1/base_methodology_drc_routed.rpt\D:/GitHub/753-FPGA/spi_controller/spi_controller.runs/impl_1/base_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
%s4*runtcl2�
qExecuting : report_power -file base_power_routed.rpt -pb base_power_summary_routed.pb -rpx base_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2x
dreport_power -file base_power_routed.rpt -pb base_power_summary_routed.pb -rpx base_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1302default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:082default:default2
00:00:072default:default2
4023.9492default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2i
UExecuting : report_route_status -file base_route_status.rpt -pb base_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -report_unconstrained -file base_timing_summary_routed.rpt -pb base_timing_summary_routed.pb -rpx base_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2Q
= Speed grade: -2LV, Temperature grade: C, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px� 
}
%s4*runtcl2a
MExecuting : report_incremental_reuse -file base_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
}
%s4*runtcl2a
MExecuting : report_clock_utilization -file base_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file base_bus_skew_routed.rpt -pb base_bus_skew_routed.pb -rpx base_bus_skew_routed.rpx
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2Q
= Speed grade: -2LV, Temperature grade: C, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2 
00:00:00.5862default:default2
4023.9492default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2`
LD:/GitHub/753-FPGA/spi_controller/spi_controller.runs/impl_1/base_routed.dcp2default:defaultZ17-1381h px� 


End Record