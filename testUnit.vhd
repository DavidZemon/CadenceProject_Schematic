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
-- CREATED		"Mon Nov 18 20:09:45 2013"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY testUnit IS 
	PORT
	(
		S :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		F :  OUT  STD_LOGIC
	);
END testUnit;

ARCHITECTURE bdf_type OF testUnit IS 

COMPONENT \2to1mux\
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 S : IN STD_LOGIC;
		 F : OUT STD_LOGIC
	);
END COMPONENT;



BEGIN 



b2v_inst : \2to1mux\
PORT MAP(A => A,
		 B => B,
		 S => S,
		 F => F);


END bdf_type;