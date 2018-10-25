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
-- Generated on "10/25/2018 18:25:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Multiplexador4x1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Multiplexador4x1_vhd_vec_tst IS
END Multiplexador4x1_vhd_vec_tst;
ARCHITECTURE Multiplexador4x1_arch OF Multiplexador4x1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT Multiplexador4x1
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	D : IN STD_LOGIC;
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC;
	Z : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Multiplexador4x1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	S0 => S0,
	S1 => S1,
	Z => Z
	);

-- A
t_prcs_A: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		A <= '0';
		WAIT FOR 30000 ps;
		A <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
LOOP
	B <= '0';
	WAIT FOR 20000 ps;
	B <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B;

-- C
t_prcs_C: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		C <= '0';
		WAIT FOR 30000 ps;
		C <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	C <= '0';
	WAIT FOR 30000 ps;
	C <= '1';
WAIT;
END PROCESS t_prcs_C;

-- D
t_prcs_D: PROCESS
BEGIN
LOOP
	D <= '0';
	WAIT FOR 20000 ps;
	D <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D;

-- S0
t_prcs_S0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		S0 <= '0';
		WAIT FOR 30000 ps;
		S0 <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	S0 <= '0';
	WAIT FOR 30000 ps;
	S0 <= '1';
WAIT;
END PROCESS t_prcs_S0;

-- S1
t_prcs_S1: PROCESS
BEGIN
LOOP
	S1 <= '0';
	WAIT FOR 20000 ps;
	S1 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S1;
END Multiplexador4x1_arch;
