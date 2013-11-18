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
-- CREATED		"Sun Nov 17 20:49:53 2013"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY \4b_4to1MUX\ IS 
	PORT
	(
		I0 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I1 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I2 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I3 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		F :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END \4b_4to1MUX\;

ARCHITECTURE bdf_type OF \4b_4to1MUX\ IS 

COMPONENT \4to1mux\
	PORT(I0 : IN STD_LOGIC;
		 I1 : IN STD_LOGIC;
		 I2 : IN STD_LOGIC;
		 I3 : IN STD_LOGIC;
		 S : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 F : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	F_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : \4to1mux\
PORT MAP(I0 => I0(0),
		 I1 => I1(0),
		 I2 => I2(0),
		 I3 => I3(0),
		 S => S,
		 F => F_ALTERA_SYNTHESIZED(0));


b2v_inst1 : \4to1mux\
PORT MAP(I0 => I0(1),
		 I1 => I1(1),
		 I2 => I2(1),
		 I3 => I3(1),
		 S => S,
		 F => F_ALTERA_SYNTHESIZED(1));


b2v_inst2 : \4to1mux\
PORT MAP(I0 => I0(2),
		 I1 => I1(2),
		 I2 => I2(2),
		 I3 => I3(2),
		 S => S,
		 F => F_ALTERA_SYNTHESIZED(2));


b2v_inst3 : \4to1mux\
PORT MAP(I0 => I0(3),
		 I1 => I1(3),
		 I2 => I2(3),
		 I3 => I3(3),
		 S => S,
		 F => F_ALTERA_SYNTHESIZED(3));

F <= F_ALTERA_SYNTHESIZED;

END bdf_type;