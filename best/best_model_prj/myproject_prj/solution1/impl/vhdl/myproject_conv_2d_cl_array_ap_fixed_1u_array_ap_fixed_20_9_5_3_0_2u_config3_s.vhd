-- ==============================================================
-- Generated by Vitis HLS v2024.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    layer2_out_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    layer2_out_empty_n : IN STD_LOGIC;
    layer2_out_read : OUT STD_LOGIC;
    layer2_out_num_data_valid : IN STD_LOGIC_VECTOR (12 downto 0);
    layer2_out_fifo_cap : IN STD_LOGIC_VECTOR (12 downto 0);
    layer3_out_din : OUT STD_LOGIC_VECTOR (39 downto 0);
    layer3_out_full_n : IN STD_LOGIC;
    layer3_out_write : OUT STD_LOGIC;
    layer3_out_num_data_valid : IN STD_LOGIC_VECTOR (10 downto 0);
    layer3_out_fifo_cap : IN STD_LOGIC_VECTOR (10 downto 0) );
end;


architecture behav of myproject_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv13_1000 : STD_LOGIC_VECTOR (12 downto 0) := "1000000000000";
    constant ap_const_lv13_1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal layer2_out_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln51_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal layer2_out_read_reg_227 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_start : STD_LOGIC;
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_done : STD_LOGIC;
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_idle : STD_LOGIC;
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_ready : STD_LOGIC;
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_layer3_out_din : STD_LOGIC_VECTOR (39 downto 0);
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_layer3_out_write : STD_LOGIC;
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_state2_ignore_call3 : BOOLEAN;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal indvar_flatten_fu_104 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    signal add_ln51_fu_206_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component myproject_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        in_elem_0_0_0_0_0_val : IN STD_LOGIC_VECTOR (7 downto 0);
        layer3_out_din : OUT STD_LOGIC_VECTOR (39 downto 0);
        layer3_out_full_n : IN STD_LOGIC;
        layer3_out_write : OUT STD_LOGIC;
        layer3_out_num_data_valid : IN STD_LOGIC_VECTOR (10 downto 0);
        layer3_out_fifo_cap : IN STD_LOGIC_VECTOR (10 downto 0) );
    end component;



begin
    grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114 : component myproject_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_start,
        ap_done => grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_done,
        ap_idle => grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_idle,
        ap_ready => grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_ready,
        in_elem_0_0_0_0_0_val => layer2_out_read_reg_227,
        layer3_out_din => grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_layer3_out_din,
        layer3_out_full_n => layer3_out_full_n,
        layer3_out_write => grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_layer3_out_write,
        layer3_out_num_data_valid => ap_const_lv11_0,
        layer3_out_fifo_cap => ap_const_lv11_0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln51_fu_200_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_state2_ignore_call3) and (icmp_ln51_fu_200_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_ready = ap_const_logic_1)) then 
                    grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((real_start = ap_const_logic_1) and (internal_ap_ready = ap_const_logic_0))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_fu_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten_fu_104 <= ap_const_lv13_0;
            elsif (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln51_fu_200_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                indvar_flatten_fu_104 <= add_ln51_fu_206_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state2) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                layer2_out_read_reg_227 <= layer2_out_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln51_fu_200_p2, ap_block_state2, grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_done, ap_CS_fsm_state3, ap_block_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_boolean_0 = ap_block_state1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln51_fu_200_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln51_fu_200_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln51_fu_206_p2 <= std_logic_vector(unsigned(indvar_flatten_fu_104) + unsigned(ap_const_lv13_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_block_state1)
    begin
        if ((ap_const_boolean_1 = ap_block_state1)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(ap_block_state2)
    begin
        if ((ap_const_boolean_1 = ap_block_state2)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state3_blk_assign_proc : process(grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_done)
    begin
        if ((grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_assign_proc : process(layer2_out_empty_n, icmp_ln51_fu_200_p2)
    begin
                ap_block_state2 <= ((icmp_ln51_fu_200_p2 = ap_const_lv1_0) and (layer2_out_empty_n = ap_const_logic_0));
    end process;


    ap_block_state2_ignore_call3_assign_proc : process(layer2_out_empty_n, icmp_ln51_fu_200_p2)
    begin
                ap_block_state2_ignore_call3 <= ((icmp_ln51_fu_200_p2 = ap_const_lv1_0) and (layer2_out_empty_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, icmp_ln51_fu_200_p2, ap_block_state2)
    begin
        if (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln51_fu_200_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_start <= grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_ap_start_reg;
    icmp_ln51_fu_200_p2 <= "1" when (indvar_flatten_fu_104 = ap_const_lv13_1000) else "0";

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln51_fu_200_p2, ap_block_state2)
    begin
        if (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln51_fu_200_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    layer2_out_blk_n_assign_proc : process(layer2_out_empty_n, ap_CS_fsm_state2, icmp_ln51_fu_200_p2)
    begin
        if (((icmp_ln51_fu_200_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            layer2_out_blk_n <= layer2_out_empty_n;
        else 
            layer2_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    layer2_out_read_assign_proc : process(ap_CS_fsm_state2, icmp_ln51_fu_200_p2, ap_block_state2)
    begin
        if (((ap_const_boolean_0 = ap_block_state2) and (icmp_ln51_fu_200_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            layer2_out_read <= ap_const_logic_1;
        else 
            layer2_out_read <= ap_const_logic_0;
        end if; 
    end process;

    layer3_out_din <= grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_layer3_out_din;
    layer3_out_write <= grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114_layer3_out_write;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((real_start = ap_const_logic_1) and (start_once_reg = ap_const_logic_0))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
