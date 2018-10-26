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
-- Generated on "10/25/2018 20:18:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MemoriaRAM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MemoriaRAM_vhd_vec_tst IS
END MemoriaRAM_vhd_vec_tst;
ARCHITECTURE MemoriaRAM_arch OF MemoriaRAM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL DataIn : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DataOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Endereco : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RAMWrite : STD_LOGIC;
COMPONENT MemoriaRAM
	PORT (
	Clock : IN STD_LOGIC;
	DataIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DataOut : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	Endereco : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RAMWrite : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MemoriaRAM
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	DataIn => DataIn,
	DataOut => DataOut,
	Endereco => Endereco,
	RAMWrite => RAMWrite
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
-- DataIn[15]
t_prcs_DataIn_15: PROCESS
BEGIN
	DataIn(15) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_15;
-- DataIn[14]
t_prcs_DataIn_14: PROCESS
BEGIN
	DataIn(14) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_14;
-- DataIn[13]
t_prcs_DataIn_13: PROCESS
BEGIN
	DataIn(13) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_13;
-- DataIn[12]
t_prcs_DataIn_12: PROCESS
BEGIN
	DataIn(12) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_12;
-- DataIn[11]
t_prcs_DataIn_11: PROCESS
BEGIN
	DataIn(11) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_11;
-- DataIn[10]
t_prcs_DataIn_10: PROCESS
BEGIN
	DataIn(10) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_10;
-- DataIn[9]
t_prcs_DataIn_9: PROCESS
BEGIN
	DataIn(9) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_9;
-- DataIn[8]
t_prcs_DataIn_8: PROCESS
BEGIN
	DataIn(8) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_8;
-- DataIn[7]
t_prcs_DataIn_7: PROCESS
BEGIN
	DataIn(7) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_7;
-- DataIn[6]
t_prcs_DataIn_6: PROCESS
BEGIN
	DataIn(6) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_6;
-- DataIn[5]
t_prcs_DataIn_5: PROCESS
BEGIN
	DataIn(5) <= '0';
	WAIT FOR 640000 ps;
	DataIn(5) <= '1';
WAIT;
END PROCESS t_prcs_DataIn_5;
-- DataIn[4]
t_prcs_DataIn_4: PROCESS
BEGIN
	DataIn(4) <= '0';
	WAIT FOR 320000 ps;
	DataIn(4) <= '1';
	WAIT FOR 320000 ps;
	DataIn(4) <= '0';
	WAIT FOR 320000 ps;
	DataIn(4) <= '1';
WAIT;
END PROCESS t_prcs_DataIn_4;
-- DataIn[3]
t_prcs_DataIn_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		DataIn(3) <= '0';
		WAIT FOR 160000 ps;
		DataIn(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	DataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_3;
-- DataIn[2]
t_prcs_DataIn_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		DataIn(2) <= '0';
		WAIT FOR 80000 ps;
		DataIn(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	DataIn(2) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_2;
-- DataIn[1]
t_prcs_DataIn_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		DataIn(1) <= '0';
		WAIT FOR 40000 ps;
		DataIn(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	DataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_1;
-- DataIn[0]
t_prcs_DataIn_0: PROCESS
BEGIN
LOOP
	DataIn(0) <= '0';
	WAIT FOR 20000 ps;
	DataIn(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DataIn_0;
-- Endereco[3]
t_prcs_Endereco_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Endereco(3) <= '0';
		WAIT FOR 160000 ps;
		Endereco(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	Endereco(3) <= '0';
WAIT;
END PROCESS t_prcs_Endereco_3;
-- Endereco[2]
t_prcs_Endereco_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Endereco(2) <= '0';
		WAIT FOR 80000 ps;
		Endereco(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	Endereco(2) <= '0';
WAIT;
END PROCESS t_prcs_Endereco_2;
-- Endereco[1]
t_prcs_Endereco_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Endereco(1) <= '0';
		WAIT FOR 40000 ps;
		Endereco(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	Endereco(1) <= '0';
WAIT;
END PROCESS t_prcs_Endereco_1;
-- Endereco[0]
t_prcs_Endereco_0: PROCESS
BEGIN
LOOP
	Endereco(0) <= '0';
	WAIT FOR 20000 ps;
	Endereco(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Endereco_0;

-- RAMWrite
t_prcs_RAMWrite: PROCESS
BEGIN
LOOP
	RAMWrite <= '0';
	WAIT FOR 10000 ps;
	RAMWrite <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RAMWrite;
END MemoriaRAM_arch;
