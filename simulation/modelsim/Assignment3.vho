-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "04/04/2024 17:40:17"

-- 
-- Device: Altera 5CEBA2F17A7 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FP_Adder IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Sum : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END FP_Adder;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FP_Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \easywin~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \conditions~2_combout\ : std_logic;
SIGNAL \conditions~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \conditions~1_combout\ : std_logic;
SIGNAL \easywin~2_combout\ : std_logic;
SIGNAL \easywin~3_combout\ : std_logic;
SIGNAL \conditions~3_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \mantb2~5_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \manta2~5_combout\ : std_logic;
SIGNAL \manta2~3_combout\ : std_logic;
SIGNAL \manta2~4_combout\ : std_logic;
SIGNAL \mantb2~3_combout\ : std_logic;
SIGNAL \mantb2~4_combout\ : std_logic;
SIGNAL \manta2~0_combout\ : std_logic;
SIGNAL \manta2~1_combout\ : std_logic;
SIGNAL \manta2~2_combout\ : std_logic;
SIGNAL \mantb2~1_combout\ : std_logic;
SIGNAL \mantb2~0_combout\ : std_logic;
SIGNAL \mantb2~2_combout\ : std_logic;
SIGNAL \Add3~22_cout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \easywin~1_combout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add6~22_cout\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \sum_e2[0]~0_combout\ : std_logic;
SIGNAL \sum_mant1[1]~2_combout\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \sum_mant1[2]~8_combout\ : std_logic;
SIGNAL \sum_mant1[2]~7_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \sum_mant1[2]~9_combout\ : std_logic;
SIGNAL \sum_mant1[2]~6_combout\ : std_logic;
SIGNAL \sum_mant1[2]~10_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \sum_mant1[1]~1_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \sum_mant1[1]~3_combout\ : std_logic;
SIGNAL \sum_mant1[1]~22_combout\ : std_logic;
SIGNAL \sum_e1~0_combout\ : std_logic;
SIGNAL \sum_e1[0]~3_combout\ : std_logic;
SIGNAL \sum_e1[1]~1_combout\ : std_logic;
SIGNAL \sum_e1[1]~2_combout\ : std_logic;
SIGNAL \sum_e2[1]~3_combout\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \sum_mant1~17_combout\ : std_logic;
SIGNAL \summing~0_combout\ : std_logic;
SIGNAL \sum_mant1~19_combout\ : std_logic;
SIGNAL \mantb2~6_combout\ : std_logic;
SIGNAL \manta2~6_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \sum_mant1~15_combout\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \sum_mant1~16_combout\ : std_logic;
SIGNAL \sum_mant1[4]~20_combout\ : std_logic;
SIGNAL \sum_mant1[0]~4_combout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \sum_mant1[0]~5_combout\ : std_logic;
SIGNAL \sum_mant1[0]~21_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \sum_mant1[3]~23_combout\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \sum_mant1[3]~13_combout\ : std_logic;
SIGNAL \sum_mant1[0]~24_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \sum_mant1[3]~25_combout\ : std_logic;
SIGNAL \Sum_E~0_combout\ : std_logic;
SIGNAL \sum_e2[1]~4_combout\ : std_logic;
SIGNAL \sum_mant1~18_combout\ : std_logic;
SIGNAL \sum_mant1[1]~0_combout\ : std_logic;
SIGNAL \sum_e2[3]~1_combout\ : std_logic;
SIGNAL \sum_mant1[3]~11_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \sum_mant1[3]~12_combout\ : std_logic;
SIGNAL \sum_mant1[3]~14_combout\ : std_logic;
SIGNAL \sum_e2[0]~2_combout\ : std_logic;
SIGNAL \Sum~0_combout\ : std_logic;
SIGNAL \Sum~1_combout\ : std_logic;
SIGNAL \Sum~25_combout\ : std_logic;
SIGNAL \sum_e1[2]~4_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \sum_e2[3]~5_combout\ : std_logic;
SIGNAL \sum_e2[2]~9_combout\ : std_logic;
SIGNAL \sum_e2[3]~7_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \sum_e1[3]~5_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \sum_e2[3]~8_combout\ : std_logic;
SIGNAL \sum_e2[2]~12_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \sum_e2[3]~6_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Sum~2_combout\ : std_logic;
SIGNAL \Sum~3_combout\ : std_logic;
SIGNAL \Sum~4_combout\ : std_logic;
SIGNAL \Sum~5_combout\ : std_logic;
SIGNAL \Sum~6_combout\ : std_logic;
SIGNAL \Sum~8_combout\ : std_logic;
SIGNAL \sum_mant1[3]~26_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Sum~9_combout\ : std_logic;
SIGNAL \Sum~11_combout\ : std_logic;
SIGNAL \sum_mant2[1]~0_combout\ : std_logic;
SIGNAL \Sum~7_combout\ : std_logic;
SIGNAL \Sum~10_combout\ : std_logic;
SIGNAL \Sum~12_combout\ : std_logic;
SIGNAL \sum_mant2[2]~1_combout\ : std_logic;
SIGNAL \Sum~13_combout\ : std_logic;
SIGNAL \Sum~14_combout\ : std_logic;
SIGNAL \Sum~15_combout\ : std_logic;
SIGNAL \sum_e2[2]~10_combout\ : std_logic;
SIGNAL \Sum~16_combout\ : std_logic;
SIGNAL \sum_e2[3]~11_combout\ : std_logic;
SIGNAL \Sum~17_combout\ : std_logic;
SIGNAL \Sum~18_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Sum~22_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Sum~21_combout\ : std_logic;
SIGNAL \Sum~19_combout\ : std_logic;
SIGNAL \Sum~20_combout\ : std_logic;
SIGNAL \Sum~23_combout\ : std_logic;
SIGNAL \Sum~24_combout\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sum~25_combout\ : std_logic;
SIGNAL \ALT_INV_mantb2~6_combout\ : std_logic;
SIGNAL \ALT_INV_manta2~6_combout\ : std_logic;
SIGNAL \ALT_INV_mantb2~5_combout\ : std_logic;
SIGNAL \ALT_INV_manta2~5_combout\ : std_logic;
SIGNAL \ALT_INV_mantb2~4_combout\ : std_logic;
SIGNAL \ALT_INV_mantb2~3_combout\ : std_logic;
SIGNAL \ALT_INV_manta2~4_combout\ : std_logic;
SIGNAL \ALT_INV_manta2~3_combout\ : std_logic;
SIGNAL \ALT_INV_mantb2~2_combout\ : std_logic;
SIGNAL \ALT_INV_mantb2~1_combout\ : std_logic;
SIGNAL \ALT_INV_mantb2~0_combout\ : std_logic;
SIGNAL \ALT_INV_manta2~2_combout\ : std_logic;
SIGNAL \ALT_INV_manta2~1_combout\ : std_logic;
SIGNAL \ALT_INV_manta2~0_combout\ : std_logic;
SIGNAL \ALT_INV_easywin~3_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~23_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~20_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~19_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~18_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[3]~11_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant2[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~11_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~10_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~9_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[3]~26_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~7_combout\ : std_logic;
SIGNAL \ALT_INV_easywin~2_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~6_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~5_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~4_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~3_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant2[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~1_combout\ : std_logic;
SIGNAL \ALT_INV_Sum~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[3]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Add9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[3]~7_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[3]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[3]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Add10~1_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e1[3]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Add10~0_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e1[2]~4_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e1[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e1[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Sum_E~0_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[3]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~1_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[0]~24_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[3]~23_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[1]~22_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[0]~21_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[4]~20_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1~19_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e1[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1~18_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1~17_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1~16_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1~15_combout\ : std_logic;
SIGNAL \ALT_INV_summing~0_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[3]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~0_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[3]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~2_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[2]~8_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[2]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sum_mant1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_conditions~3_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_easywin~1_combout\ : std_logic;
SIGNAL \ALT_INV_conditions~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_conditions~1_combout\ : std_logic;
SIGNAL \ALT_INV_conditions~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_easywin~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_sum_e2[2]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
Sum <= ww_Sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_Sum~25_combout\ <= NOT \Sum~25_combout\;
\ALT_INV_mantb2~6_combout\ <= NOT \mantb2~6_combout\;
\ALT_INV_manta2~6_combout\ <= NOT \manta2~6_combout\;
\ALT_INV_mantb2~5_combout\ <= NOT \mantb2~5_combout\;
\ALT_INV_manta2~5_combout\ <= NOT \manta2~5_combout\;
\ALT_INV_mantb2~4_combout\ <= NOT \mantb2~4_combout\;
\ALT_INV_mantb2~3_combout\ <= NOT \mantb2~3_combout\;
\ALT_INV_manta2~4_combout\ <= NOT \manta2~4_combout\;
\ALT_INV_manta2~3_combout\ <= NOT \manta2~3_combout\;
\ALT_INV_mantb2~2_combout\ <= NOT \mantb2~2_combout\;
\ALT_INV_mantb2~1_combout\ <= NOT \mantb2~1_combout\;
\ALT_INV_mantb2~0_combout\ <= NOT \mantb2~0_combout\;
\ALT_INV_manta2~2_combout\ <= NOT \manta2~2_combout\;
\ALT_INV_manta2~1_combout\ <= NOT \manta2~1_combout\;
\ALT_INV_manta2~0_combout\ <= NOT \manta2~0_combout\;
\ALT_INV_easywin~3_combout\ <= NOT \easywin~3_combout\;
\ALT_INV_Sum~23_combout\ <= NOT \Sum~23_combout\;
\ALT_INV_Sum~22_combout\ <= NOT \Sum~22_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Sum~21_combout\ <= NOT \Sum~21_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_Sum~20_combout\ <= NOT \Sum~20_combout\;
\ALT_INV_Sum~19_combout\ <= NOT \Sum~19_combout\;
\ALT_INV_Sum~18_combout\ <= NOT \Sum~18_combout\;
\ALT_INV_sum_e2[3]~11_combout\ <= NOT \sum_e2[3]~11_combout\;
\ALT_INV_sum_e2[2]~10_combout\ <= NOT \sum_e2[2]~10_combout\;
\ALT_INV_sum_mant2[2]~1_combout\ <= NOT \sum_mant2[2]~1_combout\;
\ALT_INV_Sum~11_combout\ <= NOT \Sum~11_combout\;
\ALT_INV_Sum~10_combout\ <= NOT \Sum~10_combout\;
\ALT_INV_Sum~9_combout\ <= NOT \Sum~9_combout\;
\ALT_INV_Sum~8_combout\ <= NOT \Sum~8_combout\;
\ALT_INV_Equal6~2_combout\ <= NOT \Equal6~2_combout\;
\ALT_INV_sum_mant1[3]~26_combout\ <= NOT \sum_mant1[3]~26_combout\;
\ALT_INV_Sum~7_combout\ <= NOT \Sum~7_combout\;
\ALT_INV_easywin~2_combout\ <= NOT \easywin~2_combout\;
\ALT_INV_Sum~6_combout\ <= NOT \Sum~6_combout\;
\ALT_INV_Sum~5_combout\ <= NOT \Sum~5_combout\;
\ALT_INV_Sum~4_combout\ <= NOT \Sum~4_combout\;
\ALT_INV_Sum~3_combout\ <= NOT \Sum~3_combout\;
\ALT_INV_sum_mant2[1]~0_combout\ <= NOT \sum_mant2[1]~0_combout\;
\ALT_INV_Sum~1_combout\ <= NOT \Sum~1_combout\;
\ALT_INV_Sum~0_combout\ <= NOT \Sum~0_combout\;
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_sum_e2[2]~9_combout\ <= NOT \sum_e2[2]~9_combout\;
\ALT_INV_sum_e2[3]~8_combout\ <= NOT \sum_e2[3]~8_combout\;
\ALT_INV_Add9~0_combout\ <= NOT \Add9~0_combout\;
\ALT_INV_Equal6~1_combout\ <= NOT \Equal6~1_combout\;
\ALT_INV_sum_e2[3]~7_combout\ <= NOT \sum_e2[3]~7_combout\;
\ALT_INV_sum_e2[3]~6_combout\ <= NOT \sum_e2[3]~6_combout\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_sum_e2[3]~5_combout\ <= NOT \sum_e2[3]~5_combout\;
\ALT_INV_Add10~1_combout\ <= NOT \Add10~1_combout\;
\ALT_INV_sum_e1[3]~5_combout\ <= NOT \sum_e1[3]~5_combout\;
\ALT_INV_Add10~0_combout\ <= NOT \Add10~0_combout\;
\ALT_INV_sum_e1[2]~4_combout\ <= NOT \sum_e1[2]~4_combout\;
\ALT_INV_sum_e2[1]~4_combout\ <= NOT \sum_e2[1]~4_combout\;
\ALT_INV_sum_e2[1]~3_combout\ <= NOT \sum_e2[1]~3_combout\;
\ALT_INV_sum_e1[0]~3_combout\ <= NOT \sum_e1[0]~3_combout\;
\ALT_INV_sum_e1[1]~2_combout\ <= NOT \sum_e1[1]~2_combout\;
\ALT_INV_Sum_E~0_combout\ <= NOT \Sum_E~0_combout\;
\ALT_INV_sum_mant1[3]~25_combout\ <= NOT \sum_mant1[3]~25_combout\;
\ALT_INV_Add8~1_combout\ <= NOT \Add8~1_combout\;
\ALT_INV_sum_mant1[0]~24_combout\ <= NOT \sum_mant1[0]~24_combout\;
\ALT_INV_sum_mant1[3]~23_combout\ <= NOT \sum_mant1[3]~23_combout\;
\ALT_INV_sum_mant1[1]~22_combout\ <= NOT \sum_mant1[1]~22_combout\;
\ALT_INV_sum_mant1[0]~21_combout\ <= NOT \sum_mant1[0]~21_combout\;
\ALT_INV_sum_mant1[4]~20_combout\ <= NOT \sum_mant1[4]~20_combout\;
\ALT_INV_sum_mant1~19_combout\ <= NOT \sum_mant1~19_combout\;
\ALT_INV_sum_e1[1]~1_combout\ <= NOT \sum_e1[1]~1_combout\;
\ALT_INV_sum_e2[0]~2_combout\ <= NOT \sum_e2[0]~2_combout\;
\ALT_INV_sum_mant1~18_combout\ <= NOT \sum_mant1~18_combout\;
\ALT_INV_sum_mant1~17_combout\ <= NOT \sum_mant1~17_combout\;
\ALT_INV_sum_mant1~16_combout\ <= NOT \sum_mant1~16_combout\;
\ALT_INV_sum_mant1~15_combout\ <= NOT \sum_mant1~15_combout\;
\ALT_INV_summing~0_combout\ <= NOT \summing~0_combout\;
\ALT_INV_sum_mant1[3]~14_combout\ <= NOT \sum_mant1[3]~14_combout\;
\ALT_INV_sum_mant1[3]~13_combout\ <= NOT \sum_mant1[3]~13_combout\;
\ALT_INV_sum_mant1[3]~12_combout\ <= NOT \sum_mant1[3]~12_combout\;
\ALT_INV_Add8~0_combout\ <= NOT \Add8~0_combout\;
\ALT_INV_sum_mant1[3]~11_combout\ <= NOT \sum_mant1[3]~11_combout\;
\ALT_INV_Add5~2_combout\ <= NOT \Add5~2_combout\;
\ALT_INV_sum_mant1[2]~10_combout\ <= NOT \sum_mant1[2]~10_combout\;
\ALT_INV_sum_mant1[2]~9_combout\ <= NOT \sum_mant1[2]~9_combout\;
\ALT_INV_sum_mant1[2]~8_combout\ <= NOT \sum_mant1[2]~8_combout\;
\ALT_INV_sum_mant1[2]~7_combout\ <= NOT \sum_mant1[2]~7_combout\;
\ALT_INV_Add5~1_combout\ <= NOT \Add5~1_combout\;
\ALT_INV_sum_mant1[2]~6_combout\ <= NOT \sum_mant1[2]~6_combout\;
\ALT_INV_sum_e2[3]~1_combout\ <= NOT \sum_e2[3]~1_combout\;
\ALT_INV_sum_mant1[0]~5_combout\ <= NOT \sum_mant1[0]~5_combout\;
\ALT_INV_sum_mant1[0]~4_combout\ <= NOT \sum_mant1[0]~4_combout\;
\ALT_INV_sum_mant1[1]~3_combout\ <= NOT \sum_mant1[1]~3_combout\;
\ALT_INV_sum_mant1[1]~2_combout\ <= NOT \sum_mant1[1]~2_combout\;
\ALT_INV_sum_mant1[1]~1_combout\ <= NOT \sum_mant1[1]~1_combout\;
\ALT_INV_sum_mant1[1]~0_combout\ <= NOT \sum_mant1[1]~0_combout\;
\ALT_INV_Add5~0_combout\ <= NOT \Add5~0_combout\;
\ALT_INV_sum_e2[0]~0_combout\ <= NOT \sum_e2[0]~0_combout\;
\ALT_INV_conditions~3_combout\ <= NOT \conditions~3_combout\;
\ALT_INV_sum_e1~0_combout\ <= NOT \sum_e1~0_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_easywin~1_combout\ <= NOT \easywin~1_combout\;
\ALT_INV_conditions~2_combout\ <= NOT \conditions~2_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_conditions~1_combout\ <= NOT \conditions~1_combout\;
\ALT_INV_conditions~0_combout\ <= NOT \conditions~0_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_easywin~0_combout\ <= NOT \easywin~0_combout\;
\ALT_INV_Equal5~0_combout\ <= NOT \Equal5~0_combout\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_sum_e2[2]~12_combout\ <= NOT \sum_e2[2]~12_combout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add6~17_sumout\ <= NOT \Add6~17_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add6~13_sumout\ <= NOT \Add6~13_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add6~9_sumout\ <= NOT \Add6~9_sumout\;
\ALT_INV_Add6~5_sumout\ <= NOT \Add6~5_sumout\;
\ALT_INV_Add6~1_sumout\ <= NOT \Add6~1_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;

-- Location: IOOBUF_X54_Y17_N22
\Sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~2_combout\,
	devoe => ww_devoe,
	o => ww_Sum(0));

-- Location: IOOBUF_X0_Y21_N5
\Sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~12_combout\,
	devoe => ww_devoe,
	o => ww_Sum(1));

-- Location: IOOBUF_X54_Y18_N96
\Sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~13_combout\,
	devoe => ww_devoe,
	o => ww_Sum(2));

-- Location: IOOBUF_X14_Y0_N36
\Sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~14_combout\,
	devoe => ww_devoe,
	o => ww_Sum(3));

-- Location: IOOBUF_X11_Y0_N36
\Sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~15_combout\,
	devoe => ww_devoe,
	o => ww_Sum(4));

