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

-- DATE "11/17/2013 02:14:39"

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
-- Co	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[3]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[2]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[1]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[0]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Op[1]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Op[2]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Ci	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Op[0]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \inst|inst5~combout\ : std_logic;
SIGNAL \inst|inst|inst3~4_combout\ : std_logic;
SIGNAL \inst|inst|inst3~5_combout\ : std_logic;
SIGNAL \inst4|inst1|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst|inst2~4_combout\ : std_logic;
SIGNAL \inst|inst6~combout\ : std_logic;
SIGNAL \inst14[3]~0_combout\ : std_logic;
SIGNAL \Ci~combout\ : std_logic;
SIGNAL \inst|inst|inst2~5_combout\ : std_logic;
SIGNAL \inst|inst4~combout\ : std_logic;
SIGNAL \inst|inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst14[3]~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst9~7_combout\ : std_logic;
SIGNAL \inst4|inst3|inst9~4_combout\ : std_logic;
SIGNAL \inst4|inst3|inst9~5_combout\ : std_logic;
SIGNAL \inst4|inst3|inst9~6_combout\ : std_logic;
SIGNAL \inst6|inst3|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst3~combout\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \inst4|inst2|inst9~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst9~1_combout\ : std_logic;
SIGNAL \inst6|inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst3~combout\ : std_logic;
SIGNAL \inst4|inst1|inst9~1_combout\ : std_logic;
SIGNAL \inst6|inst1|inst1~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst9~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst9~1_combout\ : std_logic;
SIGNAL \inst6|inst|inst1~0_combout\ : std_logic;
SIGNAL \Op~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);

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

-- Location: LCCOMB_X8_Y3_N12
\inst|inst5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst5~combout\ = (\Op~combout\(2) & (\Op~combout\(1) & !\B~combout\(2))) # (!\Op~combout\(2) & ((\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op~combout\(2),
	datac => \Op~combout\(1),
	datad => \B~combout\(2),
	combout => \inst|inst5~combout\);

-- Location: LCCOMB_X7_Y4_N0
\inst|inst|inst3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|inst3~4_combout\ = (\Op~combout\(1) & ((\Op~combout\(2) $ (!\B~combout\(0))))) # (!\Op~combout\(1) & ((\Op~combout\(2)) # (\Ci~combout\ $ (\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \Ci~combout\,
	datac => \Op~combout\(2),
	datad => \B~combout\(0),
	combout => \inst|inst|inst3~4_combout\);

