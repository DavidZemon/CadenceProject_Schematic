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
-- CREATED		"Sat Nov 16 01:06:22 2013"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY \4b_nand\ IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		F :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END \4b_nand\;

ARCHITECTURE bdf_type OF \4b_nand\ IS 

SIGNAL	F_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



F_ALTERA_SYNTHESIZED(0) <= NOT(B(0) AND A(0));


F_ALTERA_SYNTHESIZED(1) <= NOT(B(1) AND A(1));


F_ALTERA_SYNTHESIZED(2) <= NOT(B(2) AND A(2));


F_ALTERA_SYNTHESIZED(3) <= NOT(B(3) AND A(3));

F <= F_ALTERA_SYNTHESIZED;

END bdf_type;