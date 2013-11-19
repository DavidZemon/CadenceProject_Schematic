-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/18/2013 20:55:04"

-- 
-- Device: Altera EP2C8T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	Co : OUT std_logic;
	Op : IN std_logic_vector(2 DOWNTO 0);
	Ci : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- Co	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[3]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[2]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[1]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[0]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[3]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Op[1]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Op[0]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Ci	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Op[2]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Co : std_logic;
SIGNAL ww_Op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Ci : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL \add_sub|inst5~combout\ : std_logic;
SIGNAL \add_sub|inst|inst3~4_combout\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \add_sub|inst4~combout\ : std_logic;
SIGNAL \add_sub|inst1|inst2~0_combout\ : std_logic;
SIGNAL \add_sub|inst2|inst2~0_combout\ : std_logic;
SIGNAL \add_sub|inst6~combout\ : std_logic;
SIGNAL \add_sub|inst3|inst2~0_combout\ : std_logic;
SIGNAL \add_sub|inst3|inst3~0_combout\ : std_logic;
SIGNAL \main_2to1_mux|inst3|inst1~0_combout\ : std_logic;
SIGNAL \main_2to1_mux|inst3|inst1~1_combout\ : std_logic;
SIGNAL \add_sub|inst2|inst3~0_combout\ : std_logic;
SIGNAL \main_2to1_mux|inst2|inst1~0_combout\ : std_logic;
SIGNAL \main_2to1_mux|inst2|inst1~1_combout\ : std_logic;
SIGNAL \Ci~combout\ : std_logic;
SIGNAL \add_sub|inst|inst2~4_combout\ : std_logic;
SIGNAL \add_sub|inst|inst2~5_combout\ : std_logic;
SIGNAL \add_sub|inst1|inst3~0_combout\ : std_logic;
SIGNAL \main_2to1_mux|inst1|inst1~0_combout\ : std_logic;
SIGNAL \main_2to1_mux|inst1|inst1~1_combout\ : std_logic;
SIGNAL \add_sub|inst|inst3~5_combout\ : std_logic;
SIGNAL \main_2to1_mux|inst|inst1~0_combout\ : std_logic;
SIGNAL \main_2to1_mux|inst|inst1~1_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Op~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

Co <= ww_Co;
ww_Op <= Op;
ww_Ci <= Ci;
ww_A <= A;
ww_B <= B;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X10_Y10_N28
\add_sub|inst5\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst5~combout\ = (\B~combout\(2) & (\Op~combout\(1) $ (!\Op~combout\(0)))) # (!\B~combout\(2) & (!\Op~combout\(1) & \Op~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \add_sub|inst5~combout\);

