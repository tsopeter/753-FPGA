-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Apr 24 21:06:40 2025
-- Host        : LAPTOP-3I9GNI1F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/GitHub/753-FPGA/spi-controller-cmod-a7/spi-controller-cmod-a7.gen/sources_1/bd/design_3/ip/design_3_ila_0_0/design_3_ila_0_0_stub.vhdl
-- Design      : design_3_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_3_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_3_ila_0_0;

architecture stub of design_3_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2023.1";
begin
end;
