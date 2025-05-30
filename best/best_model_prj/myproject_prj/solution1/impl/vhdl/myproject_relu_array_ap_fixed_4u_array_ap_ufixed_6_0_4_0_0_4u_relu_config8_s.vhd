-- ==============================================================
-- Generated by Vitis HLS v2024.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config8_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    layer6_out_dout : IN STD_LOGIC_VECTOR (75 downto 0);
    layer6_out_empty_n : IN STD_LOGIC;
    layer6_out_read : OUT STD_LOGIC;
    layer6_out_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
    layer6_out_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
    layer8_out_din : OUT STD_LOGIC_VECTOR (23 downto 0);
    layer8_out_full_n : IN STD_LOGIC;
    layer8_out_write : OUT STD_LOGIC;
    layer8_out_num_data_valid : IN STD_LOGIC_VECTOR (8 downto 0);
    layer8_out_fifo_cap : IN STD_LOGIC_VECTOR (8 downto 0);
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC );
end;


architecture behav of myproject_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config8_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_25 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100101";
    constant ap_const_lv32_26 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100110";
    constant ap_const_lv32_38 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111000";
    constant ap_const_lv32_39 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111001";
    constant ap_const_lv32_4B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001011";
    constant ap_const_lv19_0 : STD_LOGIC_VECTOR (18 downto 0) := "0000000000000000000";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv6_3F : STD_LOGIC_VECTOR (5 downto 0) := "111111";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_1D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011101";
    constant ap_const_lv32_2A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101010";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_29 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101001";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_3D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111101";
    constant ap_const_lv32_42 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000010";
    constant ap_const_lv32_3C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111100";
    constant ap_const_lv32_3B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111011";
    constant ap_const_lv32_43 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000011";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv8_A8 : STD_LOGIC_VECTOR (7 downto 0) := "10101000";

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln41_fu_900_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal layer6_out_blk_n : STD_LOGIC;
    signal layer8_out_blk_n : STD_LOGIC;
    signal i1_fu_116 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal i_fu_894_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i1_load : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln44_fu_141_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal trunc_ln52_fu_207_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_70_fu_225_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln52_fu_211_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln52_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_68_fu_199_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln52_fu_239_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln3_fu_189_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln52_fu_245_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_s_fu_255_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln52_fu_249_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_69_fu_217_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_72_fu_271_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_tmp_92_fu_279_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln52_13_fu_265_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln52_24_fu_285_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_fu_291_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_181_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln52_fu_303_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln52_20_fu_297_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_fu_315_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln52_21_fu_309_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_20_fu_323_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln51_fu_175_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_21_fu_331_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln44_s_fu_145_p4 : STD_LOGIC_VECTOR (18 downto 0);
    signal tmp_41_fu_379_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_77_fu_403_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln52_14_fu_389_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln52_22_fu_411_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_75_fu_371_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln52_10_fu_417_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln52_s_fu_361_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln52_6_fu_423_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_42_fu_433_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln52_6_fu_427_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_76_fu_395_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_78_fu_449_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_tmp_99_fu_457_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln52_15_fu_443_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln52_26_fu_463_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_54_fu_469_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_73_fu_353_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln52_6_fu_481_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln52_23_fu_475_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_22_fu_493_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln52_24_fu_487_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_23_fu_501_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln51_6_fu_347_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_24_fu_509_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln44_1_fu_155_p4 : STD_LOGIC_VECTOR (18 downto 0);
    signal tmp_43_fu_557_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_82_fu_581_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln52_16_fu_567_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln52_25_fu_589_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_80_fu_549_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln52_11_fu_595_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln52_1_fu_539_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln52_7_fu_601_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_44_fu_611_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln52_7_fu_605_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_81_fu_573_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_83_fu_627_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_tmp_106_fu_635_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln52_17_fu_621_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln52_28_fu_641_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_55_fu_647_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_79_fu_531_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln52_7_fu_659_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln52_26_fu_653_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_25_fu_671_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln52_27_fu_665_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_26_fu_679_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln51_7_fu_525_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_27_fu_687_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal trunc_ln44_2_fu_165_p4 : STD_LOGIC_VECTOR (18 downto 0);
    signal tmp_45_fu_735_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_87_fu_759_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln52_18_fu_745_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln52_28_fu_767_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_85_fu_727_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln52_12_fu_773_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln52_2_fu_717_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln52_8_fu_779_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_46_fu_789_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln52_8_fu_783_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_86_fu_751_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_88_fu_805_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_tmp_113_fu_813_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln52_19_fu_799_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln52_30_fu_819_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_56_fu_825_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_84_fu_709_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln52_8_fu_837_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln52_29_fu_831_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_28_fu_849_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln52_30_fu_843_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_29_fu_857_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln51_8_fu_703_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln52_30_fu_865_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal out_data_8_fu_873_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal out_data_7_fu_695_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal out_data_6_fu_517_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal out_data_fu_339_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component myproject_flow_control_loop_pipe IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_U : component myproject_flow_control_loop_pipe
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => real_start,
        ap_ready => internal_ap_ready,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int,
        ap_continue => ap_continue);





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
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
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


    i1_fu_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                i1_fu_116 <= i_fu_894_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln52_6_fu_427_p2 <= std_logic_vector(unsigned(trunc_ln52_s_fu_361_p4) + unsigned(zext_ln52_6_fu_423_p1));
    add_ln52_7_fu_605_p2 <= std_logic_vector(unsigned(trunc_ln52_1_fu_539_p4) + unsigned(zext_ln52_7_fu_601_p1));
    add_ln52_8_fu_783_p2 <= std_logic_vector(unsigned(trunc_ln52_2_fu_717_p4) + unsigned(zext_ln52_8_fu_779_p1));
    add_ln52_fu_249_p2 <= std_logic_vector(unsigned(trunc_ln3_fu_189_p4) + unsigned(zext_ln52_fu_245_p1));
    and_ln52_10_fu_417_p2 <= (tmp_75_fu_371_p3 and or_ln52_22_fu_411_p2);
    and_ln52_11_fu_595_p2 <= (tmp_80_fu_549_p3 and or_ln52_25_fu_589_p2);
    and_ln52_12_fu_773_p2 <= (tmp_85_fu_727_p3 and or_ln52_28_fu_767_p2);
    and_ln52_24_fu_285_p2 <= (tmp_72_fu_271_p3 or not_tmp_92_fu_279_p2);
    and_ln52_26_fu_463_p2 <= (tmp_78_fu_449_p3 or not_tmp_99_fu_457_p2);
    and_ln52_28_fu_641_p2 <= (tmp_83_fu_627_p3 or not_tmp_106_fu_635_p2);
    and_ln52_30_fu_819_p2 <= (tmp_88_fu_805_p3 or not_tmp_113_fu_813_p2);
    and_ln52_fu_239_p2 <= (tmp_68_fu_199_p3 and or_ln52_fu_233_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_block_state1_pp0_stage0_iter0)
    begin
        if ((ap_const_boolean_1 = ap_block_state1_pp0_stage0_iter0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(layer6_out_empty_n, layer8_out_full_n, ap_done_reg, ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (layer8_out_full_n = ap_const_logic_0) or (layer6_out_empty_n = ap_const_logic_0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0, icmp_ln41_fu_900_p2)
    begin
        if (((icmp_ln41_fu_900_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_done_reg, ap_block_state1_pp0_stage0_iter0, ap_loop_exit_ready)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;
    ap_ready <= internal_ap_ready;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i1_load_assign_proc : process(ap_CS_fsm_state1, i1_fu_116, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i1_load <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_i1_load <= i1_fu_116;
        end if; 
    end process;

    empty_54_fu_469_p2 <= (icmp_ln52_15_fu_443_p2 and and_ln52_26_fu_463_p2);
    empty_55_fu_647_p2 <= (icmp_ln52_17_fu_621_p2 and and_ln52_28_fu_641_p2);
    empty_56_fu_825_p2 <= (icmp_ln52_19_fu_799_p2 and and_ln52_30_fu_819_p2);
    empty_fu_291_p2 <= (icmp_ln52_13_fu_265_p2 and and_ln52_24_fu_285_p2);
    i_fu_894_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i1_load) + unsigned(ap_const_lv8_1));
    icmp_ln41_fu_900_p2 <= "1" when (ap_sig_allocacmp_i1_load = ap_const_lv8_A8) else "0";
    icmp_ln51_6_fu_347_p2 <= "1" when (signed(trunc_ln44_s_fu_145_p4) > signed(ap_const_lv19_0)) else "0";
    icmp_ln51_7_fu_525_p2 <= "1" when (signed(trunc_ln44_1_fu_155_p4) > signed(ap_const_lv19_0)) else "0";
    icmp_ln51_8_fu_703_p2 <= "1" when (signed(trunc_ln44_2_fu_165_p4) > signed(ap_const_lv19_0)) else "0";
    icmp_ln51_fu_175_p2 <= "1" when (signed(trunc_ln44_fu_141_p1) > signed(ap_const_lv19_0)) else "0";
    icmp_ln52_13_fu_265_p2 <= "1" when (tmp_s_fu_255_p4 = ap_const_lv9_0) else "0";
    icmp_ln52_14_fu_389_p2 <= "0" when (tmp_41_fu_379_p4 = ap_const_lv3_0) else "1";
    icmp_ln52_15_fu_443_p2 <= "1" when (tmp_42_fu_433_p4 = ap_const_lv9_0) else "0";
    icmp_ln52_16_fu_567_p2 <= "0" when (tmp_43_fu_557_p4 = ap_const_lv3_0) else "1";
    icmp_ln52_17_fu_621_p2 <= "1" when (tmp_44_fu_611_p4 = ap_const_lv9_0) else "0";
    icmp_ln52_18_fu_745_p2 <= "0" when (tmp_45_fu_735_p4 = ap_const_lv3_0) else "1";
    icmp_ln52_19_fu_799_p2 <= "1" when (tmp_46_fu_789_p4 = ap_const_lv9_0) else "0";
    icmp_ln52_fu_211_p2 <= "0" when (trunc_ln52_fu_207_p1 = ap_const_lv3_0) else "1";

    layer6_out_blk_n_assign_proc : process(ap_CS_fsm_state1, layer6_out_empty_n, ap_done_reg, ap_start_int)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            layer6_out_blk_n <= layer6_out_empty_n;
        else 
            layer6_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    layer6_out_read_assign_proc : process(ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            layer6_out_read <= ap_const_logic_1;
        else 
            layer6_out_read <= ap_const_logic_0;
        end if; 
    end process;


    layer8_out_blk_n_assign_proc : process(ap_CS_fsm_state1, layer8_out_full_n, ap_done_reg, ap_start_int)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            layer8_out_blk_n <= layer8_out_full_n;
        else 
            layer8_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    layer8_out_din <= (((out_data_8_fu_873_p3 & out_data_7_fu_695_p3) & out_data_6_fu_517_p3) & out_data_fu_339_p3);

    layer8_out_write_assign_proc : process(ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            layer8_out_write <= ap_const_logic_1;
        else 
            layer8_out_write <= ap_const_logic_0;
        end if; 
    end process;

    not_tmp_106_fu_635_p2 <= (tmp_81_fu_573_p3 xor ap_const_lv1_1);
    not_tmp_113_fu_813_p2 <= (tmp_86_fu_751_p3 xor ap_const_lv1_1);
    not_tmp_92_fu_279_p2 <= (tmp_69_fu_217_p3 xor ap_const_lv1_1);
    not_tmp_99_fu_457_p2 <= (tmp_76_fu_395_p3 xor ap_const_lv1_1);
    or_ln52_20_fu_297_p2 <= (tmp_fu_181_p3 or empty_fu_291_p2);
    or_ln52_21_fu_309_p2 <= (xor_ln52_fu_303_p2 or tmp_fu_181_p3);
    or_ln52_22_fu_411_p2 <= (tmp_77_fu_403_p3 or icmp_ln52_14_fu_389_p2);
    or_ln52_23_fu_475_p2 <= (tmp_73_fu_353_p3 or empty_54_fu_469_p2);
    or_ln52_24_fu_487_p2 <= (xor_ln52_6_fu_481_p2 or tmp_73_fu_353_p3);
    or_ln52_25_fu_589_p2 <= (tmp_82_fu_581_p3 or icmp_ln52_16_fu_567_p2);
    or_ln52_26_fu_653_p2 <= (tmp_79_fu_531_p3 or empty_55_fu_647_p2);
    or_ln52_27_fu_665_p2 <= (xor_ln52_7_fu_659_p2 or tmp_79_fu_531_p3);
    or_ln52_28_fu_767_p2 <= (tmp_87_fu_759_p3 or icmp_ln52_18_fu_745_p2);
    or_ln52_29_fu_831_p2 <= (tmp_84_fu_709_p3 or empty_56_fu_825_p2);
    or_ln52_30_fu_843_p2 <= (xor_ln52_8_fu_837_p2 or tmp_84_fu_709_p3);
    or_ln52_fu_233_p2 <= (tmp_70_fu_225_p3 or icmp_ln52_fu_211_p2);
    out_data_6_fu_517_p3 <= 
        select_ln52_24_fu_509_p3 when (icmp_ln51_6_fu_347_p2(0) = '1') else 
        ap_const_lv6_0;
    out_data_7_fu_695_p3 <= 
        select_ln52_27_fu_687_p3 when (icmp_ln51_7_fu_525_p2(0) = '1') else 
        ap_const_lv6_0;
    out_data_8_fu_873_p3 <= 
        select_ln52_30_fu_865_p3 when (icmp_ln51_8_fu_703_p2(0) = '1') else 
        ap_const_lv6_0;
    out_data_fu_339_p3 <= 
        select_ln52_21_fu_331_p3 when (icmp_ln51_fu_175_p2(0) = '1') else 
        ap_const_lv6_0;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_full_n = ap_const_logic_0) and (start_once_reg = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    select_ln52_20_fu_323_p3 <= 
        select_ln52_fu_315_p3 when (or_ln52_20_fu_297_p2(0) = '1') else 
        ap_const_lv6_3F;
    select_ln52_21_fu_331_p3 <= 
        select_ln52_20_fu_323_p3 when (or_ln52_21_fu_309_p2(0) = '1') else 
        add_ln52_fu_249_p2;
    select_ln52_22_fu_493_p3 <= 
        ap_const_lv6_0 when (tmp_73_fu_353_p3(0) = '1') else 
        add_ln52_6_fu_427_p2;
    select_ln52_23_fu_501_p3 <= 
        select_ln52_22_fu_493_p3 when (or_ln52_23_fu_475_p2(0) = '1') else 
        ap_const_lv6_3F;
    select_ln52_24_fu_509_p3 <= 
        select_ln52_23_fu_501_p3 when (or_ln52_24_fu_487_p2(0) = '1') else 
        add_ln52_6_fu_427_p2;
    select_ln52_25_fu_671_p3 <= 
        ap_const_lv6_0 when (tmp_79_fu_531_p3(0) = '1') else 
        add_ln52_7_fu_605_p2;
    select_ln52_26_fu_679_p3 <= 
        select_ln52_25_fu_671_p3 when (or_ln52_26_fu_653_p2(0) = '1') else 
        ap_const_lv6_3F;
    select_ln52_27_fu_687_p3 <= 
        select_ln52_26_fu_679_p3 when (or_ln52_27_fu_665_p2(0) = '1') else 
        add_ln52_7_fu_605_p2;
    select_ln52_28_fu_849_p3 <= 
        ap_const_lv6_0 when (tmp_84_fu_709_p3(0) = '1') else 
        add_ln52_8_fu_783_p2;
    select_ln52_29_fu_857_p3 <= 
        select_ln52_28_fu_849_p3 when (or_ln52_29_fu_831_p2(0) = '1') else 
        ap_const_lv6_3F;
    select_ln52_30_fu_865_p3 <= 
        select_ln52_29_fu_857_p3 when (or_ln52_30_fu_843_p2(0) = '1') else 
        add_ln52_8_fu_783_p2;
    select_ln52_fu_315_p3 <= 
        ap_const_lv6_0 when (tmp_fu_181_p3(0) = '1') else 
        add_ln52_fu_249_p2;
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((real_start = ap_const_logic_1) and (start_once_reg = ap_const_logic_0))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_41_fu_379_p4 <= layer6_out_dout(21 downto 19);
    tmp_42_fu_433_p4 <= layer6_out_dout(37 downto 29);
    tmp_43_fu_557_p4 <= layer6_out_dout(40 downto 38);
    tmp_44_fu_611_p4 <= layer6_out_dout(56 downto 48);
    tmp_45_fu_735_p4 <= layer6_out_dout(59 downto 57);
    tmp_46_fu_789_p4 <= layer6_out_dout(75 downto 67);
    tmp_68_fu_199_p3 <= layer6_out_dout(3 downto 3);
    tmp_69_fu_217_p3 <= layer6_out_dout(9 downto 9);
    tmp_70_fu_225_p3 <= layer6_out_dout(4 downto 4);
    tmp_72_fu_271_p3 <= add_ln52_fu_249_p2(5 downto 5);
    tmp_73_fu_353_p3 <= layer6_out_dout(37 downto 37);
    tmp_75_fu_371_p3 <= layer6_out_dout(22 downto 22);
    tmp_76_fu_395_p3 <= layer6_out_dout(28 downto 28);
    tmp_77_fu_403_p3 <= layer6_out_dout(23 downto 23);
    tmp_78_fu_449_p3 <= add_ln52_6_fu_427_p2(5 downto 5);
    tmp_79_fu_531_p3 <= layer6_out_dout(56 downto 56);
    tmp_80_fu_549_p3 <= layer6_out_dout(41 downto 41);
    tmp_81_fu_573_p3 <= layer6_out_dout(47 downto 47);
    tmp_82_fu_581_p3 <= layer6_out_dout(42 downto 42);
    tmp_83_fu_627_p3 <= add_ln52_7_fu_605_p2(5 downto 5);
    tmp_84_fu_709_p3 <= layer6_out_dout(75 downto 75);
    tmp_85_fu_727_p3 <= layer6_out_dout(60 downto 60);
    tmp_86_fu_751_p3 <= layer6_out_dout(66 downto 66);
    tmp_87_fu_759_p3 <= layer6_out_dout(61 downto 61);
    tmp_88_fu_805_p3 <= add_ln52_8_fu_783_p2(5 downto 5);
    tmp_fu_181_p3 <= layer6_out_dout(18 downto 18);
    tmp_s_fu_255_p4 <= layer6_out_dout(18 downto 10);
    trunc_ln3_fu_189_p4 <= layer6_out_dout(9 downto 4);
    trunc_ln44_1_fu_155_p4 <= layer6_out_dout(56 downto 38);
    trunc_ln44_2_fu_165_p4 <= layer6_out_dout(75 downto 57);
    trunc_ln44_fu_141_p1 <= layer6_out_dout(19 - 1 downto 0);
    trunc_ln44_s_fu_145_p4 <= layer6_out_dout(37 downto 19);
    trunc_ln52_1_fu_539_p4 <= layer6_out_dout(47 downto 42);
    trunc_ln52_2_fu_717_p4 <= layer6_out_dout(66 downto 61);
    trunc_ln52_fu_207_p1 <= layer6_out_dout(3 - 1 downto 0);
    trunc_ln52_s_fu_361_p4 <= layer6_out_dout(28 downto 23);
    xor_ln52_6_fu_481_p2 <= (empty_54_fu_469_p2 xor ap_const_lv1_1);
    xor_ln52_7_fu_659_p2 <= (empty_55_fu_647_p2 xor ap_const_lv1_1);
    xor_ln52_8_fu_837_p2 <= (empty_56_fu_825_p2 xor ap_const_lv1_1);
    xor_ln52_fu_303_p2 <= (empty_fu_291_p2 xor ap_const_lv1_1);
    zext_ln52_6_fu_423_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(and_ln52_10_fu_417_p2),6));
    zext_ln52_7_fu_601_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(and_ln52_11_fu_595_p2),6));
    zext_ln52_8_fu_779_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(and_ln52_12_fu_773_p2),6));
    zext_ln52_fu_245_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(and_ln52_fu_239_p2),6));
end behav;
