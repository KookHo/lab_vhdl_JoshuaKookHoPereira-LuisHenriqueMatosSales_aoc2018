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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/25/2018 14:34:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Adder2Bits
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Adder2Bits_vhd_vec_tst IS
END Adder2Bits_vhd_vec_tst;
ARCHITECTURE Adder2Bits_arch OF Adder2Bits_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Adder2Bits
	PORT (
	A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Adder2Bits
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cin => Cin,
	Cout => Cout,
	S => S
	);
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A(1) <= '0';
		WAIT FOR 40000 ps;
		A(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
LOOP
	A(0) <= '0';
	WAIT FOR 20000 ps;
	A(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_0;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		B(1) <= '0';
		WAIT FOR 40000 ps;
		B(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
LOOP
	B(0) <= '0';
	WAIT FOR 20000 ps;
	B(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_0;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
LOOP
	Cin <= '0';
	WAIT FOR 20000 ps;
	Cin <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Cin;
END Adder2Bits_arch;