-- Location: LCCOMB_X7_Y4_N10
\inst|inst|inst3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|inst3~5_combout\ = (\A~combout\(0) & ((\Op~combout\(1) & ((!\B~combout\(0)))) # (!\Op~combout\(1) & (!\inst|inst|inst3~4_combout\)))) # (!\A~combout\(0) & (((\inst|inst|inst3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst|inst|inst3~4_combout\,
	datac => \A~combout\(0),
	datad => \B~combout\(0),
	combout => \inst|inst|inst3~5_combout\);

-- Location: LCCOMB_X7_Y4_N12
\inst4|inst1|inst9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst1|inst9~0_combout\ = (\inst11~combout\ & ((\inst14[3]~1_combout\) # ((!\B~combout\(1) & !\A~combout\(1))))) # (!\inst11~combout\ & ((\B~combout\(1) & ((!\A~combout\(1)))) # (!\B~combout\(1) & ((\A~combout\(1)) # (!\inst14[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~combout\,
	datab => \B~combout\(1),
	datac => \inst14[3]~1_combout\,
	datad => \A~combout\(1),
	combout => \inst4|inst1|inst9~0_combout\);

-- Location: LCCOMB_X7_Y4_N24
\inst|inst|inst2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|inst2~4_combout\ = (\Op~combout\(1) & ((\Op~combout\(2) & ((\A~combout\(0)) # (!\B~combout\(0)))) # (!\Op~combout\(2) & ((\B~combout\(0)))))) # (!\Op~combout\(1) & (\A~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \A~combout\(0),
	datac => \Op~combout\(2),
	datad => \B~combout\(0),
	combout => \inst|inst|inst2~4_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X8_Y3_N2
\inst|inst6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst6~combout\ = (\Op~combout\(2) & (\Op~combout\(1) & !\B~combout\(3))) # (!\Op~combout\(2) & ((\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op~combout\(2),
	datac => \Op~combout\(1),
	datad => \B~combout\(3),
	combout => \inst|inst6~combout\);

-- Location: LCCOMB_X8_Y3_N0
\inst14[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14[3]~0_combout\ = (!\Op~combout\(2) & \Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op~combout\(2),
	datac => \Op~combout\(1),
	combout => \inst14[3]~0_combout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X7_Y4_N26
\inst|inst|inst2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|inst2~5_combout\ = (\inst|inst|inst2~4_combout\ & ((\Ci~combout\) # ((\Op~combout\(2)) # (\B~combout\(0))))) # (!\inst|inst|inst2~4_combout\ & (\Ci~combout\ & (!\Op~combout\(2) & \B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst2~4_combout\,
	datab => \Ci~combout\,
	datac => \Op~combout\(2),
	datad => \B~combout\(0),
	combout => \inst|inst|inst2~5_combout\);

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

-- Location: LCCOMB_X7_Y4_N8
\inst|inst4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4~combout\ = (\Op~combout\(2) & (\Op~combout\(1) & !\B~combout\(1))) # (!\Op~combout\(2) & ((\B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datac => \Op~combout\(2),
	datad => \B~combout\(1),
	combout => \inst|inst4~combout\);

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

-- Location: LCCOMB_X7_Y4_N18
\inst|inst1|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst2~0_combout\ = (\inst|inst|inst2~5_combout\ & ((\inst|inst4~combout\) # ((!\inst14[3]~0_combout\ & \A~combout\(1))))) # (!\inst|inst|inst2~5_combout\ & (!\inst14[3]~0_combout\ & (\inst|inst4~combout\ & \A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14[3]~0_combout\,
	datab => \inst|inst|inst2~5_combout\,
	datac => \inst|inst4~combout\,
	datad => \A~combout\(1),
	combout => \inst|inst1|inst2~0_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X8_Y3_N22
\inst|inst2|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst2~0_combout\ = (\inst|inst5~combout\ & ((\inst|inst1|inst2~0_combout\) # ((!\inst14[3]~0_combout\ & \A~combout\(2))))) # (!\inst|inst5~combout\ & (!\inst14[3]~0_combout\ & (\inst|inst1|inst2~0_combout\ & \A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~combout\,
	datab => \inst14[3]~0_combout\,
	datac => \inst|inst1|inst2~0_combout\,
	datad => \A~combout\(2),
	combout => \inst|inst2|inst2~0_combout\);

-- Location: LCCOMB_X8_Y3_N16
\inst|inst3|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|inst2~0_combout\ = (\inst|inst6~combout\ & ((\inst|inst2|inst2~0_combout\) # ((\A~combout\(3) & !\inst14[3]~0_combout\)))) # (!\inst|inst6~combout\ & (\A~combout\(3) & (\inst|inst2|inst2~0_combout\ & !\inst14[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \inst|inst6~combout\,
	datac => \inst|inst2|inst2~0_combout\,
	datad => \inst14[3]~0_combout\,
	combout => \inst|inst3|inst2~0_combout\);

-- Location: LCCOMB_X7_Y4_N4
\inst14[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14[3]~1_combout\ = (\Op~combout\(1)) # (\Op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datac => \Op~combout\(2),
	combout => \inst14[3]~1_combout\);

-- Location: LCCOMB_X8_Y3_N8
\inst4|inst3|inst9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst9~7_combout\ = (\Op~combout\(2) & (\A~combout\(3) $ (((\B~combout\(3)) # (!\Op~combout\(1)))))) # (!\Op~combout\(2) & (\B~combout\(3) $ (((\Op~combout\(1)) # (!\A~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \Op~combout\(2),
	datac => \Op~combout\(1),
	datad => \B~combout\(3),
	combout => \inst4|inst3|inst9~7_combout\);

-- Location: LCCOMB_X8_Y3_N4
\inst4|inst3|inst9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst9~4_combout\ = (\inst11~combout\ & (((\inst4|inst3|inst9~7_combout\)))) # (!\inst11~combout\ & (\B~combout\(3) $ (((\A~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~combout\,
	datab => \B~combout\(3),
	datac => \inst4|inst3|inst9~7_combout\,
	datad => \A~combout\(3),
	combout => \inst4|inst3|inst9~4_combout\);

-- Location: LCCOMB_X8_Y3_N14
\inst4|inst3|inst9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst9~5_combout\ = (\inst14[3]~1_combout\ & (\inst4|inst3|inst9~4_combout\ $ (((\inst11~combout\ & !\inst|inst2|inst2~0_combout\))))) # (!\inst14[3]~1_combout\ & (\inst11~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~combout\,
	datab => \inst14[3]~1_combout\,
	datac => \inst4|inst3|inst9~4_combout\,
	datad => \inst|inst2|inst2~0_combout\,
	combout => \inst4|inst3|inst9~5_combout\);

-- Location: LCCOMB_X8_Y3_N24
\inst4|inst3|inst9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst9~6_combout\ = (\inst14[3]~1_combout\ & (((\inst4|inst3|inst9~5_combout\)))) # (!\inst14[3]~1_combout\ & ((\A~combout\(3) & (!\inst4|inst3|inst9~5_combout\ & !\B~combout\(3))) # (!\A~combout\(3) & ((!\B~combout\(3)) # 
-- (!\inst4|inst3|inst9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \inst14[3]~1_combout\,
	datac => \inst4|inst3|inst9~5_combout\,
	datad => \B~combout\(3),
	combout => \inst4|inst3|inst9~6_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X8_Y3_N10
\inst6|inst3|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst3|inst1~0_combout\ = \inst4|inst3|inst9~6_combout\ $ (((\Op~combout\(2)) # ((\Op~combout\(1) & \Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst9~6_combout\,
	datab => \Op~combout\(2),
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst6|inst3|inst1~0_combout\);

-- Location: LCCOMB_X8_Y3_N28
\inst|inst2|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst3~combout\ = \inst|inst5~combout\ $ (\inst|inst1|inst2~0_combout\ $ (((!\inst14[3]~0_combout\ & \A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~combout\,
	datab => \inst14[3]~0_combout\,
	datac => \inst|inst1|inst2~0_combout\,
	datad => \A~combout\(2),
	combout => \inst|inst2|inst3~combout\);

-- Location: LCCOMB_X8_Y3_N18
inst11 : cycloneii_lcell_comb
-- Equation(s):
-- \inst11~combout\ = (\Op~combout\(2)) # ((!\Op~combout\(1) & \Op~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op~combout\(2),
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst11~combout\);

-- Location: LCCOMB_X8_Y3_N26
\inst4|inst2|inst9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst9~0_combout\ = (\inst14[3]~1_combout\ & ((\inst11~combout\ & ((\inst|inst2|inst3~combout\))) # (!\inst11~combout\ & (\A~combout\(2))))) # (!\inst14[3]~1_combout\ & (!\A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \inst|inst2|inst3~combout\,
	datac => \inst11~combout\,
	datad => \inst14[3]~1_combout\,
	combout => \inst4|inst2|inst9~0_combout\);

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

-- Location: LCCOMB_X8_Y3_N20
\inst4|inst2|inst9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst9~1_combout\ = (\inst4|inst2|inst9~0_combout\ & ((\inst14[3]~1_combout\ $ (!\inst11~combout\)) # (!\B~combout\(2)))) # (!\inst4|inst2|inst9~0_combout\ & (!\inst11~combout\ & (\inst14[3]~1_combout\ $ (!\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14[3]~1_combout\,
	datab => \inst4|inst2|inst9~0_combout\,
	datac => \inst11~combout\,
	datad => \B~combout\(2),
	combout => \inst4|inst2|inst9~1_combout\);

-- Location: LCCOMB_X8_Y3_N6
\inst6|inst2|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst2|inst1~0_combout\ = \inst4|inst2|inst9~1_combout\ $ (((\Op~combout\(2)) # ((\Op~combout\(1) & \Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst9~1_combout\,
	datab => \Op~combout\(2),
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst6|inst2|inst1~0_combout\);

-- Location: LCCOMB_X7_Y4_N30
\inst|inst1|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|inst3~combout\ = \inst|inst|inst2~5_combout\ $ (\inst|inst4~combout\ $ (((!\inst14[3]~0_combout\ & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14[3]~0_combout\,
	datab => \inst|inst|inst2~5_combout\,
	datac => \inst|inst4~combout\,
	datad => \A~combout\(1),
	combout => \inst|inst1|inst3~combout\);

-- Location: LCCOMB_X7_Y4_N22
\inst4|inst1|inst9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst1|inst9~1_combout\ = (\inst4|inst1|inst9~0_combout\ & ((\inst|inst1|inst3~combout\) # ((!\inst11~combout\) # (!\inst14[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|inst9~0_combout\,
	datab => \inst|inst1|inst3~combout\,
	datac => \inst14[3]~1_combout\,
	datad => \inst11~combout\,
	combout => \inst4|inst1|inst9~1_combout\);

-- Location: LCCOMB_X7_Y4_N16
\inst6|inst1|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst1~0_combout\ = \inst4|inst1|inst9~1_combout\ $ (((\Op~combout\(2)) # ((\Op~combout\(0) & \Op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datab => \inst4|inst1|inst9~1_combout\,
	datac => \Op~combout\(0),
	datad => \Op~combout\(1),
	combout => \inst6|inst1|inst1~0_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X7_Y4_N20
\inst4|inst|inst9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst|inst9~0_combout\ = (\inst14[3]~1_combout\ & ((\inst11~combout\ & (\inst|inst|inst3~5_combout\)) # (!\inst11~combout\ & ((\A~combout\(0)))))) # (!\inst14[3]~1_combout\ & (((!\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst3~5_combout\,
	datab => \inst14[3]~1_combout\,
	datac => \A~combout\(0),
	datad => \inst11~combout\,
	combout => \inst4|inst|inst9~0_combout\);

-- Location: LCCOMB_X7_Y4_N6
\inst4|inst|inst9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst|inst9~1_combout\ = (\inst4|inst|inst9~0_combout\ & ((\inst11~combout\ $ (!\inst14[3]~1_combout\)) # (!\B~combout\(0)))) # (!\inst4|inst|inst9~0_combout\ & (!\inst11~combout\ & (\inst14[3]~1_combout\ $ (!\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~combout\,
	datab => \inst14[3]~1_combout\,
	datac => \inst4|inst|inst9~0_combout\,
	datad => \B~combout\(0),
	combout => \inst4|inst|inst9~1_combout\);

-- Location: LCCOMB_X7_Y4_N2
\inst6|inst|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst|inst1~0_combout\ = \inst4|inst|inst9~1_combout\ $ (((\Op~combout\(2)) # ((\Op~combout\(1) & \Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \Op~combout\(0),
	datac => \Op~combout\(2),
	datad => \inst4|inst|inst9~1_combout\,
	combout => \inst6|inst|inst1~0_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|inst3|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Co);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst6|inst3|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(3));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst6|inst2|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst6|inst1|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(1));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst6|inst|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(0));
END structure;

