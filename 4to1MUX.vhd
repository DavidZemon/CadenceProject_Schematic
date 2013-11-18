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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sat Nov 16 01:09:22 2013"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY \4to1MUX\ IS 
	PORT
	(
		I0 :  IN  STD_LOGIC;
		I1 :  IN  STD_LOGIC;
		I2 :  IN  STD_LOGIC;
		I3 :  IN  STD_LOGIC;
		S :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		F :  OUT  STD_LOGIC
	);
END \4to1MUX\;

ARCHITECTURE bdf_type OF \4to1MUX\ IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_2 AND SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_9 <= S(1) AND SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_3 <= NOT(S(1));



SYNTHESIZED_WIRE_1 <= I0 AND SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_0 <= S(0) AND I1;


SYNTHESIZED_WIRE_5 <= NOT(S(0));



SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_7 <= I2 AND SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_6 <= S(0) AND I3;


SYNTHESIZED_WIRE_8 <= NOT(S(0));



F <= SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10;


END bdf_type;