-- Location: IOOBUF_X10_Y0_N42
\Sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~16_combout\,
	devoe => ww_devoe,
	o => ww_Sum(5));

-- Location: IOOBUF_X12_Y0_N53
\Sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~17_combout\,
	devoe => ww_devoe,
	o => ww_Sum(6));

-- Location: IOOBUF_X14_Y0_N19
\Sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~24_combout\,
	devoe => ww_devoe,
	o => ww_Sum(7));

-- Location: IOIBUF_X0_Y19_N38
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X0_Y20_N21
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y19_N21
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X0_Y18_N95
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X5_Y19_N9
\Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ( !\B[6]~input_o\ & ( (!\B[4]~input_o\ & (!\B[3]~input_o\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: IOIBUF_X0_Y19_N4
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y18_N61
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y18_N78
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y19_N55
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X5_Y19_N3
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( !\A[3]~input_o\ & ( (!\A[6]~input_o\ & (!\A[5]~input_o\ & !\A[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: MLABCELL_X4_Y19_N3
\easywin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \easywin~0_combout\ = (!\Equal5~0_combout\ & !\Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal5~0_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	combout => \easywin~0_combout\);

-- Location: IOIBUF_X0_Y21_N55
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X0_Y20_N55
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X54_Y19_N21
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N44
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: MLABCELL_X4_Y19_N48
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\A[1]~input_o\ & (!\A[0]~input_o\ & !\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X5_Y19_N12
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \A[6]~input_o\ & ( (\A[5]~input_o\ & (\A[4]~input_o\ & \A[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X4_Y19_N57
\conditions~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conditions~2_combout\ = ( \Equal0~0_combout\ & ( \Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \conditions~2_combout\);

-- Location: LABCELL_X5_Y19_N15
\conditions~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conditions~0_combout\ = ( \B[3]~input_o\ & ( (\B[4]~input_o\ & (\B[5]~input_o\ & \B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \conditions~0_combout\);

-- Location: IOIBUF_X0_Y20_N38
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N21
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y20_N4
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: MLABCELL_X4_Y19_N39
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & !\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: MLABCELL_X4_Y19_N42
\conditions~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conditions~1_combout\ = (\conditions~0_combout\ & \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conditions~0_combout\,
	datab => \ALT_INV_Equal3~0_combout\,
	combout => \conditions~1_combout\);

-- Location: MLABCELL_X4_Y19_N18
\easywin~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \easywin~2_combout\ = ( \conditions~1_combout\ ) # ( !\conditions~1_combout\ & ( (!\easywin~0_combout\) # ((!\A[7]~input_o\ & \conditions~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111010101010101111101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_easywin~0_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_conditions~2_combout\,
	dataf => \ALT_INV_conditions~1_combout\,
	combout => \easywin~2_combout\);

-- Location: MLABCELL_X4_Y19_N54
\easywin~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \easywin~3_combout\ = ( \Equal3~0_combout\ & ( (\Equal1~0_combout\ & (\Equal0~0_combout\ & ((\conditions~0_combout\) # (\A[7]~input_o\)))) ) ) # ( !\Equal3~0_combout\ & ( (\Equal1~0_combout\ & (\Equal0~0_combout\ & \A[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_conditions~0_combout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \easywin~3_combout\);

-- Location: MLABCELL_X4_Y19_N45
\conditions~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conditions~3_combout\ = ( \Equal1~0_combout\ & ( (\conditions~0_combout\ & !\Equal3~0_combout\) ) ) # ( !\Equal1~0_combout\ & ( ((\conditions~0_combout\ & !\Equal3~0_combout\)) # (\Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conditions~0_combout\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \conditions~3_combout\);

-- Location: LABCELL_X1_Y18_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\A[3]~input_o\ $ (!\B[3]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !\A[3]~input_o\ $ (!\B[3]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add0~3\ = SHARE((!\B[3]~input_o\) # (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

-- Location: LABCELL_X1_Y18_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\A[4]~input_o\ $ (\B[4]~input_o\) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\A[4]~input_o\ $ (\B[4]~input_o\) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE((\A[4]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: LABCELL_X1_Y18_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\B[5]~input_o\ $ (\A[5]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\B[5]~input_o\ $ (\A[5]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((!\B[5]~input_o\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: LABCELL_X1_Y18_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\B[6]~input_o\ $ (\A[6]~input_o\) ) + ( \Add0~11\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\);

-- Location: LABCELL_X5_Y19_N6
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\B[4]~input_o\ & (((!\B[3]~input_o\ & \A[3]~input_o\)) # (\A[4]~input_o\))) # (\B[4]~input_o\ & (!\B[3]~input_o\ & (\A[4]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010001110000010101000111000001010100011100000101010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X5_Y19_N0
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( \LessThan2~0_combout\ & ( (!\A[6]~input_o\ & (!\B[6]~input_o\ & ((!\B[5]~input_o\) # (\A[5]~input_o\)))) # (\A[6]~input_o\ & (((!\B[6]~input_o\) # (!\B[5]~input_o\)) # (\A[5]~input_o\))) ) ) # ( !\LessThan2~0_combout\ & ( 
-- (!\A[6]~input_o\ & (\A[5]~input_o\ & (!\B[6]~input_o\ & !\B[5]~input_o\))) # (\A[6]~input_o\ & ((!\B[6]~input_o\) # ((\A[5]~input_o\ & !\B[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101010000011100010101000011110101011100011111010101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X1_Y18_N24
\mantb2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mantb2~5_combout\ = ( \LessThan2~1_combout\ & ( \B[2]~input_o\ & ( (!\Add0~13_sumout\ & (!\Add0~5_sumout\ & !\Add0~9_sumout\)) ) ) ) # ( !\LessThan2~1_combout\ & ( \B[2]~input_o\ ) ) # ( \LessThan2~1_combout\ & ( !\B[2]~input_o\ & ( (\Add0~1_sumout\ & 
-- (!\Add0~13_sumout\ & (!\Add0~5_sumout\ & !\Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000011111111111111111100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_LessThan2~1_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \mantb2~5_combout\);

-- Location: LABCELL_X5_Y19_N30
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~3\ = SHARE((!\A[3]~input_o\) # (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

-- Location: LABCELL_X5_Y19_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\B[4]~input_o\ $ (\A[4]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\B[4]~input_o\ $ (\A[4]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~7\ = SHARE((\B[4]~input_o\ & !\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

-- Location: LABCELL_X5_Y19_N36
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\A[5]~input_o\ $ (\B[5]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\A[5]~input_o\ $ (\B[5]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((!\A[5]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

-- Location: LABCELL_X5_Y19_N39
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\);

-- Location: LABCELL_X5_Y19_N54
\manta2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \manta2~5_combout\ = ( \Add1~9_sumout\ & ( \Add1~13_sumout\ & ( (\LessThan2~1_combout\ & \A[2]~input_o\) ) ) ) # ( !\Add1~9_sumout\ & ( \Add1~13_sumout\ & ( (\LessThan2~1_combout\ & \A[2]~input_o\) ) ) ) # ( \Add1~9_sumout\ & ( !\Add1~13_sumout\ & ( 
-- (\LessThan2~1_combout\ & \A[2]~input_o\) ) ) ) # ( !\Add1~9_sumout\ & ( !\Add1~13_sumout\ & ( (!\LessThan2~1_combout\ & (!\Add1~5_sumout\ & ((\Add1~1_sumout\) # (\A[2]~input_o\)))) # (\LessThan2~1_combout\ & (\A[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000110110001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~1_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_Add1~9_sumout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \manta2~5_combout\);

-- Location: LABCELL_X5_Y19_N51
\manta2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \manta2~3_combout\ = ( \A[2]~input_o\ & ( !\Add1~5_sumout\ $ (!\Add1~1_sumout\) ) ) # ( !\A[2]~input_o\ & ( (\Add1~5_sumout\ & !\Add1~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datab => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \manta2~3_combout\);

-- Location: LABCELL_X5_Y19_N18
\manta2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \manta2~4_combout\ = ( \LessThan2~1_combout\ & ( \manta2~3_combout\ & ( \A[1]~input_o\ ) ) ) # ( !\LessThan2~1_combout\ & ( \manta2~3_combout\ & ( (!\Add1~9_sumout\ & !\Add1~13_sumout\) ) ) ) # ( \LessThan2~1_combout\ & ( !\manta2~3_combout\ & ( 
-- \A[1]~input_o\ ) ) ) # ( !\LessThan2~1_combout\ & ( !\manta2~3_combout\ & ( (\A[1]~input_o\ & (!\Add1~1_sumout\ & (!\Add1~9_sumout\ & !\Add1~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010101010101010111110000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~13_sumout\,
	datae => \ALT_INV_LessThan2~1_combout\,
	dataf => \ALT_INV_manta2~3_combout\,
	combout => \manta2~4_combout\);

-- Location: LABCELL_X1_Y18_N33
\mantb2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mantb2~3_combout\ = ( \B[2]~input_o\ & ( !\Add0~1_sumout\ $ (!\Add0~5_sumout\) ) ) # ( !\B[2]~input_o\ & ( (!\Add0~1_sumout\ & \Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \mantb2~3_combout\);

-- Location: LABCELL_X1_Y18_N48
\mantb2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mantb2~4_combout\ = ( !\LessThan2~1_combout\ & ( \Add0~13_sumout\ & ( \B[1]~input_o\ ) ) ) # ( \LessThan2~1_combout\ & ( !\Add0~13_sumout\ & ( (!\Add0~9_sumout\ & (((!\Add0~1_sumout\ & \B[1]~input_o\)) # (\mantb2~3_combout\))) ) ) ) # ( 
-- !\LessThan2~1_combout\ & ( !\Add0~13_sumout\ & ( \B[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001011110000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_mantb2~3_combout\,
	datad => \ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_LessThan2~1_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \mantb2~4_combout\);

-- Location: LABCELL_X5_Y19_N48
\manta2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \manta2~0_combout\ = ( \A[2]~input_o\ & ( ((\Add1~1_sumout\ & \A[1]~input_o\)) # (\Add1~5_sumout\) ) ) # ( !\A[2]~input_o\ & ( (\Add1~1_sumout\ & ((\A[1]~input_o\) # (\Add1~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \manta2~0_combout\);

-- Location: LABCELL_X5_Y19_N24
\manta2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \manta2~1_combout\ = ( !\Add1~13_sumout\ & ( (!\Add1~9_sumout\ & (!\Add1~1_sumout\ & !\Add1~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_Add1~5_sumout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \manta2~1_combout\);

-- Location: LABCELL_X5_Y19_N42
\manta2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \manta2~2_combout\ = ( \LessThan2~1_combout\ & ( \A[0]~input_o\ ) ) # ( !\LessThan2~1_combout\ & ( \A[0]~input_o\ & ( ((!\Add1~9_sumout\ & (!\Add1~13_sumout\ & \manta2~0_combout\))) # (\manta2~1_combout\) ) ) ) # ( !\LessThan2~1_combout\ & ( 
-- !\A[0]~input_o\ & ( (!\Add1~9_sumout\ & (!\Add1~13_sumout\ & \manta2~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000001000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Add1~13_sumout\,
	datac => \ALT_INV_manta2~0_combout\,
	datad => \ALT_INV_manta2~1_combout\,
	datae => \ALT_INV_LessThan2~1_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \manta2~2_combout\);

-- Location: LABCELL_X1_Y18_N36
\mantb2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mantb2~1_combout\ = ( !\Add0~9_sumout\ & ( (!\Add0~1_sumout\ & (!\Add0~13_sumout\ & !\Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \mantb2~1_combout\);

-- Location: LABCELL_X1_Y18_N30
\mantb2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mantb2~0_combout\ = ( \B[2]~input_o\ & ( ((\Add0~1_sumout\ & \B[1]~input_o\)) # (\Add0~5_sumout\) ) ) # ( !\B[2]~input_o\ & ( (\Add0~1_sumout\ & ((\B[1]~input_o\) # (\Add0~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \mantb2~0_combout\);

-- Location: LABCELL_X1_Y18_N42
\mantb2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mantb2~2_combout\ = ( \LessThan2~1_combout\ & ( \Add0~13_sumout\ & ( (\B[0]~input_o\ & \mantb2~1_combout\) ) ) ) # ( !\LessThan2~1_combout\ & ( \Add0~13_sumout\ & ( \B[0]~input_o\ ) ) ) # ( \LessThan2~1_combout\ & ( !\Add0~13_sumout\ & ( (!\B[0]~input_o\ 
-- & (!\Add0~9_sumout\ & ((\mantb2~0_combout\)))) # (\B[0]~input_o\ & (((!\Add0~9_sumout\ & \mantb2~0_combout\)) # (\mantb2~1_combout\))) ) ) ) # ( !\LessThan2~1_combout\ & ( !\Add0~13_sumout\ & ( \B[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000001011100110101010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_mantb2~1_combout\,
	datad => \ALT_INV_mantb2~0_combout\,
	datae => \ALT_INV_LessThan2~1_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \mantb2~2_combout\);

-- Location: LABCELL_X6_Y18_N42
\Add3~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add3~22_cout\);

-- Location: LABCELL_X6_Y18_N45
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( (!\conditions~3_combout\ & (!\easywin~2_combout\ & (!\easywin~3_combout\ & \manta2~2_combout\))) ) + ( (((!\mantb2~2_combout\) # (\easywin~3_combout\)) # (\easywin~2_combout\)) # (\conditions~3_combout\) ) + ( \Add3~22_cout\ ))
-- \Add3~2\ = CARRY(( (!\conditions~3_combout\ & (!\easywin~2_combout\ & (!\easywin~3_combout\ & \manta2~2_combout\))) ) + ( (((!\mantb2~2_combout\) # (\easywin~3_combout\)) # (\easywin~2_combout\)) # (\conditions~3_combout\) ) + ( \Add3~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conditions~3_combout\,
	datab => \ALT_INV_easywin~2_combout\,
	datac => \ALT_INV_easywin~3_combout\,
	datad => \ALT_INV_manta2~2_combout\,
	dataf => \ALT_INV_mantb2~2_combout\,
	cin => \Add3~22_cout\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: LABCELL_X6_Y18_N48
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( (!\easywin~2_combout\ & (!\easywin~3_combout\ & (!\conditions~3_combout\ & \manta2~4_combout\))) ) + ( (((!\mantb2~4_combout\) # (\conditions~3_combout\)) # (\easywin~3_combout\)) # (\easywin~2_combout\) ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( (!\easywin~2_combout\ & (!\easywin~3_combout\ & (!\conditions~3_combout\ & \manta2~4_combout\))) ) + ( (((!\mantb2~4_combout\) # (\conditions~3_combout\)) # (\easywin~3_combout\)) # (\easywin~2_combout\) ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_easywin~2_combout\,
	datab => \ALT_INV_easywin~3_combout\,
	datac => \ALT_INV_conditions~3_combout\,
	datad => \ALT_INV_manta2~4_combout\,
	dataf => \ALT_INV_mantb2~4_combout\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X6_Y18_N51
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( (((!\mantb2~5_combout\) # (\conditions~3_combout\)) # (\easywin~3_combout\)) # (\easywin~2_combout\) ) + ( (!\easywin~2_combout\ & (!\easywin~3_combout\ & (!\conditions~3_combout\ & \manta2~5_combout\))) ) + ( \Add3~6\ ))
-- \Add3~14\ = CARRY(( (((!\mantb2~5_combout\) # (\conditions~3_combout\)) # (\easywin~3_combout\)) # (\easywin~2_combout\) ) + ( (!\easywin~2_combout\ & (!\easywin~3_combout\ & (!\conditions~3_combout\ & \manta2~5_combout\))) ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111100000000000000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_easywin~2_combout\,
	datab => \ALT_INV_easywin~3_combout\,
	datac => \ALT_INV_conditions~3_combout\,
	datad => \ALT_INV_mantb2~5_combout\,
	dataf => \ALT_INV_manta2~5_combout\,
	cin => \Add3~6\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X10_Y18_N45
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = ( \Add3~5_sumout\ & ( !\Add3~13_sumout\ ) ) # ( !\Add3~5_sumout\ & ( !\Add3~13_sumout\ $ (!\Add3~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~13_sumout\,
	datab => \ALT_INV_Add3~1_sumout\,
	dataf => \ALT_INV_Add3~5_sumout\,
	combout => \Add5~1_combout\);

-- Location: MLABCELL_X4_Y19_N30
\easywin~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \easywin~1_combout\ = ( \conditions~1_combout\ ) # ( !\conditions~1_combout\ & ( (!\easywin~0_combout\) # (\conditions~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_easywin~0_combout\,
	datab => \ALT_INV_conditions~2_combout\,
	dataf => \ALT_INV_conditions~1_combout\,
	combout => \easywin~1_combout\);

-- Location: LABCELL_X6_Y18_N54
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( (((\LessThan2~1_combout\ & !\mantb2~1_combout\)) # (\conditions~3_combout\)) # (\easywin~1_combout\) ) + ( (!\easywin~1_combout\ & (!\conditions~3_combout\ & ((\manta2~1_combout\) # (\LessThan2~1_combout\)))) ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( (((\LessThan2~1_combout\ & !\mantb2~1_combout\)) # (\conditions~3_combout\)) # (\easywin~1_combout\) ) + ( (!\easywin~1_combout\ & (!\conditions~3_combout\ & ((\manta2~1_combout\) # (\LessThan2~1_combout\)))) ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111110101111100000000000000000111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_easywin~1_combout\,
	datab => \ALT_INV_LessThan2~1_combout\,
	datac => \ALT_INV_conditions~3_combout\,
	datad => \ALT_INV_mantb2~1_combout\,
	dataf => \ALT_INV_manta2~1_combout\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: LABCELL_X6_Y18_N57
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( VCC ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add3~18\,
	sumout => \Add3~9_sumout\);

-- Location: IOIBUF_X0_Y21_N38
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X6_Y18_N18
\Add6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Add6~22_cout\);

-- Location: LABCELL_X6_Y18_N21
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( (((!\manta2~2_combout\) # (\easywin~3_combout\)) # (\easywin~2_combout\)) # (\conditions~3_combout\) ) + ( (!\conditions~3_combout\ & (!\easywin~2_combout\ & (!\easywin~3_combout\ & \mantb2~2_combout\))) ) + ( \Add6~22_cout\ ))
-- \Add6~6\ = CARRY(( (((!\manta2~2_combout\) # (\easywin~3_combout\)) # (\easywin~2_combout\)) # (\conditions~3_combout\) ) + ( (!\conditions~3_combout\ & (!\easywin~2_combout\ & (!\easywin~3_combout\ & \mantb2~2_combout\))) ) + ( \Add6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111100000000000000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conditions~3_combout\,
	datab => \ALT_INV_easywin~2_combout\,
	datac => \ALT_INV_easywin~3_combout\,
	datad => \ALT_INV_manta2~2_combout\,
	dataf => \ALT_INV_mantb2~2_combout\,
	cin => \Add6~22_cout\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: LABCELL_X6_Y18_N24
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( (((!\manta2~4_combout\) # (\easywin~2_combout\)) # (\easywin~3_combout\)) # (\conditions~3_combout\) ) + ( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \mantb2~4_combout\))) ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( (((!\manta2~4_combout\) # (\easywin~2_combout\)) # (\easywin~3_combout\)) # (\conditions~3_combout\) ) + ( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \mantb2~4_combout\))) ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111100000000000000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conditions~3_combout\,
	datab => \ALT_INV_easywin~3_combout\,
	datac => \ALT_INV_easywin~2_combout\,
	datad => \ALT_INV_manta2~4_combout\,
	dataf => \ALT_INV_mantb2~4_combout\,
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: LABCELL_X6_Y18_N27
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \mantb2~5_combout\))) ) + ( (((!\manta2~5_combout\) # (\easywin~2_combout\)) # (\easywin~3_combout\)) # (\conditions~3_combout\) ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \mantb2~5_combout\))) ) + ( (((!\manta2~5_combout\) # (\easywin~2_combout\)) # (\easywin~3_combout\)) # (\conditions~3_combout\) ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conditions~3_combout\,
	datab => \ALT_INV_easywin~3_combout\,
	datac => \ALT_INV_easywin~2_combout\,
	datad => \ALT_INV_mantb2~5_combout\,
	dataf => \ALT_INV_manta2~5_combout\,
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: LABCELL_X6_Y18_N30
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( (!\easywin~1_combout\ & (!\conditions~3_combout\ & ((!\LessThan2~1_combout\) # (\mantb2~1_combout\)))) ) + ( (((!\LessThan2~1_combout\ & !\manta2~1_combout\)) # (\conditions~3_combout\)) # (\easywin~1_combout\) ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( (!\easywin~1_combout\ & (!\conditions~3_combout\ & ((!\LessThan2~1_combout\) # (\mantb2~1_combout\)))) ) + ( (((!\LessThan2~1_combout\ & !\manta2~1_combout\)) # (\conditions~3_combout\)) # (\easywin~1_combout\) ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001010000000000000000000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_easywin~1_combout\,
	datab => \ALT_INV_LessThan2~1_combout\,
	datac => \ALT_INV_conditions~3_combout\,
	datad => \ALT_INV_mantb2~1_combout\,
	dataf => \ALT_INV_manta2~1_combout\,
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: LABCELL_X6_Y18_N33
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add6~18\,
	sumout => \Add6~1_sumout\);

-- Location: MLABCELL_X4_Y19_N33
\sum_e2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[0]~0_combout\ = (\easywin~0_combout\ & (!\conditions~2_combout\ & (!\conditions~1_combout\ & !\conditions~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_easywin~0_combout\,
	datab => \ALT_INV_conditions~2_combout\,
	datac => \ALT_INV_conditions~1_combout\,
	datad => \ALT_INV_conditions~3_combout\,
	combout => \sum_e2[0]~0_combout\);

-- Location: MLABCELL_X9_Y18_N9
\sum_mant1[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[1]~2_combout\ = ( \A[7]~input_o\ & ( (!\B[7]~input_o\ & (\Add6~1_sumout\ & \sum_e2[0]~0_combout\)) ) ) # ( !\A[7]~input_o\ & ( (!\Add3~9_sumout\ & (\B[7]~input_o\ & \sum_e2[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~9_sumout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_Add6~1_sumout\,
	datad => \ALT_INV_sum_e2[0]~0_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \sum_mant1[1]~2_combout\);

-- Location: MLABCELL_X9_Y18_N24
\sum_mant1[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[2]~8_combout\ = ( \B[7]~input_o\ & ( \Add6~5_sumout\ & ( (\Add3~9_sumout\ & (!\Add6~13_sumout\ & !\A[7]~input_o\)) ) ) ) # ( !\B[7]~input_o\ & ( \Add6~5_sumout\ & ( (!\Add6~13_sumout\ & \A[7]~input_o\) ) ) ) # ( \B[7]~input_o\ & ( 
-- !\Add6~5_sumout\ & ( (\Add3~9_sumout\ & (!\A[7]~input_o\ & (!\Add6~13_sumout\ $ (!\Add6~9_sumout\)))) ) ) ) # ( !\B[7]~input_o\ & ( !\Add6~5_sumout\ & ( (\A[7]~input_o\ & (!\Add6~13_sumout\ $ (!\Add6~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000100000100000000001100000011000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~9_sumout\,
	datab => \ALT_INV_Add6~13_sumout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_Add6~9_sumout\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_Add6~5_sumout\,
	combout => \sum_mant1[2]~8_combout\);

-- Location: LABCELL_X10_Y18_N18
\sum_mant1[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[2]~7_combout\ = ( \Add3~13_sumout\ & ( (!\B[7]~input_o\ & ((!\A[7]~input_o\))) # (\B[7]~input_o\ & ((!\Add3~9_sumout\) # (\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110010101011110111001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_Add3~13_sumout\,
	combout => \sum_mant1[2]~7_combout\);

-- Location: LABCELL_X6_Y18_N0
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( (!\easywin~2_combout\ & (!\conditions~3_combout\ & (!\easywin~3_combout\ & \manta2~2_combout\))) ) + ( (!\easywin~2_combout\ & (!\conditions~3_combout\ & (!\easywin~3_combout\ & \mantb2~2_combout\))) ) + ( !VCC ))
-- \Add2~6\ = CARRY(( (!\easywin~2_combout\ & (!\conditions~3_combout\ & (!\easywin~3_combout\ & \manta2~2_combout\))) ) + ( (!\easywin~2_combout\ & (!\conditions~3_combout\ & (!\easywin~3_combout\ & \mantb2~2_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111100000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_easywin~2_combout\,
	datab => \ALT_INV_conditions~3_combout\,
	datac => \ALT_INV_easywin~3_combout\,
	datad => \ALT_INV_manta2~2_combout\,
	dataf => \ALT_INV_mantb2~2_combout\,
	cin => GND,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X6_Y18_N3
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( (!\easywin~2_combout\ & (!\conditions~3_combout\ & (!\easywin~3_combout\ & \manta2~4_combout\))) ) + ( (!\easywin~2_combout\ & (!\conditions~3_combout\ & (!\easywin~3_combout\ & \mantb2~4_combout\))) ) + ( \Add2~6\ ))
-- \Add2~2\ = CARRY(( (!\easywin~2_combout\ & (!\conditions~3_combout\ & (!\easywin~3_combout\ & \manta2~4_combout\))) ) + ( (!\easywin~2_combout\ & (!\conditions~3_combout\ & (!\easywin~3_combout\ & \mantb2~4_combout\))) ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111100000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_easywin~2_combout\,
	datab => \ALT_INV_conditions~3_combout\,
	datac => \ALT_INV_easywin~3_combout\,
	datad => \ALT_INV_manta2~4_combout\,
	dataf => \ALT_INV_mantb2~4_combout\,
	cin => \Add2~6\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X6_Y18_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \manta2~5_combout\))) ) + ( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \mantb2~5_combout\))) ) + ( \Add2~2\ ))
-- \Add2~10\ = CARRY(( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \manta2~5_combout\))) ) + ( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \mantb2~5_combout\))) ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111100000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conditions~3_combout\,
	datab => \ALT_INV_easywin~3_combout\,
	datac => \ALT_INV_easywin~2_combout\,
	datad => \ALT_INV_manta2~5_combout\,
	dataf => \ALT_INV_mantb2~5_combout\,
	cin => \Add2~2\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: MLABCELL_X9_Y18_N30
\sum_mant1[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[2]~9_combout\ = ( \Add6~13_sumout\ & ( \Add2~9_sumout\ & ( (\sum_e2[0]~0_combout\ & ((!\A[7]~input_o\ & (!\B[7]~input_o\)) # (\A[7]~input_o\ & ((!\Add6~1_sumout\) # (\B[7]~input_o\))))) ) ) ) # ( !\Add6~13_sumout\ & ( \Add2~9_sumout\ & ( 
-- (\sum_e2[0]~0_combout\ & (!\A[7]~input_o\ $ (\B[7]~input_o\))) ) ) ) # ( \Add6~13_sumout\ & ( !\Add2~9_sumout\ & ( (\A[7]~input_o\ & (!\B[7]~input_o\ & (\sum_e2[0]~0_combout\ & !\Add6~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000001001000010010000110100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_sum_e2[0]~0_combout\,
	datad => \ALT_INV_Add6~1_sumout\,
	datae => \ALT_INV_Add6~13_sumout\,
	dataf => \ALT_INV_Add2~9_sumout\,
	combout => \sum_mant1[2]~9_combout\);

-- Location: MLABCELL_X9_Y18_N6
\sum_mant1[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[2]~6_combout\ = ( !\A[7]~input_o\ & ( (\Add3~9_sumout\ & (\B[7]~input_o\ & \sum_e2[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~9_sumout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_sum_e2[0]~0_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \sum_mant1[2]~6_combout\);

-- Location: MLABCELL_X9_Y18_N36
\sum_mant1[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[2]~10_combout\ = ( !\sum_mant1[2]~9_combout\ & ( \sum_mant1[2]~6_combout\ & ( (!\Add5~1_combout\ & ((!\sum_mant1[1]~2_combout\) # ((!\sum_mant1[2]~8_combout\ & !\sum_mant1[2]~7_combout\)))) ) ) ) # ( !\sum_mant1[2]~9_combout\ & ( 
-- !\sum_mant1[2]~6_combout\ & ( (!\sum_mant1[1]~2_combout\) # ((!\sum_mant1[2]~8_combout\ & !\sum_mant1[2]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100000000000000000010101000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~1_combout\,
	datab => \ALT_INV_sum_mant1[1]~2_combout\,
	datac => \ALT_INV_sum_mant1[2]~8_combout\,
	datad => \ALT_INV_sum_mant1[2]~7_combout\,
	datae => \ALT_INV_sum_mant1[2]~9_combout\,
	dataf => \ALT_INV_sum_mant1[2]~6_combout\,
	combout => \sum_mant1[2]~10_combout\);

-- Location: LABCELL_X10_Y18_N30
\Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = !\Add3~5_sumout\ $ (!\Add3~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_Add3~1_sumout\,
	combout => \Add5~0_combout\);

-- Location: LABCELL_X10_Y18_N6
\sum_mant1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[1]~1_combout\ = ( \A[7]~input_o\ & ( \Add6~5_sumout\ & ( (!\B[7]~input_o\ & (!\Add6~9_sumout\)) # (\B[7]~input_o\ & ((\Add3~5_sumout\))) ) ) ) # ( !\A[7]~input_o\ & ( \Add6~5_sumout\ & ( (!\Add3~9_sumout\ & (((\Add3~5_sumout\)))) # 
-- (\Add3~9_sumout\ & ((!\B[7]~input_o\ & ((\Add3~5_sumout\))) # (\B[7]~input_o\ & (!\Add6~9_sumout\)))) ) ) ) # ( \A[7]~input_o\ & ( !\Add6~5_sumout\ & ( (!\B[7]~input_o\ & (\Add6~9_sumout\)) # (\B[7]~input_o\ & ((\Add3~5_sumout\))) ) ) ) # ( 
-- !\A[7]~input_o\ & ( !\Add6~5_sumout\ & ( (!\Add3~9_sumout\ & (((\Add3~5_sumout\)))) # (\Add3~9_sumout\ & ((!\B[7]~input_o\ & ((\Add3~5_sumout\))) # (\B[7]~input_o\ & (\Add6~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111101010100000101111100000010111111101010000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~9_sumout\,
	datab => \ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_Add6~5_sumout\,
	combout => \sum_mant1[1]~1_combout\);

-- Location: MLABCELL_X9_Y18_N12
\sum_mant1[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[1]~3_combout\ = ( \Add6~9_sumout\ & ( \Add2~1_sumout\ & ( (\sum_e2[0]~0_combout\ & ((!\B[7]~input_o\ & ((!\A[7]~input_o\) # (!\Add6~1_sumout\))) # (\B[7]~input_o\ & (\A[7]~input_o\)))) ) ) ) # ( !\Add6~9_sumout\ & ( \Add2~1_sumout\ & ( 
-- (\sum_e2[0]~0_combout\ & (!\B[7]~input_o\ $ (\A[7]~input_o\))) ) ) ) # ( \Add6~9_sumout\ & ( !\Add2~1_sumout\ & ( (\sum_e2[0]~0_combout\ & (!\B[7]~input_o\ & (\A[7]~input_o\ & !\Add6~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000001000001010000010100010101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e2[0]~0_combout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_Add6~1_sumout\,
	datae => \ALT_INV_Add6~9_sumout\,
	dataf => \ALT_INV_Add2~1_sumout\,
	combout => \sum_mant1[1]~3_combout\);

-- Location: MLABCELL_X9_Y18_N18
\sum_mant1[1]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[1]~22_combout\ = ( !\sum_mant1[1]~3_combout\ & ( (!\Add5~0_combout\ & (((!\sum_mant1[1]~1_combout\) # (!\sum_mant1[1]~2_combout\)))) # (\Add5~0_combout\ & (!\sum_mant1[2]~6_combout\ & ((!\sum_mant1[1]~1_combout\) # 
-- (!\sum_mant1[1]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~0_combout\,
	datab => \ALT_INV_sum_mant1[2]~6_combout\,
	datac => \ALT_INV_sum_mant1[1]~1_combout\,
	datad => \ALT_INV_sum_mant1[1]~2_combout\,
	dataf => \ALT_INV_sum_mant1[1]~3_combout\,
	combout => \sum_mant1[1]~22_combout\);

-- Location: LABCELL_X2_Y18_N36
\sum_e1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e1~0_combout\ = ( \A[3]~input_o\ & ( (\B[3]~input_o\) # (\LessThan2~1_combout\) ) ) # ( !\A[3]~input_o\ & ( (!\LessThan2~1_combout\ & \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan2~1_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	combout => \sum_e1~0_combout\);

-- Location: LABCELL_X7_Y18_N15
\sum_e1[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e1[0]~3_combout\ = (\sum_e2[0]~0_combout\ & \sum_e1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_sum_e1~0_combout\,
	combout => \sum_e1[0]~3_combout\);

-- Location: LABCELL_X2_Y18_N18
\sum_e1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e1[1]~1_combout\ = ( \LessThan2~1_combout\ & ( \A[4]~input_o\ ) ) # ( !\LessThan2~1_combout\ & ( \B[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_LessThan2~1_combout\,
	combout => \sum_e1[1]~1_combout\);

-- Location: LABCELL_X7_Y18_N12
\sum_e1[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e1[1]~2_combout\ = (\sum_e2[0]~0_combout\ & \sum_e1[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_sum_e1[1]~1_combout\,
	combout => \sum_e1[1]~2_combout\);

-- Location: MLABCELL_X4_Y18_N33
\sum_e2[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[1]~3_combout\ = !\sum_e1[1]~2_combout\ $ (((!\sum_mant1[2]~10_combout\ & ((\sum_e1[0]~3_combout\))) # (\sum_mant1[2]~10_combout\ & (\sum_mant1[1]~22_combout\ & !\sum_e1[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010100011010111001010001101011100101000110101110010100011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[2]~10_combout\,
	datab => \ALT_INV_sum_mant1[1]~22_combout\,
	datac => \ALT_INV_sum_e1[0]~3_combout\,
	datad => \ALT_INV_sum_e1[1]~2_combout\,
	combout => \sum_e2[1]~3_combout\);

-- Location: MLABCELL_X9_Y18_N42
\sum_mant1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1~17_combout\ = ( !\B[7]~input_o\ & ( !\Add6~5_sumout\ & ( (!\Add6~17_sumout\ & (!\Add6~13_sumout\ & (\A[7]~input_o\ & !\Add6~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~17_sumout\,
	datab => \ALT_INV_Add6~13_sumout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_Add6~9_sumout\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_Add6~5_sumout\,
	combout => \sum_mant1~17_combout\);

-- Location: LABCELL_X7_Y18_N36
\summing~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \summing~0_combout\ = ( \B[7]~input_o\ & ( !\A[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	combout => \summing~0_combout\);

-- Location: LABCELL_X7_Y18_N24
\sum_mant1~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1~19_combout\ = ( \Add3~9_sumout\ & ( \summing~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_summing~0_combout\,
	datae => \ALT_INV_Add3~9_sumout\,
	combout => \sum_mant1~19_combout\);

-- Location: LABCELL_X1_Y18_N39
\mantb2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mantb2~6_combout\ = ( \Add0~5_sumout\ & ( !\LessThan2~1_combout\ ) ) # ( !\Add0~5_sumout\ & ( (!\LessThan2~1_combout\) # ((!\Add0~1_sumout\ & (!\Add0~13_sumout\ & !\Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110000000111111111000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_LessThan2~1_combout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \mantb2~6_combout\);

-- Location: LABCELL_X5_Y19_N27
\manta2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \manta2~6_combout\ = ( \Add1~5_sumout\ & ( \LessThan2~1_combout\ ) ) # ( !\Add1~5_sumout\ & ( ((!\Add1~9_sumout\ & (!\Add1~1_sumout\ & !\Add1~13_sumout\))) # (\LessThan2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011111111100000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_Add1~13_sumout\,
	datad => \ALT_INV_LessThan2~1_combout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \manta2~6_combout\);

-- Location: LABCELL_X6_Y18_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \mantb2~6_combout\))) ) + ( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \manta2~6_combout\))) ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \mantb2~6_combout\))) ) + ( (!\conditions~3_combout\ & (!\easywin~3_combout\ & (!\easywin~2_combout\ & \manta2~6_combout\))) ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111100000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conditions~3_combout\,
	datab => \ALT_INV_easywin~3_combout\,
	datac => \ALT_INV_easywin~2_combout\,
	datad => \ALT_INV_mantb2~6_combout\,
	dataf => \ALT_INV_manta2~6_combout\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X6_Y18_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( GND ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\);

-- Location: LABCELL_X7_Y18_N42
\sum_mant1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1~15_combout\ = (\Add2~17_sumout\ & (!\A[7]~input_o\ $ (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001100000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_Add2~17_sumout\,
	combout => \sum_mant1~15_combout\);

-- Location: LABCELL_X10_Y18_N36
\sum_mant1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1~16_combout\ = ( !\A[7]~input_o\ & ( \B[7]~input_o\ & ( (!\Add3~17_sumout\ & (!\Add3~5_sumout\ & (!\Add3~13_sumout\ & !\Add3~1_sumout\))) ) ) ) # ( \A[7]~input_o\ & ( !\B[7]~input_o\ & ( (!\Add3~17_sumout\ & (!\Add3~5_sumout\ & 
-- (!\Add3~13_sumout\ & !\Add3~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~17_sumout\,
	datab => \ALT_INV_Add3~5_sumout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_Add3~1_sumout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \sum_mant1~16_combout\);

-- Location: LABCELL_X7_Y18_N0
\sum_mant1[4]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[4]~20_combout\ = ( \Add6~1_sumout\ & ( \sum_mant1~16_combout\ & ( (\sum_e2[0]~0_combout\ & (((\sum_mant1~15_combout\) # (\sum_mant1~19_combout\)) # (\sum_mant1~17_combout\))) ) ) ) # ( !\Add6~1_sumout\ & ( \sum_mant1~16_combout\ & ( 
-- (\sum_e2[0]~0_combout\ & ((\sum_mant1~15_combout\) # (\sum_mant1~19_combout\))) ) ) ) # ( \Add6~1_sumout\ & ( !\sum_mant1~16_combout\ & ( (\sum_e2[0]~0_combout\ & ((\sum_mant1~15_combout\) # (\sum_mant1~17_combout\))) ) ) ) # ( !\Add6~1_sumout\ & ( 
-- !\sum_mant1~16_combout\ & ( (\sum_e2[0]~0_combout\ & \sum_mant1~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000100010011001100000011001100110001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1~17_combout\,
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_sum_mant1~19_combout\,
	datad => \ALT_INV_sum_mant1~15_combout\,
	datae => \ALT_INV_Add6~1_sumout\,
	dataf => \ALT_INV_sum_mant1~16_combout\,
	combout => \sum_mant1[4]~20_combout\);

-- Location: LABCELL_X7_Y18_N30
\sum_mant1[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[0]~4_combout\ = ( \Add6~1_sumout\ & ( \Add3~1_sumout\ & ( (\sum_e2[0]~0_combout\ & ((!\A[7]~input_o\ & ((\B[7]~input_o\))) # (\A[7]~input_o\ & (\Add6~5_sumout\ & !\B[7]~input_o\)))) ) ) ) # ( !\Add6~1_sumout\ & ( \Add3~1_sumout\ & ( 
-- (!\A[7]~input_o\ & (\B[7]~input_o\ & \sum_e2[0]~0_combout\)) ) ) ) # ( \Add6~1_sumout\ & ( !\Add3~1_sumout\ & ( (\Add6~5_sumout\ & (\A[7]~input_o\ & (!\B[7]~input_o\ & \sum_e2[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000011000000000000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~5_sumout\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_sum_e2[0]~0_combout\,
	datae => \ALT_INV_Add6~1_sumout\,
	dataf => \ALT_INV_Add3~1_sumout\,
	combout => \sum_mant1[0]~4_combout\);

-- Location: MLABCELL_X9_Y18_N15
\sum_mant1[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[0]~5_combout\ = ( \Add6~5_sumout\ & ( \Add2~5_sumout\ & ( (\sum_e2[0]~0_combout\ & ((!\B[7]~input_o\ & ((!\Add6~1_sumout\) # (!\A[7]~input_o\))) # (\B[7]~input_o\ & ((\A[7]~input_o\))))) ) ) ) # ( !\Add6~5_sumout\ & ( \Add2~5_sumout\ & ( 
-- (\sum_e2[0]~0_combout\ & (!\B[7]~input_o\ $ (\A[7]~input_o\))) ) ) ) # ( \Add6~5_sumout\ & ( !\Add2~5_sumout\ & ( (\sum_e2[0]~0_combout\ & (!\B[7]~input_o\ & (!\Add6~1_sumout\ & \A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000001000100000100010100010001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e2[0]~0_combout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_Add6~1_sumout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_Add6~5_sumout\,
	dataf => \ALT_INV_Add2~5_sumout\,
	combout => \sum_mant1[0]~5_combout\);

-- Location: MLABCELL_X9_Y18_N21
\sum_mant1[0]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[0]~21_combout\ = ( !\sum_mant1[0]~5_combout\ & ( !\sum_mant1[0]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sum_mant1[0]~4_combout\,
	dataf => \ALT_INV_sum_mant1[0]~5_combout\,
	combout => \sum_mant1[0]~21_combout\);

-- Location: LABCELL_X10_Y18_N42
\Add5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = ( \Add3~5_sumout\ & ( !\Add3~17_sumout\ ) ) # ( !\Add3~5_sumout\ & ( !\Add3~17_sumout\ $ (((!\Add3~13_sumout\ & !\Add3~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~13_sumout\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add3~17_sumout\,
	dataf => \ALT_INV_Add3~5_sumout\,
	combout => \Add5~2_combout\);

-- Location: LABCELL_X7_Y18_N9
\sum_mant1[3]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[3]~23_combout\ = ( \Add3~9_sumout\ & ( \Add5~2_combout\ & ( (\B[7]~input_o\ & (\sum_e2[0]~0_combout\ & !\A[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_Add3~9_sumout\,
	dataf => \ALT_INV_Add5~2_combout\,
	combout => \sum_mant1[3]~23_combout\);

-- Location: MLABCELL_X9_Y18_N33
\sum_mant1[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[3]~13_combout\ = ( \Add6~17_sumout\ & ( \Add2~13_sumout\ & ( (\sum_e2[0]~0_combout\ & ((!\A[7]~input_o\ & (!\B[7]~input_o\)) # (\A[7]~input_o\ & ((!\Add6~1_sumout\) # (\B[7]~input_o\))))) ) ) ) # ( !\Add6~17_sumout\ & ( \Add2~13_sumout\ & ( 
-- (\sum_e2[0]~0_combout\ & (!\A[7]~input_o\ $ (\B[7]~input_o\))) ) ) ) # ( \Add6~17_sumout\ & ( !\Add2~13_sumout\ & ( (\A[7]~input_o\ & (!\B[7]~input_o\ & (!\Add6~1_sumout\ & \sum_e2[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000100110010000000011011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_Add6~1_sumout\,
	datad => \ALT_INV_sum_e2[0]~0_combout\,
	datae => \ALT_INV_Add6~17_sumout\,
	dataf => \ALT_INV_Add2~13_sumout\,
	combout => \sum_mant1[3]~13_combout\);

-- Location: MLABCELL_X9_Y18_N3
\sum_mant1[0]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[0]~24_combout\ = ( \A[7]~input_o\ & ( !\B[7]~input_o\ ) ) # ( !\A[7]~input_o\ & ( (\Add3~9_sumout\ & \B[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~9_sumout\,
	datab => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \sum_mant1[0]~24_combout\);

-- Location: LABCELL_X10_Y18_N12
\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_combout\ = ( !\Add6~5_sumout\ & ( (!\Add6~13_sumout\ & !\Add6~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add6~13_sumout\,
	datac => \ALT_INV_Add6~9_sumout\,
	dataf => \ALT_INV_Add6~5_sumout\,
	combout => \Add8~1_combout\);

-- Location: LABCELL_X10_Y18_N48
\sum_mant1[3]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[3]~25_combout\ = ( \Add6~17_sumout\ & ( \Add8~1_combout\ & ( (!\sum_mant1[3]~13_combout\ & ((!\sum_mant1[1]~2_combout\) # ((!\Add3~17_sumout\ & !\sum_mant1[0]~24_combout\)))) ) ) ) # ( !\Add6~17_sumout\ & ( \Add8~1_combout\ & ( 
-- (!\sum_mant1[3]~13_combout\ & ((!\sum_mant1[1]~2_combout\) # ((!\Add3~17_sumout\) # (\sum_mant1[0]~24_combout\)))) ) ) ) # ( \Add6~17_sumout\ & ( !\Add8~1_combout\ & ( (!\sum_mant1[3]~13_combout\ & ((!\sum_mant1[1]~2_combout\) # ((!\Add3~17_sumout\) # 
-- (\sum_mant1[0]~24_combout\)))) ) ) ) # ( !\Add6~17_sumout\ & ( !\Add8~1_combout\ & ( (!\sum_mant1[3]~13_combout\ & ((!\sum_mant1[1]~2_combout\) # ((!\Add3~17_sumout\ & !\sum_mant1[0]~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000110010001100110011001000110011001100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[1]~2_combout\,
	datab => \ALT_INV_sum_mant1[3]~13_combout\,
	datac => \ALT_INV_Add3~17_sumout\,
	datad => \ALT_INV_sum_mant1[0]~24_combout\,
	datae => \ALT_INV_Add6~17_sumout\,
	dataf => \ALT_INV_Add8~1_combout\,
	combout => \sum_mant1[3]~25_combout\);

-- Location: MLABCELL_X4_Y18_N30
\Sum_E~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum_E~0_combout\ = ( \sum_mant1[3]~25_combout\ & ( (!\sum_mant1[3]~23_combout\ & ((!\sum_mant1[2]~10_combout\) # ((!\sum_mant1[1]~22_combout\) # (!\sum_mant1[0]~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[2]~10_combout\,
	datab => \ALT_INV_sum_mant1[1]~22_combout\,
	datac => \ALT_INV_sum_mant1[0]~21_combout\,
	datad => \ALT_INV_sum_mant1[3]~23_combout\,
	dataf => \ALT_INV_sum_mant1[3]~25_combout\,
	combout => \Sum_E~0_combout\);

-- Location: MLABCELL_X4_Y18_N6
\sum_e2[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[1]~4_combout\ = ( \sum_mant1[4]~20_combout\ & ( \Sum_E~0_combout\ & ( (\sum_e2[0]~0_combout\ & (!\sum_e1~0_combout\ $ (!\sum_e1[1]~1_combout\))) ) ) ) # ( !\sum_mant1[4]~20_combout\ & ( \Sum_E~0_combout\ & ( (\sum_e2[1]~3_combout\ & 
-- \sum_e2[0]~0_combout\) ) ) ) # ( \sum_mant1[4]~20_combout\ & ( !\Sum_E~0_combout\ & ( (\sum_e2[0]~0_combout\ & (!\sum_e1~0_combout\ $ (!\sum_e1[1]~1_combout\))) ) ) ) # ( !\sum_mant1[4]~20_combout\ & ( !\Sum_E~0_combout\ & ( (\sum_e1[1]~1_combout\ & 
-- \sum_e2[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000011110000000000010101010000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e2[1]~3_combout\,
	datab => \ALT_INV_sum_e1~0_combout\,
	datac => \ALT_INV_sum_e1[1]~1_combout\,
	datad => \ALT_INV_sum_e2[0]~0_combout\,
	datae => \ALT_INV_sum_mant1[4]~20_combout\,
	dataf => \ALT_INV_Sum_E~0_combout\,
	combout => \sum_e2[1]~4_combout\);

-- Location: LABCELL_X7_Y18_N18
\sum_mant1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1~18_combout\ = ( \Add3~9_sumout\ & ( \sum_mant1~16_combout\ & ( (((\sum_mant1~17_combout\ & \Add6~1_sumout\)) # (\sum_mant1~15_combout\)) # (\summing~0_combout\) ) ) ) # ( !\Add3~9_sumout\ & ( \sum_mant1~16_combout\ & ( ((\sum_mant1~17_combout\ 
-- & \Add6~1_sumout\)) # (\sum_mant1~15_combout\) ) ) ) # ( \Add3~9_sumout\ & ( !\sum_mant1~16_combout\ & ( ((\sum_mant1~17_combout\ & \Add6~1_sumout\)) # (\sum_mant1~15_combout\) ) ) ) # ( !\Add3~9_sumout\ & ( !\sum_mant1~16_combout\ & ( 
-- ((\sum_mant1~17_combout\ & \Add6~1_sumout\)) # (\sum_mant1~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100010001111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1~17_combout\,
	datab => \ALT_INV_Add6~1_sumout\,
	datac => \ALT_INV_summing~0_combout\,
	datad => \ALT_INV_sum_mant1~15_combout\,
	datae => \ALT_INV_Add3~9_sumout\,
	dataf => \ALT_INV_sum_mant1~16_combout\,
	combout => \sum_mant1~18_combout\);

-- Location: MLABCELL_X9_Y18_N0
\sum_mant1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[1]~0_combout\ = ( \Add5~0_combout\ & ( (\Add3~9_sumout\ & (\B[7]~input_o\ & (\sum_e2[0]~0_combout\ & !\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~9_sumout\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_sum_e2[0]~0_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_Add5~0_combout\,
	combout => \sum_mant1[1]~0_combout\);

-- Location: MLABCELL_X9_Y18_N48
\sum_e2[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[3]~1_combout\ = ( \sum_mant1[1]~2_combout\ & ( !\sum_mant1[1]~3_combout\ & ( (!\sum_mant1[1]~1_combout\ & (!\sum_mant1[1]~0_combout\ & ((\sum_mant1[0]~5_combout\) # (\sum_mant1[0]~4_combout\)))) ) ) ) # ( !\sum_mant1[1]~2_combout\ & ( 
-- !\sum_mant1[1]~3_combout\ & ( (!\sum_mant1[1]~0_combout\ & ((\sum_mant1[0]~5_combout\) # (\sum_mant1[0]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[1]~1_combout\,
	datab => \ALT_INV_sum_mant1[1]~0_combout\,
	datac => \ALT_INV_sum_mant1[0]~4_combout\,
	datad => \ALT_INV_sum_mant1[0]~5_combout\,
	datae => \ALT_INV_sum_mant1[1]~2_combout\,
	dataf => \ALT_INV_sum_mant1[1]~3_combout\,
	combout => \sum_e2[3]~1_combout\);

-- Location: LABCELL_X10_Y18_N21
\sum_mant1[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[3]~11_combout\ = ( \Add3~17_sumout\ & ( (!\B[7]~input_o\ & ((!\A[7]~input_o\))) # (\B[7]~input_o\ & ((!\Add3~9_sumout\) # (\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010010101011111101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_Add3~17_sumout\,
	combout => \sum_mant1[3]~11_combout\);

-- Location: LABCELL_X10_Y18_N33
\Add8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = ( !\Add6~5_sumout\ & ( !\Add6~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~9_sumout\,
	dataf => \ALT_INV_Add6~5_sumout\,
	combout => \Add8~0_combout\);

-- Location: LABCELL_X10_Y18_N54
\sum_mant1[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[3]~12_combout\ = ( \A[7]~input_o\ & ( \Add6~13_sumout\ & ( (!\B[7]~input_o\ & !\Add6~17_sumout\) ) ) ) # ( !\A[7]~input_o\ & ( \Add6~13_sumout\ & ( (\Add3~9_sumout\ & (\B[7]~input_o\ & !\Add6~17_sumout\)) ) ) ) # ( \A[7]~input_o\ & ( 
-- !\Add6~13_sumout\ & ( (!\B[7]~input_o\ & (!\Add8~0_combout\ $ (\Add6~17_sumout\))) ) ) ) # ( !\A[7]~input_o\ & ( !\Add6~13_sumout\ & ( (\Add3~9_sumout\ & (\B[7]~input_o\ & (!\Add8~0_combout\ $ (\Add6~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000001101000000101000000000011000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add8~0_combout\,
	datab => \ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_Add6~17_sumout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_Add6~13_sumout\,
	combout => \sum_mant1[3]~12_combout\);

-- Location: LABCELL_X10_Y18_N0
\sum_mant1[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[3]~14_combout\ = ( \sum_mant1[3]~12_combout\ & ( \sum_mant1[1]~2_combout\ ) ) # ( !\sum_mant1[3]~12_combout\ & ( \sum_mant1[1]~2_combout\ & ( (((\sum_mant1[2]~6_combout\ & \Add5~2_combout\)) # (\sum_mant1[3]~13_combout\)) # 
-- (\sum_mant1[3]~11_combout\) ) ) ) # ( \sum_mant1[3]~12_combout\ & ( !\sum_mant1[1]~2_combout\ & ( ((\sum_mant1[2]~6_combout\ & \Add5~2_combout\)) # (\sum_mant1[3]~13_combout\) ) ) ) # ( !\sum_mant1[3]~12_combout\ & ( !\sum_mant1[1]~2_combout\ & ( 
-- ((\sum_mant1[2]~6_combout\ & \Add5~2_combout\)) # (\sum_mant1[3]~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[2]~6_combout\,
	datab => \ALT_INV_Add5~2_combout\,
	datac => \ALT_INV_sum_mant1[3]~11_combout\,
	datad => \ALT_INV_sum_mant1[3]~13_combout\,
	datae => \ALT_INV_sum_mant1[3]~12_combout\,
	dataf => \ALT_INV_sum_mant1[1]~2_combout\,
	combout => \sum_mant1[3]~14_combout\);

-- Location: LABCELL_X2_Y18_N12
\sum_e2[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[0]~2_combout\ = ( \sum_e1~0_combout\ & ( \sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & !\sum_mant1~18_combout\) ) ) ) # ( !\sum_e1~0_combout\ & ( \sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & \sum_mant1~18_combout\) ) ) ) # ( 
-- \sum_e1~0_combout\ & ( !\sum_mant1[3]~14_combout\ & ( (\sum_mant1[2]~10_combout\ & (\sum_e2[0]~0_combout\ & (!\sum_mant1~18_combout\ & !\sum_e2[3]~1_combout\))) ) ) ) # ( !\sum_e1~0_combout\ & ( !\sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & 
-- ((!\sum_mant1[2]~10_combout\) # ((\sum_e2[3]~1_combout\) # (\sum_mant1~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100110011000100000000000000000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[2]~10_combout\,
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_sum_mant1~18_combout\,
	datad => \ALT_INV_sum_e2[3]~1_combout\,
	datae => \ALT_INV_sum_e1~0_combout\,
	dataf => \ALT_INV_sum_mant1[3]~14_combout\,
	combout => \sum_e2[0]~2_combout\);

-- Location: MLABCELL_X4_Y18_N0
\Sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~0_combout\ = ( \sum_mant1[4]~20_combout\ & ( \sum_mant1[3]~25_combout\ & ( !\sum_mant1[1]~22_combout\ ) ) ) # ( !\sum_mant1[4]~20_combout\ & ( \sum_mant1[3]~25_combout\ & ( (!\sum_mant1[0]~21_combout\ & (\sum_mant1[3]~23_combout\)) # 
-- (\sum_mant1[0]~21_combout\ & (!\sum_mant1[3]~23_combout\ & (\sum_mant1[2]~10_combout\ & \sum_mant1[1]~22_combout\))) ) ) ) # ( \sum_mant1[4]~20_combout\ & ( !\sum_mant1[3]~25_combout\ & ( !\sum_mant1[1]~22_combout\ ) ) ) # ( !\sum_mant1[4]~20_combout\ & ( 
-- !\sum_mant1[3]~25_combout\ & ( !\sum_mant1[0]~21_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111110000000000100010001001101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[0]~21_combout\,
	datab => \ALT_INV_sum_mant1[3]~23_combout\,
	datac => \ALT_INV_sum_mant1[2]~10_combout\,
	datad => \ALT_INV_sum_mant1[1]~22_combout\,
	datae => \ALT_INV_sum_mant1[4]~20_combout\,
	dataf => \ALT_INV_sum_mant1[3]~25_combout\,
	combout => \Sum~0_combout\);

-- Location: MLABCELL_X4_Y19_N6
\Sum~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~1_combout\ = ( \A[0]~input_o\ & ( (!\Equal4~0_combout\ & (\Equal5~0_combout\)) # (\Equal4~0_combout\ & ((\B[0]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\Equal4~0_combout\ & \B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datac => \ALT_INV_Equal5~0_combout\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Sum~1_combout\);

-- Location: MLABCELL_X4_Y19_N21
\Sum~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~25_combout\ = ( !\Equal0~0_combout\ & ( (!\conditions~0_combout\ & ((!\Sum~1_combout\) # (\easywin~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_easywin~0_combout\,
	datac => \ALT_INV_Sum~1_combout\,
	datad => \ALT_INV_conditions~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Sum~25_combout\);

-- Location: LABCELL_X2_Y18_N57
\sum_e1[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e1[2]~4_combout\ = ( \B[5]~input_o\ & ( (!\LessThan2~1_combout\) # (\A[5]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & \LessThan2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_LessThan2~1_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	combout => \sum_e1[2]~4_combout\);

-- Location: LABCELL_X10_Y18_N15
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( \sum_mant1[1]~22_combout\ & ( \sum_mant1[2]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[2]~10_combout\,
	dataf => \ALT_INV_sum_mant1[1]~22_combout\,
	combout => \Equal6~0_combout\);

-- Location: MLABCELL_X4_Y18_N45
\sum_e2[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[3]~5_combout\ = ( \sum_mant1[2]~10_combout\ & ( (!\sum_mant1[1]~22_combout\) # (\sum_mant1[0]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sum_mant1[1]~22_combout\,
	datad => \ALT_INV_sum_mant1[0]~21_combout\,
	dataf => \ALT_INV_sum_mant1[2]~10_combout\,
	combout => \sum_e2[3]~5_combout\);

-- Location: LABCELL_X7_Y18_N54
\sum_e2[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[2]~9_combout\ = ( \Equal6~0_combout\ & ( \sum_e2[3]~5_combout\ & ( (\sum_e1[2]~4_combout\ & \sum_e2[0]~0_combout\) ) ) ) # ( !\Equal6~0_combout\ & ( \sum_e2[3]~5_combout\ & ( (\sum_e2[0]~0_combout\ & (!\sum_e1[1]~1_combout\ $ 
-- (!\sum_e1[2]~4_combout\))) ) ) ) # ( \Equal6~0_combout\ & ( !\sum_e2[3]~5_combout\ & ( (\sum_e2[0]~0_combout\ & (!\sum_e1[2]~4_combout\ $ (((!\sum_e1[1]~1_combout\) # (!\sum_e1~0_combout\))))) ) ) ) # ( !\Equal6~0_combout\ & ( !\sum_e2[3]~5_combout\ & ( 
-- (\sum_e2[0]~0_combout\ & (!\sum_e1[2]~4_combout\ $ (((!\sum_e1[1]~1_combout\ & !\sum_e1~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111000000000000001111000000000010110100000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e1[1]~1_combout\,
	datab => \ALT_INV_sum_e1~0_combout\,
	datac => \ALT_INV_sum_e1[2]~4_combout\,
	datad => \ALT_INV_sum_e2[0]~0_combout\,
	datae => \ALT_INV_Equal6~0_combout\,
	dataf => \ALT_INV_sum_e2[3]~5_combout\,
	combout => \sum_e2[2]~9_combout\);

-- Location: MLABCELL_X4_Y18_N18
\sum_e2[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[3]~7_combout\ = ( !\sum_mant1~18_combout\ & ( !\sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & ((!\sum_mant1[0]~21_combout\) # ((!\sum_mant1[2]~10_combout\) # (!\sum_mant1[1]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[0]~21_combout\,
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_sum_mant1[2]~10_combout\,
	datad => \ALT_INV_sum_mant1[1]~22_combout\,
	datae => \ALT_INV_sum_mant1~18_combout\,
	dataf => \ALT_INV_sum_mant1[3]~14_combout\,
	combout => \sum_e2[3]~7_combout\);

-- Location: LABCELL_X2_Y18_N9
\Add9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = ( \sum_e2[0]~0_combout\ & ( (\sum_e1[1]~1_combout\ & (\sum_e1[2]~4_combout\ & \sum_e1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e1[1]~1_combout\,
	datab => \ALT_INV_sum_e1[2]~4_combout\,
	datad => \ALT_INV_sum_e1~0_combout\,
	dataf => \ALT_INV_sum_e2[0]~0_combout\,
	combout => \Add9~0_combout\);

-- Location: LABCELL_X2_Y18_N33
\sum_e1[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e1[3]~5_combout\ = ( \LessThan2~1_combout\ & ( (\A[6]~input_o\ & \sum_e2[0]~0_combout\) ) ) # ( !\LessThan2~1_combout\ & ( (\sum_e2[0]~0_combout\ & \B[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100010001000100000011000000110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_LessThan2~1_combout\,
	combout => \sum_e1[3]~5_combout\);

-- Location: MLABCELL_X4_Y18_N54
\Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = ( !\sum_mant1[4]~20_combout\ & ( \sum_mant1[3]~25_combout\ & ( (\sum_mant1[0]~21_combout\ & (!\sum_mant1[3]~23_combout\ & (\sum_mant1[2]~10_combout\ & \sum_mant1[1]~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[0]~21_combout\,
	datab => \ALT_INV_sum_mant1[3]~23_combout\,
	datac => \ALT_INV_sum_mant1[2]~10_combout\,
	datad => \ALT_INV_sum_mant1[1]~22_combout\,
	datae => \ALT_INV_sum_mant1[4]~20_combout\,
	dataf => \ALT_INV_sum_mant1[3]~25_combout\,
	combout => \Equal6~1_combout\);

-- Location: LABCELL_X2_Y18_N42
\sum_e2[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[3]~8_combout\ = ( \Equal6~1_combout\ & ( \sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & (!\sum_e1[3]~5_combout\ $ (((!\sum_mant1~18_combout\) # (!\Add9~0_combout\))))) ) ) ) # ( !\Equal6~1_combout\ & ( \sum_mant1[3]~14_combout\ & ( 
-- (\sum_e2[0]~0_combout\ & (!\sum_e1[3]~5_combout\ $ (((!\sum_mant1~18_combout\) # (!\Add9~0_combout\))))) ) ) ) # ( \Equal6~1_combout\ & ( !\sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & (!\sum_e1[3]~5_combout\ $ (((!\sum_mant1~18_combout\) # 
-- (!\Add9~0_combout\))))) ) ) ) # ( !\Equal6~1_combout\ & ( !\sum_mant1[3]~14_combout\ & ( (\sum_mant1~18_combout\ & (\sum_e2[0]~0_combout\ & (!\Add9~0_combout\ $ (!\sum_e1[3]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001111000000000000111100000000000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1~18_combout\,
	datab => \ALT_INV_Add9~0_combout\,
	datac => \ALT_INV_sum_e1[3]~5_combout\,
	datad => \ALT_INV_sum_e2[0]~0_combout\,
	datae => \ALT_INV_Equal6~1_combout\,
	dataf => \ALT_INV_sum_mant1[3]~14_combout\,
	combout => \sum_e2[3]~8_combout\);

-- Location: LABCELL_X2_Y18_N0
\sum_e2[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[2]~12_combout\ = ( !\sum_mant1~18_combout\ & ( ((\sum_e1[2]~4_combout\ & (\sum_e2[0]~0_combout\ & ((\Equal6~1_combout\) # (\sum_mant1[3]~14_combout\))))) ) ) # ( \sum_mant1~18_combout\ & ( ((\sum_e2[0]~0_combout\ & (!\sum_e1[2]~4_combout\ $ 
-- (((!\sum_e1[1]~1_combout\) # (!\sum_e1~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000000011001100110011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e1[1]~1_combout\,
	datab => \ALT_INV_sum_e1[2]~4_combout\,
	datac => \ALT_INV_sum_e1~0_combout\,
	datad => \ALT_INV_Equal6~1_combout\,
	datae => \ALT_INV_sum_mant1~18_combout\,
	dataf => \ALT_INV_sum_e2[0]~0_combout\,
	datag => \ALT_INV_sum_mant1[3]~14_combout\,
	combout => \sum_e2[2]~12_combout\);

-- Location: LABCELL_X7_Y18_N45
\Add10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = ( \sum_e2[0]~0_combout\ & ( !\sum_e1[2]~4_combout\ $ (((!\sum_e1~0_combout\ & !\sum_e1[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010101010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e1[2]~4_combout\,
	datac => \ALT_INV_sum_e1~0_combout\,
	datad => \ALT_INV_sum_e1[1]~1_combout\,
	dataf => \ALT_INV_sum_e2[0]~0_combout\,
	combout => \Add10~0_combout\);

-- Location: LABCELL_X2_Y18_N6
\Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~1_combout\ = ( \sum_e2[0]~0_combout\ & ( !\sum_e1[3]~5_combout\ $ (((!\sum_e1[1]~1_combout\ & (!\sum_e1[2]~4_combout\ & !\sum_e1~0_combout\)))) ) ) # ( !\sum_e2[0]~0_combout\ & ( \sum_e1[3]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101111000111100000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e1[1]~1_combout\,
	datab => \ALT_INV_sum_e1[2]~4_combout\,
	datac => \ALT_INV_sum_e1[3]~5_combout\,
	datad => \ALT_INV_sum_e1~0_combout\,
	dataf => \ALT_INV_sum_e2[0]~0_combout\,
	combout => \Add10~1_combout\);

-- Location: LABCELL_X7_Y18_N48
\sum_e2[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[3]~6_combout\ = ( \Add10~1_combout\ & ( \sum_e2[3]~5_combout\ & ( (\Add10~0_combout\ & ((!\sum_e1[1]~2_combout\ & ((\sum_e1[0]~3_combout\))) # (\sum_e1[1]~2_combout\ & (\Equal6~0_combout\)))) ) ) ) # ( !\Add10~1_combout\ & ( \sum_e2[3]~5_combout\ 
-- & ( (!\Add10~0_combout\) # ((!\sum_e1[1]~2_combout\ & ((!\sum_e1[0]~3_combout\))) # (\sum_e1[1]~2_combout\ & (!\Equal6~0_combout\))) ) ) ) # ( \Add10~1_combout\ & ( !\sum_e2[3]~5_combout\ & ( (\Equal6~0_combout\ & (\Add10~0_combout\ & 
-- (!\sum_e1[1]~2_combout\ $ (!\sum_e1[0]~3_combout\)))) ) ) ) # ( !\Add10~1_combout\ & ( !\sum_e2[3]~5_combout\ & ( (!\Equal6~0_combout\) # ((!\Add10~0_combout\) # (!\sum_e1[1]~2_combout\ $ (\sum_e1[0]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101011000000000001010011111111111000100000000000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~0_combout\,
	datab => \ALT_INV_sum_e1[1]~2_combout\,
	datac => \ALT_INV_sum_e1[0]~3_combout\,
	datad => \ALT_INV_Add10~0_combout\,
	datae => \ALT_INV_Add10~1_combout\,
	dataf => \ALT_INV_sum_e2[3]~5_combout\,
	combout => \sum_e2[3]~6_combout\);

-- Location: LABCELL_X5_Y18_N3
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ( \sum_e2[3]~6_combout\ & ( (!\sum_e2[3]~7_combout\ & (((\sum_e2[3]~8_combout\ & \sum_e2[2]~12_combout\)))) # (\sum_e2[3]~7_combout\ & ((!\sum_e2[2]~9_combout\) # ((\sum_e2[2]~12_combout\)))) ) ) # ( !\sum_e2[3]~6_combout\ & ( 
-- (\sum_e2[3]~8_combout\ & (((!\sum_e2[2]~9_combout\ & \sum_e2[3]~7_combout\)) # (\sum_e2[2]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001111000000100000111100100010001111110010001000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e2[2]~9_combout\,
	datab => \ALT_INV_sum_e2[3]~7_combout\,
	datac => \ALT_INV_sum_e2[3]~8_combout\,
	datad => \ALT_INV_sum_e2[2]~12_combout\,
	dataf => \ALT_INV_sum_e2[3]~6_combout\,
	combout => \Equal7~0_combout\);

-- Location: LABCELL_X5_Y18_N36
\Sum~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~2_combout\ = ( \Equal7~0_combout\ & ( \easywin~1_combout\ & ( !\Sum~25_combout\ ) ) ) # ( !\Equal7~0_combout\ & ( \easywin~1_combout\ & ( !\Sum~25_combout\ ) ) ) # ( \Equal7~0_combout\ & ( !\easywin~1_combout\ & ( ((!\Sum~25_combout\) # 
-- ((\sum_e2[1]~4_combout\ & \sum_e2[0]~2_combout\))) # (\Sum~0_combout\) ) ) ) # ( !\Equal7~0_combout\ & ( !\easywin~1_combout\ & ( (!\Sum~25_combout\) # (\Sum~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110001111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e2[1]~4_combout\,
	datab => \ALT_INV_sum_e2[0]~2_combout\,
	datac => \ALT_INV_Sum~0_combout\,
	datad => \ALT_INV_Sum~25_combout\,
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_easywin~1_combout\,
	combout => \Sum~2_combout\);

-- Location: MLABCELL_X4_Y19_N12
\Sum~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~3_combout\ = ( !\conditions~1_combout\ & ( (!\conditions~2_combout\ & \easywin~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conditions~2_combout\,
	datac => \ALT_INV_easywin~0_combout\,
	dataf => \ALT_INV_conditions~1_combout\,
	combout => \Sum~3_combout\);

-- Location: MLABCELL_X4_Y19_N15
\Sum~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~4_combout\ = ( \conditions~1_combout\ & ( (!\conditions~3_combout\ & ((!\conditions~2_combout\) # (!\A[7]~input_o\ $ (\B[7]~input_o\)))) ) ) # ( !\conditions~1_combout\ & ( !\conditions~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011101101000000001110110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_conditions~2_combout\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_conditions~3_combout\,
	dataf => \ALT_INV_conditions~1_combout\,
	combout => \Sum~4_combout\);

-- Location: LABCELL_X2_Y18_N48
\Sum~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~5_combout\ = ( \Sum~4_combout\ & ( (!\sum_e2[0]~0_combout\) # ((!\Sum~3_combout\) # (\Equal6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_Sum~3_combout\,
	datad => \ALT_INV_Equal6~1_combout\,
	dataf => \ALT_INV_Sum~4_combout\,
	combout => \Sum~5_combout\);

-- Location: LABCELL_X2_Y18_N24
\Sum~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~6_combout\ = ( \sum_e2[1]~4_combout\ & ( \Equal7~0_combout\ & ( (\Sum~5_combout\ & ((!\Sum~3_combout\) # ((\Equal6~1_combout\) # (\sum_e2[0]~2_combout\)))) ) ) ) # ( !\sum_e2[1]~4_combout\ & ( \Equal7~0_combout\ & ( (\Sum~5_combout\ & 
-- ((!\Sum~3_combout\) # (\Equal6~1_combout\))) ) ) ) # ( \sum_e2[1]~4_combout\ & ( !\Equal7~0_combout\ & ( (\Sum~5_combout\ & ((!\Sum~3_combout\) # (\Equal6~1_combout\))) ) ) ) # ( !\sum_e2[1]~4_combout\ & ( !\Equal7~0_combout\ & ( (\Sum~5_combout\ & 
-- ((!\Sum~3_combout\) # (\Equal6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100001010000011110000101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sum~3_combout\,
	datab => \ALT_INV_sum_e2[0]~2_combout\,
	datac => \ALT_INV_Sum~5_combout\,
	datad => \ALT_INV_Equal6~1_combout\,
	datae => \ALT_INV_sum_e2[1]~4_combout\,
	dataf => \ALT_INV_Equal7~0_combout\,
	combout => \Sum~6_combout\);

-- Location: MLABCELL_X4_Y19_N0
\Sum~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~8_combout\ = ( !\conditions~1_combout\ & ( (!\conditions~2_combout\ & !\conditions~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conditions~2_combout\,
	datad => \ALT_INV_conditions~3_combout\,
	dataf => \ALT_INV_conditions~1_combout\,
	combout => \Sum~8_combout\);

-- Location: LABCELL_X10_Y18_N24
\sum_mant1[3]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant1[3]~26_combout\ = ( \A[7]~input_o\ & ( \Add8~1_combout\ & ( (!\B[7]~input_o\ & ((\Add6~17_sumout\))) # (\B[7]~input_o\ & (\Add3~17_sumout\)) ) ) ) # ( !\A[7]~input_o\ & ( \Add8~1_combout\ & ( (!\Add3~9_sumout\ & (\Add3~17_sumout\)) # 
-- (\Add3~9_sumout\ & ((!\B[7]~input_o\ & (\Add3~17_sumout\)) # (\B[7]~input_o\ & ((\Add6~17_sumout\))))) ) ) ) # ( \A[7]~input_o\ & ( !\Add8~1_combout\ & ( (!\B[7]~input_o\ & ((!\Add6~17_sumout\))) # (\B[7]~input_o\ & (\Add3~17_sumout\)) ) ) ) # ( 
-- !\A[7]~input_o\ & ( !\Add8~1_combout\ & ( (!\Add3~9_sumout\ & (\Add3~17_sumout\)) # (\Add3~9_sumout\ & ((!\B[7]~input_o\ & (\Add3~17_sumout\)) # (\B[7]~input_o\ & ((!\Add6~17_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010100111101010000010101010100010101110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~17_sumout\,
	datab => \ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_Add6~17_sumout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_Add8~1_combout\,
	combout => \sum_mant1[3]~26_combout\);

-- Location: MLABCELL_X9_Y18_N54
\Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = ( !\sum_mant1[1]~2_combout\ & ( \sum_mant1[3]~26_combout\ & ( (!\sum_mant1[3]~13_combout\ & (!\sum_mant1[3]~23_combout\ & ((!\sum_e2[0]~0_combout\) # (!\sum_mant1~18_combout\)))) ) ) ) # ( \sum_mant1[1]~2_combout\ & ( 
-- !\sum_mant1[3]~26_combout\ & ( (!\sum_mant1[3]~13_combout\ & (!\sum_mant1[3]~23_combout\ & ((!\sum_e2[0]~0_combout\) # (!\sum_mant1~18_combout\)))) ) ) ) # ( !\sum_mant1[1]~2_combout\ & ( !\sum_mant1[3]~26_combout\ & ( (!\sum_mant1[3]~13_combout\ & 
-- (!\sum_mant1[3]~23_combout\ & ((!\sum_e2[0]~0_combout\) # (!\sum_mant1~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e2[0]~0_combout\,
	datab => \ALT_INV_sum_mant1~18_combout\,
	datac => \ALT_INV_sum_mant1[3]~13_combout\,
	datad => \ALT_INV_sum_mant1[3]~23_combout\,
	datae => \ALT_INV_sum_mant1[1]~2_combout\,
	dataf => \ALT_INV_sum_mant1[3]~26_combout\,
	combout => \Equal6~2_combout\);

-- Location: MLABCELL_X4_Y18_N12
\Sum~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~9_combout\ = ( \sum_mant1[0]~21_combout\ & ( \easywin~2_combout\ & ( \Sum~8_combout\ ) ) ) # ( !\sum_mant1[0]~21_combout\ & ( \easywin~2_combout\ & ( \Sum~8_combout\ ) ) ) # ( \sum_mant1[0]~21_combout\ & ( !\easywin~2_combout\ & ( (\Sum~8_combout\ & 
-- ((!\Equal6~2_combout\) # ((!\sum_mant1[2]~10_combout\) # (!\sum_mant1[1]~22_combout\)))) ) ) ) # ( !\sum_mant1[0]~21_combout\ & ( !\easywin~2_combout\ & ( \Sum~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sum~8_combout\,
	datab => \ALT_INV_Equal6~2_combout\,
	datac => \ALT_INV_sum_mant1[2]~10_combout\,
	datad => \ALT_INV_sum_mant1[1]~22_combout\,
	datae => \ALT_INV_sum_mant1[0]~21_combout\,
	dataf => \ALT_INV_easywin~2_combout\,
	combout => \Sum~9_combout\);

-- Location: LABCELL_X5_Y18_N45
\Sum~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~11_combout\ = ( \Sum~9_combout\ & ( !\Equal4~0_combout\ & ( (!\sum_e2[1]~4_combout\) # ((!\sum_e2[0]~2_combout\) # ((!\Equal7~0_combout\) # (\easywin~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e2[1]~4_combout\,
	datab => \ALT_INV_sum_e2[0]~2_combout\,
	datac => \ALT_INV_easywin~2_combout\,
	datad => \ALT_INV_Equal7~0_combout\,
	datae => \ALT_INV_Sum~9_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Sum~11_combout\);

-- Location: MLABCELL_X4_Y18_N36
\sum_mant2[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant2[1]~0_combout\ = ( \sum_mant1[4]~20_combout\ & ( \sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & !\sum_mant1[2]~10_combout\) ) ) ) # ( !\sum_mant1[4]~20_combout\ & ( \sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & 
-- !\sum_mant1[1]~22_combout\) ) ) ) # ( \sum_mant1[4]~20_combout\ & ( !\sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & !\sum_mant1[2]~10_combout\) ) ) ) # ( !\sum_mant1[4]~20_combout\ & ( !\sum_mant1[3]~14_combout\ & ( (!\sum_mant1[0]~21_combout\ & 
-- (\sum_e2[0]~0_combout\ & !\sum_mant1[2]~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001100000011000000110011000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[0]~21_combout\,
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_sum_mant1[2]~10_combout\,
	datad => \ALT_INV_sum_mant1[1]~22_combout\,
	datae => \ALT_INV_sum_mant1[4]~20_combout\,
	dataf => \ALT_INV_sum_mant1[3]~14_combout\,
	combout => \sum_mant2[1]~0_combout\);

-- Location: LABCELL_X2_Y18_N51
\Sum~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~7_combout\ = ( \Equal4~0_combout\ & ( \sum_e2[0]~0_combout\ ) ) # ( !\Equal4~0_combout\ & ( !\sum_e2[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Sum~7_combout\);

-- Location: LABCELL_X5_Y18_N42
\Sum~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~10_combout\ = ( \Sum~9_combout\ & ( !\Sum~7_combout\ & ( (!\sum_e2[1]~4_combout\) # ((!\sum_e2[0]~2_combout\) # ((!\Equal7~0_combout\) # (\easywin~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e2[1]~4_combout\,
	datab => \ALT_INV_sum_e2[0]~2_combout\,
	datac => \ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_easywin~2_combout\,
	datae => \ALT_INV_Sum~9_combout\,
	dataf => \ALT_INV_Sum~7_combout\,
	combout => \Sum~10_combout\);

-- Location: LABCELL_X5_Y18_N18
\Sum~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~12_combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\Sum~11_combout\ & ((!\Sum~6_combout\) # ((\Sum~10_combout\)))) # (\Sum~11_combout\ & (((!\Sum~10_combout\) # (\sum_mant2[1]~0_combout\)))) ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( 
-- (!\Sum~11_combout\ & ((!\Sum~6_combout\) # ((\Sum~10_combout\)))) # (\Sum~11_combout\ & (((\sum_mant2[1]~0_combout\ & \Sum~10_combout\)))) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\Sum~11_combout\ & (!\Sum~6_combout\ & ((!\Sum~10_combout\)))) # 
-- (\Sum~11_combout\ & (((!\Sum~10_combout\) # (\sum_mant2[1]~0_combout\)))) ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\Sum~11_combout\ & (!\Sum~6_combout\ & ((!\Sum~10_combout\)))) # (\Sum~11_combout\ & (((\sum_mant2[1]~0_combout\ & 
-- \Sum~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000011101110110000001110001000110011111011101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sum~6_combout\,
	datab => \ALT_INV_Sum~11_combout\,
	datac => \ALT_INV_sum_mant2[1]~0_combout\,
	datad => \ALT_INV_Sum~10_combout\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Sum~12_combout\);

-- Location: MLABCELL_X4_Y18_N48
\sum_mant2[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_mant2[2]~1_combout\ = ( \sum_mant1[4]~20_combout\ & ( \sum_mant1[3]~14_combout\ & ( \sum_e2[0]~0_combout\ ) ) ) # ( !\sum_mant1[4]~20_combout\ & ( \sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & !\sum_mant1[2]~10_combout\) ) ) ) # ( 
-- !\sum_mant1[4]~20_combout\ & ( !\sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & (!\sum_mant1[1]~22_combout\ & ((!\sum_mant1[0]~21_combout\) # (!\sum_mant1[2]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000000000000000000000000000110000001100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[0]~21_combout\,
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_sum_mant1[2]~10_combout\,
	datad => \ALT_INV_sum_mant1[1]~22_combout\,
	datae => \ALT_INV_sum_mant1[4]~20_combout\,
	dataf => \ALT_INV_sum_mant1[3]~14_combout\,
	combout => \sum_mant2[2]~1_combout\);

-- Location: LABCELL_X5_Y18_N54
\Sum~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~13_combout\ = ( \A[2]~input_o\ & ( \Sum~10_combout\ & ( (!\Sum~11_combout\ & ((\B[2]~input_o\))) # (\Sum~11_combout\ & (\sum_mant2[2]~1_combout\)) ) ) ) # ( !\A[2]~input_o\ & ( \Sum~10_combout\ & ( (!\Sum~11_combout\ & ((\B[2]~input_o\))) # 
-- (\Sum~11_combout\ & (\sum_mant2[2]~1_combout\)) ) ) ) # ( \A[2]~input_o\ & ( !\Sum~10_combout\ & ( (!\Sum~6_combout\) # (\Sum~11_combout\) ) ) ) # ( !\A[2]~input_o\ & ( !\Sum~10_combout\ & ( (!\Sum~6_combout\ & !\Sum~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010101111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sum~6_combout\,
	datab => \ALT_INV_sum_mant2[2]~1_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Sum~11_combout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_Sum~10_combout\,
	combout => \Sum~13_combout\);

-- Location: LABCELL_X5_Y18_N30
\Sum~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~14_combout\ = ( \Sum~11_combout\ & ( \Sum~10_combout\ & ( \sum_e2[0]~2_combout\ ) ) ) # ( !\Sum~11_combout\ & ( \Sum~10_combout\ & ( \B[3]~input_o\ ) ) ) # ( \Sum~11_combout\ & ( !\Sum~10_combout\ & ( \A[3]~input_o\ ) ) ) # ( !\Sum~11_combout\ & ( 
-- !\Sum~10_combout\ & ( !\Sum~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sum~6_combout\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_sum_e2[0]~2_combout\,
	datae => \ALT_INV_Sum~11_combout\,
	dataf => \ALT_INV_Sum~10_combout\,
	combout => \Sum~14_combout\);

-- Location: LABCELL_X5_Y18_N6
\Sum~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~15_combout\ = ( \sum_e2[1]~4_combout\ & ( \Sum~10_combout\ & ( (\B[4]~input_o\) # (\Sum~11_combout\) ) ) ) # ( !\sum_e2[1]~4_combout\ & ( \Sum~10_combout\ & ( (!\Sum~11_combout\ & \B[4]~input_o\) ) ) ) # ( \sum_e2[1]~4_combout\ & ( !\Sum~10_combout\ 
-- & ( (!\Sum~11_combout\ & (!\Sum~6_combout\)) # (\Sum~11_combout\ & ((\A[4]~input_o\))) ) ) ) # ( !\sum_e2[1]~4_combout\ & ( !\Sum~10_combout\ & ( (!\Sum~11_combout\ & (!\Sum~6_combout\)) # (\Sum~11_combout\ & ((\A[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110001011100010111000101100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sum~6_combout\,
	datab => \ALT_INV_Sum~11_combout\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_sum_e2[1]~4_combout\,
	dataf => \ALT_INV_Sum~10_combout\,
	combout => \Sum~15_combout\);

-- Location: LABCELL_X5_Y18_N0
\sum_e2[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[2]~10_combout\ = (!\sum_e2[2]~12_combout\ & ((!\sum_e2[3]~7_combout\) # (\sum_e2[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011010000110100001101000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e2[2]~9_combout\,
	datab => \ALT_INV_sum_e2[3]~7_combout\,
	datac => \ALT_INV_sum_e2[2]~12_combout\,
	combout => \sum_e2[2]~10_combout\);

-- Location: LABCELL_X5_Y18_N12
\Sum~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~16_combout\ = ( \B[5]~input_o\ & ( \A[5]~input_o\ & ( (!\Sum~11_combout\ & ((!\Sum~6_combout\) # ((\Sum~10_combout\)))) # (\Sum~11_combout\ & (((!\sum_e2[2]~10_combout\) # (!\Sum~10_combout\)))) ) ) ) # ( !\B[5]~input_o\ & ( \A[5]~input_o\ & ( 
-- (!\Sum~11_combout\ & (!\Sum~6_combout\ & ((!\Sum~10_combout\)))) # (\Sum~11_combout\ & (((!\sum_e2[2]~10_combout\) # (!\Sum~10_combout\)))) ) ) ) # ( \B[5]~input_o\ & ( !\A[5]~input_o\ & ( (!\Sum~11_combout\ & ((!\Sum~6_combout\) # ((\Sum~10_combout\)))) 
-- # (\Sum~11_combout\ & (((!\sum_e2[2]~10_combout\ & \Sum~10_combout\)))) ) ) ) # ( !\B[5]~input_o\ & ( !\A[5]~input_o\ & ( (!\Sum~11_combout\ & (!\Sum~6_combout\ & ((!\Sum~10_combout\)))) # (\Sum~11_combout\ & (((!\sum_e2[2]~10_combout\ & 
-- \Sum~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000110000100010001111110010111011001100001011101111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sum~6_combout\,
	datab => \ALT_INV_Sum~11_combout\,
	datac => \ALT_INV_sum_e2[2]~10_combout\,
	datad => \ALT_INV_Sum~10_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Sum~16_combout\);

-- Location: LABCELL_X5_Y18_N51
\sum_e2[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_e2[3]~11_combout\ = ( \sum_e2[3]~6_combout\ & ( (!\sum_e2[3]~7_combout\ & !\sum_e2[3]~8_combout\) ) ) # ( !\sum_e2[3]~6_combout\ & ( !\sum_e2[3]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sum_e2[3]~7_combout\,
	datad => \ALT_INV_sum_e2[3]~8_combout\,
	dataf => \ALT_INV_sum_e2[3]~6_combout\,
	combout => \sum_e2[3]~11_combout\);

-- Location: LABCELL_X5_Y18_N24
\Sum~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~17_combout\ = ( \B[6]~input_o\ & ( \Sum~10_combout\ & ( (!\sum_e2[3]~11_combout\) # (!\Sum~11_combout\) ) ) ) # ( !\B[6]~input_o\ & ( \Sum~10_combout\ & ( (!\sum_e2[3]~11_combout\ & \Sum~11_combout\) ) ) ) # ( \B[6]~input_o\ & ( !\Sum~10_combout\ & ( 
-- (!\Sum~11_combout\ & ((!\Sum~6_combout\))) # (\Sum~11_combout\ & (\A[6]~input_o\)) ) ) ) # ( !\B[6]~input_o\ & ( !\Sum~10_combout\ & ( (!\Sum~11_combout\ & ((!\Sum~6_combout\))) # (\Sum~11_combout\ & (\A[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110011111100000011001100000000101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e2[3]~11_combout\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_Sum~6_combout\,
	datad => \ALT_INV_Sum~11_combout\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_Sum~10_combout\,
	combout => \Sum~17_combout\);

-- Location: MLABCELL_X4_Y18_N24
\Sum~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~18_combout\ = ( \sum_mant1[4]~20_combout\ & ( \sum_mant1[3]~14_combout\ & ( \sum_e2[0]~0_combout\ ) ) ) # ( !\sum_mant1[4]~20_combout\ & ( \sum_mant1[3]~14_combout\ & ( \sum_e2[0]~0_combout\ ) ) ) # ( \sum_mant1[4]~20_combout\ & ( 
-- !\sum_mant1[3]~14_combout\ & ( \sum_e2[0]~0_combout\ ) ) ) # ( !\sum_mant1[4]~20_combout\ & ( !\sum_mant1[3]~14_combout\ & ( (\sum_e2[0]~0_combout\ & ((!\sum_mant1[0]~21_combout\) # ((!\sum_mant1[2]~10_combout\) # (!\sum_mant1[1]~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110010001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_mant1[0]~21_combout\,
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_sum_mant1[2]~10_combout\,
	datad => \ALT_INV_sum_mant1[1]~22_combout\,
	datae => \ALT_INV_sum_mant1[4]~20_combout\,
	dataf => \ALT_INV_sum_mant1[3]~14_combout\,
	combout => \Sum~18_combout\);

-- Location: MLABCELL_X4_Y19_N36
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)) ) ) # ( !\B[1]~input_o\ & ( ((!\B[0]~input_o\ & \A[0]~input_o\)) # (\A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X1_Y18_N15
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~0_combout\ & ( (!\A[3]~input_o\ & (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\A[2]~input_o\)))) # (\A[3]~input_o\ & ((!\B[2]~input_o\) # ((!\B[3]~input_o\) # (\A[2]~input_o\)))) ) ) # ( !\LessThan0~0_combout\ & ( 
-- (!\A[3]~input_o\ & (!\B[2]~input_o\ & (!\B[3]~input_o\ & \A[2]~input_o\))) # (\A[3]~input_o\ & ((!\B[3]~input_o\) # ((!\B[2]~input_o\ & \A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010110010001100001011001010110010111100111011001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X1_Y18_N21
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \LessThan0~1_combout\ & ( (!\B[5]~input_o\ & (((!\B[4]~input_o\) # (\A[4]~input_o\)) # (\A[5]~input_o\))) # (\B[5]~input_o\ & (\A[5]~input_o\ & ((!\B[4]~input_o\) # (\A[4]~input_o\)))) ) ) # ( !\LessThan0~1_combout\ & ( 
-- (!\B[5]~input_o\ & (((\A[4]~input_o\ & !\B[4]~input_o\)) # (\A[5]~input_o\))) # (\B[5]~input_o\ & (\A[5]~input_o\ & (\A[4]~input_o\ & !\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100100010001010110010001010111011001010111011101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X1_Y18_N54
\Sum~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~22_combout\ = ( \summing~0_combout\ & ( (!\A[6]~input_o\ & ((!\LessThan0~2_combout\) # (\B[6]~input_o\))) # (\A[6]~input_o\ & (!\LessThan0~2_combout\ & \B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000111110101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_summing~0_combout\,
	combout => \Sum~22_combout\);

-- Location: MLABCELL_X4_Y19_N51
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\A[1]~input_o\ & (((!\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\))) # (\A[1]~input_o\ & (!\A[0]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010001110000010101000111000001010100011100000101010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X1_Y18_N12
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \LessThan1~0_combout\ & ( (!\A[3]~input_o\ & (((!\A[2]~input_o\) # (\B[3]~input_o\)) # (\B[2]~input_o\))) # (\A[3]~input_o\ & (\B[3]~input_o\ & ((!\A[2]~input_o\) # (\B[2]~input_o\)))) ) ) # ( !\LessThan1~0_combout\ & ( 
-- (!\A[3]~input_o\ & (((\B[2]~input_o\ & !\A[2]~input_o\)) # (\B[3]~input_o\))) # (\A[3]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ & !\A[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100001100010011010000110011001111010011011100111101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X1_Y18_N18
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( \LessThan1~1_combout\ & ( (!\B[5]~input_o\ & (!\A[5]~input_o\ & ((!\A[4]~input_o\) # (\B[4]~input_o\)))) # (\B[5]~input_o\ & ((!\A[5]~input_o\) # ((!\A[4]~input_o\) # (\B[4]~input_o\)))) ) ) # ( !\LessThan1~1_combout\ & ( 
-- (!\B[5]~input_o\ & (!\A[5]~input_o\ & (!\A[4]~input_o\ & \B[4]~input_o\))) # (\B[5]~input_o\ & ((!\A[5]~input_o\) # ((!\A[4]~input_o\ & \B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011010100010001001101010011010100110111011101010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X1_Y18_N57
\Sum~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~21_combout\ = ( \LessThan1~2_combout\ & ( (\A[7]~input_o\ & (((\A[6]~input_o\ & !\B[6]~input_o\)) # (\B[7]~input_o\))) ) ) # ( !\LessThan1~2_combout\ & ( (\A[7]~input_o\ & (((!\B[6]~input_o\) # (\B[7]~input_o\)) # (\A[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010011001100110001001100010011000000110001001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_LessThan1~2_combout\,
	combout => \Sum~21_combout\);

-- Location: MLABCELL_X4_Y19_N24
\Sum~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~19_combout\ = ( !\conditions~3_combout\ & ( \B[7]~input_o\ & ( (!\conditions~1_combout\ & ((!\conditions~2_combout\ & (!\Equal4~0_combout\)) # (\conditions~2_combout\ & ((!\A[7]~input_o\))))) ) ) ) # ( !\conditions~3_combout\ & ( !\B[7]~input_o\ & ( 
-- (!\conditions~2_combout\) # (!\A[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100000000000000000010111000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => \ALT_INV_conditions~2_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_conditions~1_combout\,
	datae => \ALT_INV_conditions~3_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Sum~19_combout\);

-- Location: MLABCELL_X4_Y19_N9
\Sum~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~20_combout\ = ( \A[7]~input_o\ & ( (\Sum~19_combout\ & ((!\Equal5~0_combout\) # (\Equal4~0_combout\))) ) ) # ( !\A[7]~input_o\ & ( \Sum~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_Sum~19_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \Sum~20_combout\);

-- Location: MLABCELL_X4_Y18_N42
\Sum~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~23_combout\ = ( \Sum~20_combout\ & ( (!\sum_e2[0]~0_combout\) # ((!\Sum~22_combout\ & !\Sum~21_combout\)) ) ) # ( !\Sum~20_combout\ & ( (!\Sum~22_combout\ & (\sum_e2[0]~0_combout\ & !\Sum~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011101100111011001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sum~22_combout\,
	datab => \ALT_INV_sum_e2[0]~0_combout\,
	datac => \ALT_INV_Sum~21_combout\,
	dataf => \ALT_INV_Sum~20_combout\,
	combout => \Sum~23_combout\);

-- Location: LABCELL_X5_Y18_N48
\Sum~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~24_combout\ = ( \sum_e2[0]~2_combout\ & ( (!\Sum~23_combout\) # ((\sum_e2[1]~4_combout\ & (\Sum~18_combout\ & \Equal7~0_combout\))) ) ) # ( !\sum_e2[0]~2_combout\ & ( !\Sum~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum_e2[1]~4_combout\,
	datab => \ALT_INV_Sum~18_combout\,
	datac => \ALT_INV_Equal7~0_combout\,
	datad => \ALT_INV_Sum~23_combout\,
	dataf => \ALT_INV_sum_e2[0]~2_combout\,
	combout => \Sum~24_combout\);

-- Location: LABCELL_X7_Y2_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