-- Location: LCCOMB_X8_Y11_N12
\add_sub|inst|inst3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst|inst3~4_combout\ = \B~combout\(0) $ (((\Op~combout\(1) & ((\Op~combout\(0)))) # (!\Op~combout\(1) & (\Ci~combout\ & !\Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \Ci~combout\,
	datac => \B~combout\(0),
	datad => \Op~combout\(0),
	combout => \add_sub|inst|inst3~4_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Op(1),
	combout => \Op~combout\(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Op(0),
	combout => \Op~combout\(0));

-- Location: LCCOMB_X10_Y10_N0
\inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\Op~combout\(1) & \Op~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst~0_combout\);

-- Location: LCCOMB_X10_Y10_N14
\add_sub|inst4\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst4~combout\ = (\B~combout\(1) & (\Op~combout\(1) $ (!\Op~combout\(0)))) # (!\B~combout\(1) & (!\Op~combout\(1) & \Op~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \add_sub|inst4~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X10_Y10_N8
\add_sub|inst1|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst1|inst2~0_combout\ = (\add_sub|inst|inst2~5_combout\ & ((\add_sub|inst4~combout\) # ((\A~combout\(1) & !\inst~0_combout\)))) # (!\add_sub|inst|inst2~5_combout\ & (\add_sub|inst4~combout\ & (\A~combout\(1) & !\inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|inst|inst2~5_combout\,
	datab => \add_sub|inst4~combout\,
	datac => \A~combout\(1),
	datad => \inst~0_combout\,
	combout => \add_sub|inst1|inst2~0_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X10_Y10_N10
\add_sub|inst2|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst2|inst2~0_combout\ = (\add_sub|inst5~combout\ & ((\add_sub|inst1|inst2~0_combout\) # ((!\inst~0_combout\ & \A~combout\(2))))) # (!\add_sub|inst5~combout\ & (!\inst~0_combout\ & (\add_sub|inst1|inst2~0_combout\ & \A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|inst5~combout\,
	datab => \inst~0_combout\,
	datac => \add_sub|inst1|inst2~0_combout\,
	datad => \A~combout\(2),
	combout => \add_sub|inst2|inst2~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X10_Y10_N2
\add_sub|inst6\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst6~combout\ = (\Op~combout\(1) & (\B~combout\(3) & \Op~combout\(0))) # (!\Op~combout\(1) & (\B~combout\(3) $ (\Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datac => \B~combout\(3),
	datad => \Op~combout\(0),
	combout => \add_sub|inst6~combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X10_Y10_N4
\add_sub|inst3|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst3|inst2~0_combout\ = (\add_sub|inst2|inst2~0_combout\ & ((\add_sub|inst6~combout\) # ((!\inst~0_combout\ & \A~combout\(3))))) # (!\add_sub|inst2|inst2~0_combout\ & (!\inst~0_combout\ & (\add_sub|inst6~combout\ & \A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|inst2|inst2~0_combout\,
	datab => \inst~0_combout\,
	datac => \add_sub|inst6~combout\,
	datad => \A~combout\(3),
	combout => \add_sub|inst3|inst2~0_combout\);

-- Location: LCCOMB_X10_Y10_N24
\add_sub|inst3|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst3|inst3~0_combout\ = (\Op~combout\(1) & ((\Op~combout\(0) & ((\B~combout\(3)))) # (!\Op~combout\(0) & (\A~combout\(3))))) # (!\Op~combout\(1) & (\A~combout\(3) $ (\B~combout\(3) $ (\Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \A~combout\(3),
	datac => \B~combout\(3),
	datad => \Op~combout\(0),
	combout => \add_sub|inst3|inst3~0_combout\);

-- Location: LCCOMB_X10_Y10_N30
\main_2to1_mux|inst3|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_2to1_mux|inst3|inst1~0_combout\ = (\Op~combout\(1) & (\A~combout\(3) $ ((\B~combout\(3))))) # (!\Op~combout\(1) & ((\A~combout\(3) & ((\B~combout\(3)) # (\Op~combout\(0)))) # (!\A~combout\(3) & (\B~combout\(3) & \Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \A~combout\(3),
	datac => \B~combout\(3),
	datad => \Op~combout\(0),
	combout => \main_2to1_mux|inst3|inst1~0_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Op(2),
	combout => \Op~combout\(2));

-- Location: LCCOMB_X10_Y10_N18
\main_2to1_mux|inst3|inst1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_2to1_mux|inst3|inst1~1_combout\ = (\Op~combout\(2) & (\add_sub|inst3|inst3~0_combout\ $ (((\add_sub|inst2|inst2~0_combout\))))) # (!\Op~combout\(2) & (((\main_2to1_mux|inst3|inst1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|inst3|inst3~0_combout\,
	datab => \main_2to1_mux|inst3|inst1~0_combout\,
	datac => \Op~combout\(2),
	datad => \add_sub|inst2|inst2~0_combout\,
	combout => \main_2to1_mux|inst3|inst1~1_combout\);

-- Location: LCCOMB_X10_Y10_N6
\add_sub|inst2|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst2|inst3~0_combout\ = (\Op~combout\(1) & ((\Op~combout\(0) & (\B~combout\(2))) # (!\Op~combout\(0) & ((\A~combout\(2)))))) # (!\Op~combout\(1) & (\B~combout\(2) $ (\A~combout\(2) $ (\Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \add_sub|inst2|inst3~0_combout\);

-- Location: LCCOMB_X10_Y10_N12
\main_2to1_mux|inst2|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_2to1_mux|inst2|inst1~0_combout\ = (\B~combout\(2) & ((\A~combout\(2) & (!\Op~combout\(1))) # (!\A~combout\(2) & ((\Op~combout\(1)) # (\Op~combout\(0)))))) # (!\B~combout\(2) & (\A~combout\(2) & ((\Op~combout\(1)) # (\Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \main_2to1_mux|inst2|inst1~0_combout\);

-- Location: LCCOMB_X10_Y10_N16
\main_2to1_mux|inst2|inst1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_2to1_mux|inst2|inst1~1_combout\ = (\Op~combout\(2) & (\add_sub|inst2|inst3~0_combout\ $ ((\add_sub|inst1|inst2~0_combout\)))) # (!\Op~combout\(2) & (((\main_2to1_mux|inst2|inst1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|inst2|inst3~0_combout\,
	datab => \add_sub|inst1|inst2~0_combout\,
	datac => \Op~combout\(2),
	datad => \main_2to1_mux|inst2|inst1~0_combout\,
	combout => \main_2to1_mux|inst2|inst1~1_combout\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Ci~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Ci,
	combout => \Ci~combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X8_Y11_N8
\add_sub|inst|inst2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst|inst2~4_combout\ = (\A~combout\(0) & ((\B~combout\(0)) # ((\Ci~combout\ & !\Op~combout\(0))))) # (!\A~combout\(0) & ((\B~combout\(0) & (\Ci~combout\ & !\Op~combout\(0))) # (!\B~combout\(0) & ((\Op~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \Ci~combout\,
	datac => \B~combout\(0),
	datad => \Op~combout\(0),
	combout => \add_sub|inst|inst2~4_combout\);

-- Location: LCCOMB_X8_Y11_N18
\add_sub|inst|inst2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst|inst2~5_combout\ = (\Op~combout\(1) & (\A~combout\(0) $ (((!\add_sub|inst|inst2~4_combout\ & \Op~combout\(0)))))) # (!\Op~combout\(1) & ((\add_sub|inst|inst2~4_combout\) # ((\A~combout\(0) & \Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \add_sub|inst|inst2~4_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \add_sub|inst|inst2~5_combout\);

-- Location: LCCOMB_X10_Y10_N20
\add_sub|inst1|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst1|inst3~0_combout\ = (\Op~combout\(1) & ((\Op~combout\(0) & (\B~combout\(1))) # (!\Op~combout\(0) & ((\A~combout\(1)))))) # (!\Op~combout\(1) & (\B~combout\(1) $ (\A~combout\(1) $ (\Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \add_sub|inst1|inst3~0_combout\);

-- Location: LCCOMB_X10_Y10_N26
\main_2to1_mux|inst1|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_2to1_mux|inst1|inst1~0_combout\ = (\B~combout\(1) & ((\A~combout\(1) & (!\Op~combout\(1))) # (!\A~combout\(1) & ((\Op~combout\(1)) # (\Op~combout\(0)))))) # (!\B~combout\(1) & (\A~combout\(1) & ((\Op~combout\(1)) # (\Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \main_2to1_mux|inst1|inst1~0_combout\);

-- Location: LCCOMB_X10_Y10_N22
\main_2to1_mux|inst1|inst1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_2to1_mux|inst1|inst1~1_combout\ = (\Op~combout\(2) & (\add_sub|inst|inst2~5_combout\ $ ((\add_sub|inst1|inst3~0_combout\)))) # (!\Op~combout\(2) & (((\main_2to1_mux|inst1|inst1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datab => \add_sub|inst|inst2~5_combout\,
	datac => \add_sub|inst1|inst3~0_combout\,
	datad => \main_2to1_mux|inst1|inst1~0_combout\,
	combout => \main_2to1_mux|inst1|inst1~1_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X8_Y11_N6
\add_sub|inst|inst3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \add_sub|inst|inst3~5_combout\ = (\add_sub|inst|inst3~4_combout\ & (((!\B~combout\(0) & \Op~combout\(1))) # (!\A~combout\(0)))) # (!\add_sub|inst|inst3~4_combout\ & ((\Op~combout\(1) & (!\B~combout\(0) & !\A~combout\(0))) # (!\Op~combout\(1) & 
-- ((\A~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|inst|inst3~4_combout\,
	datab => \B~combout\(0),
	datac => \Op~combout\(1),
	datad => \A~combout\(0),
	combout => \add_sub|inst|inst3~5_combout\);

-- Location: LCCOMB_X8_Y11_N0
\main_2to1_mux|inst|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_2to1_mux|inst|inst1~0_combout\ = (\A~combout\(0) & ((\B~combout\(0) & (!\Op~combout\(1))) # (!\B~combout\(0) & ((\Op~combout\(1)) # (\Op~combout\(0)))))) # (!\A~combout\(0) & (\B~combout\(0) & ((\Op~combout\(1)) # (\Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \main_2to1_mux|inst|inst1~0_combout\);

-- Location: LCCOMB_X8_Y11_N2
\main_2to1_mux|inst|inst1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \main_2to1_mux|inst|inst1~1_combout\ = (\Op~combout\(2) & (\add_sub|inst|inst3~5_combout\)) # (!\Op~combout\(2) & ((\main_2to1_mux|inst|inst1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub|inst|inst3~5_combout\,
	datab => \main_2to1_mux|inst|inst1~0_combout\,
	datac => \Op~combout\(2),
	combout => \main_2to1_mux|inst|inst1~1_combout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Co~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \add_sub|inst3|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Co);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \main_2to1_mux|inst3|inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(3));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \main_2to1_mux|inst2|inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(2));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \main_2to1_mux|inst1|inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(1));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \main_2to1_mux|inst|inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(0));
END structure;


