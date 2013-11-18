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
-- CREATED		"Sun Nov 17 20:57:30 2013"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ALU IS 
	PORT
	(
		Ci :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Op :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		Co :  OUT  STD_LOGIC;
		F :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ALU;

ARCHITECTURE bdf_type OF ALU IS 

COMPONENT \4b_4to1mux\
	PORT(I0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 F : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT \4b_2to1mux\
	PORT(S : IN STD_LOGIC;
		 I0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 F : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT adder_subtractor
	PORT(Ci : IN STD_LOGIC;
		 op : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Co : OUT STD_LOGIC;
		 S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT \4b_and\
	PORT(A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 F : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT \4b_or\
	PORT(A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 F : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT \4b_xnor\
	PORT(A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 F : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT \4b_xor\
	PORT(A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 F : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	add_out :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	logic_out :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	S :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_15 <= "0000";



b2v_4to1_mux : \4b_4to1mux\
PORT MAP(I0 => SYNTHESIZED_WIRE_0,
		 I1 => SYNTHESIZED_WIRE_1,
		 I2 => SYNTHESIZED_WIRE_2,
		 I3 => SYNTHESIZED_WIRE_3,
		 S => S,
		 F => logic_out);


b2v_A_2to1_mux : \4b_2to1mux\
PORT MAP(S => SYNTHESIZED_WIRE_4,
		 I0 => A,
		 I1 => SYNTHESIZED_WIRE_15,
		 F => SYNTHESIZED_WIRE_8);


SYNTHESIZED_WIRE_4 <= Op(0) AND Op(1);


b2v_add_sub : adder_subtractor
PORT MAP(Ci => SYNTHESIZED_WIRE_6,
		 op => SYNTHESIZED_WIRE_7,
		 A => SYNTHESIZED_WIRE_8,
		 B => SYNTHESIZED_WIRE_9,
		 Co => Co,
		 S => add_out);


SYNTHESIZED_WIRE_13 <= NOT(Op(1));



b2v_and : \4b_and\
PORT MAP(A => A,
		 B => B,
		 F => SYNTHESIZED_WIRE_0);


b2v_B_2to1_mux : \4b_2to1mux\
PORT MAP(S => SYNTHESIZED_WIRE_10,
		 I0 => B,
		 I1 => SYNTHESIZED_WIRE_15,
		 F => SYNTHESIZED_WIRE_9);


SYNTHESIZED_WIRE_10 <= Op(1) AND SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_12 <= NOT(Op(0));



SYNTHESIZED_WIRE_6 <= Op(1) OR Ci;


SYNTHESIZED_WIRE_7 <= Op(0) AND SYNTHESIZED_WIRE_13;



b2v_main_2to1_mux : \4b_2to1mux\
PORT MAP(S => SYNTHESIZED_WIRE_14,
		 I0 => logic_out,
		 I1 => add_out,
		 F => F);

S(0) <= Op(0);


S(1) <= Op(1);


SYNTHESIZED_WIRE_14 <= Op(2);



b2v_or : \4b_or\
PORT MAP(A => A,
		 B => B,
		 F => SYNTHESIZED_WIRE_1);


b2v_xnor : \4b_xnor\
PORT MAP(A => A,
		 B => B,
		 F => SYNTHESIZED_WIRE_2);


b2v_xor : \4b_xor\
PORT MAP(A => A,
		 B => B,
		 F => SYNTHESIZED_WIRE_3);


END bdf_type;