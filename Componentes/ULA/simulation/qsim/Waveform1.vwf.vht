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
-- Generated on "10/26/2018 11:55:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULA_vhd_vec_tst IS
END ULA_vhd_vec_tst;
ARCHITECTURE ULA_arch OF ULA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL RegA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RegB : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SaidaULA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ULAOP : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Zero : STD_LOGIC;
COMPONENT ULA
	PORT (
	RegA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	RegB : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	SaidaULA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ULAOP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ULA
	PORT MAP (
-- list connections between master ports and signals
	RegA => RegA,
	RegB => RegB,
	SaidaULA => SaidaULA,
	ULAOP => ULAOP,
	Zero => Zero
	);
-- RegA[15]
t_prcs_RegA_15: PROCESS
BEGIN
	RegA(15) <= '0';
WAIT;
END PROCESS t_prcs_RegA_15;
-- RegA[14]
t_prcs_RegA_14: PROCESS
BEGIN
	RegA(14) <= '0';
WAIT;
END PROCESS t_prcs_RegA_14;
-- RegA[13]
t_prcs_RegA_13: PROCESS
BEGIN
	RegA(13) <= '0';
WAIT;
END PROCESS t_prcs_RegA_13;
-- RegA[12]
t_prcs_RegA_12: PROCESS
BEGIN
	RegA(12) <= '0';
WAIT;
END PROCESS t_prcs_RegA_12;
-- RegA[11]
t_prcs_RegA_11: PROCESS
BEGIN
	RegA(11) <= '0';
WAIT;
END PROCESS t_prcs_RegA_11;
-- RegA[10]
t_prcs_RegA_10: PROCESS
BEGIN
	RegA(10) <= '0';
WAIT;
END PROCESS t_prcs_RegA_10;
-- RegA[9]
t_prcs_RegA_9: PROCESS
BEGIN
	RegA(9) <= '0';
WAIT;
END PROCESS t_prcs_RegA_9;
-- RegA[8]
t_prcs_RegA_8: PROCESS
BEGIN
	RegA(8) <= '0';
WAIT;
END PROCESS t_prcs_RegA_8;
-- RegA[7]
t_prcs_RegA_7: PROCESS
BEGIN
	RegA(7) <= '0';
WAIT;
END PROCESS t_prcs_RegA_7;
-- RegA[6]
t_prcs_RegA_6: PROCESS
BEGIN
	RegA(6) <= '0';
WAIT;
END PROCESS t_prcs_RegA_6;
-- RegA[5]
t_prcs_RegA_5: PROCESS
BEGIN
	RegA(5) <= '0';
	WAIT FOR 640000 ps;
	RegA(5) <= '1';
WAIT;
END PROCESS t_prcs_RegA_5;
-- RegA[4]
t_prcs_RegA_4: PROCESS
BEGIN
	RegA(4) <= '0';
	WAIT FOR 320000 ps;
	RegA(4) <= '1';
	WAIT FOR 320000 ps;
	RegA(4) <= '0';
	WAIT FOR 320000 ps;
	RegA(4) <= '1';
WAIT;
END PROCESS t_prcs_RegA_4;
-- RegA[3]
t_prcs_RegA_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		RegA(3) <= '0';
		WAIT FOR 160000 ps;
		RegA(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	RegA(3) <= '0';
WAIT;
END PROCESS t_prcs_RegA_3;
-- RegA[2]
t_prcs_RegA_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		RegA(2) <= '0';
		WAIT FOR 80000 ps;
		RegA(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	RegA(2) <= '0';
WAIT;
END PROCESS t_prcs_RegA_2;
-- RegA[1]
t_prcs_RegA_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		RegA(1) <= '0';
		WAIT FOR 40000 ps;
		RegA(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	RegA(1) <= '0';
WAIT;
END PROCESS t_prcs_RegA_1;
-- RegA[0]
t_prcs_RegA_0: PROCESS
BEGIN
LOOP
	RegA(0) <= '0';
	WAIT FOR 20000 ps;
	RegA(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RegA_0;
-- RegB[15]
t_prcs_RegB_15: PROCESS
BEGIN
	RegB(15) <= '0';
WAIT;
END PROCESS t_prcs_RegB_15;
-- RegB[14]
t_prcs_RegB_14: PROCESS
BEGIN
	RegB(14) <= '0';
WAIT;
END PROCESS t_prcs_RegB_14;
-- RegB[13]
t_prcs_RegB_13: PROCESS
BEGIN
	RegB(13) <= '0';
WAIT;
END PROCESS t_prcs_RegB_13;
-- RegB[12]
t_prcs_RegB_12: PROCESS
BEGIN
	RegB(12) <= '0';
WAIT;
END PROCESS t_prcs_RegB_12;
-- RegB[11]
t_prcs_RegB_11: PROCESS
BEGIN
	RegB(11) <= '0';
WAIT;
END PROCESS t_prcs_RegB_11;
-- RegB[10]
t_prcs_RegB_10: PROCESS
BEGIN
	RegB(10) <= '0';
WAIT;
END PROCESS t_prcs_RegB_10;
-- RegB[9]
t_prcs_RegB_9: PROCESS
BEGIN
	RegB(9) <= '0';
WAIT;
END PROCESS t_prcs_RegB_9;
-- RegB[8]
t_prcs_RegB_8: PROCESS
BEGIN
	RegB(8) <= '0';
WAIT;
END PROCESS t_prcs_RegB_8;
-- RegB[7]
t_prcs_RegB_7: PROCESS
BEGIN
	RegB(7) <= '0';
WAIT;
END PROCESS t_prcs_RegB_7;
-- RegB[6]
t_prcs_RegB_6: PROCESS
BEGIN
	RegB(6) <= '0';
WAIT;
END PROCESS t_prcs_RegB_6;
-- RegB[5]
t_prcs_RegB_5: PROCESS
BEGIN
	RegB(5) <= '0';
	WAIT FOR 640000 ps;
	RegB(5) <= '1';
WAIT;
END PROCESS t_prcs_RegB_5;
-- RegB[4]
t_prcs_RegB_4: PROCESS
BEGIN
	RegB(4) <= '0';
	WAIT FOR 320000 ps;
	RegB(4) <= '1';
	WAIT FOR 320000 ps;
	RegB(4) <= '0';
	WAIT FOR 320000 ps;
	RegB(4) <= '1';
WAIT;
END PROCESS t_prcs_RegB_4;
-- RegB[3]
t_prcs_RegB_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		RegB(3) <= '0';
		WAIT FOR 160000 ps;
		RegB(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	RegB(3) <= '0';
WAIT;
END PROCESS t_prcs_RegB_3;
-- RegB[2]
t_prcs_RegB_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		RegB(2) <= '0';
		WAIT FOR 80000 ps;
		RegB(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	RegB(2) <= '0';
WAIT;
END PROCESS t_prcs_RegB_2;
-- RegB[1]
t_prcs_RegB_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		RegB(1) <= '0';
		WAIT FOR 40000 ps;
		RegB(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	RegB(1) <= '0';
WAIT;
END PROCESS t_prcs_RegB_1;
-- RegB[0]
t_prcs_RegB_0: PROCESS
BEGIN
LOOP
	RegB(0) <= '0';
	WAIT FOR 20000 ps;
	RegB(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RegB_0;
-- ULAOP[3]
t_prcs_ULAOP_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		ULAOP(3) <= '0';
		WAIT FOR 160000 ps;
		ULAOP(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	ULAOP(3) <= '0';
WAIT;
END PROCESS t_prcs_ULAOP_3;
-- ULAOP[2]
t_prcs_ULAOP_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		ULAOP(2) <= '0';
		WAIT FOR 80000 ps;
		ULAOP(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	ULAOP(2) <= '0';
WAIT;
END PROCESS t_prcs_ULAOP_2;
-- ULAOP[1]
t_prcs_ULAOP_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		ULAOP(1) <= '0';
		WAIT FOR 40000 ps;
		ULAOP(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	ULAOP(1) <= '0';
WAIT;
END PROCESS t_prcs_ULAOP_1;
-- ULAOP[0]
t_prcs_ULAOP_0: PROCESS
BEGIN
LOOP
	ULAOP(0) <= '0';
	WAIT FOR 20000 ps;
	ULAOP(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ULAOP_0;
END ULA_arch;
