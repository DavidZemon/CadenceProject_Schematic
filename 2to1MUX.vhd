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
-- CREATED		"Sun Nov 17 20:40:36 2013"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY \2to1MUX\ IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		S :  IN  STD_LOGIC;
		F :  OUT  STD_LOGIC
	);
END \2to1MUX\;

ARCHITECTURE bdf_type OF \2to1MUX\ IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_2 <= NOT(SYNTHESIZED_WIRE_0 AND A);


F <= NOT(SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_2);


SYNTHESIZED_WIRE_1 <= NOT(B AND S);


SYNTHESIZED_WIRE_0 <= NOT(S);



END bdf_type;