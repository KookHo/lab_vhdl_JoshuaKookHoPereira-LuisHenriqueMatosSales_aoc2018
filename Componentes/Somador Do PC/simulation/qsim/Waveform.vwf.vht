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
-- Generated on "10/25/2018 19:20:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SomadorPC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SomadorPC_vhd_vec_tst IS
END SomadorPC_vhd_vec_tst;
ARCHITECTURE SomadorPC_arch OF SomadorPC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL EA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL EB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SOMA : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT SomadorPC
	PORT (
	EA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	EB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	SOMA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SomadorPC
	PORT MAP (
-- list connections between master ports and signals
	EA => EA,
	EB => EB,
	SOMA => SOMA
	);
-- EA[31]
t_prcs_EA_31: PROCESS
BEGIN
	EA(31) <= '0';
WAIT;
END PROCESS t_prcs_EA_31;
-- EA[30]
t_prcs_EA_30: PROCESS
BEGIN
	EA(30) <= '0';
WAIT;
END PROCESS t_prcs_EA_30;
-- EA[29]
t_prcs_EA_29: PROCESS
BEGIN
	EA(29) <= '0';
WAIT;
END PROCESS t_prcs_EA_29;
-- EA[28]
t_prcs_EA_28: PROCESS
BEGIN
	EA(28) <= '0';
WAIT;
END PROCESS t_prcs_EA_28;
-- EA[27]
t_prcs_EA_27: PROCESS
BEGIN
	EA(27) <= '0';
WAIT;
END PROCESS t_prcs_EA_27;
-- EA[26]
t_prcs_EA_26: PROCESS
BEGIN
	EA(26) <= '0';
WAIT;
END PROCESS t_prcs_EA_26;
-- EA[25]
t_prcs_EA_25: PROCESS
BEGIN
	EA(25) <= '0';
WAIT;
END PROCESS t_prcs_EA_25;
-- EA[24]
t_prcs_EA_24: PROCESS
BEGIN
	EA(24) <= '0';
WAIT;
END PROCESS t_prcs_EA_24;
-- EA[23]
t_prcs_EA_23: PROCESS
BEGIN
	EA(23) <= '0';
WAIT;
END PROCESS t_prcs_EA_23;
-- EA[22]
t_prcs_EA_22: PROCESS
BEGIN
	EA(22) <= '0';
WAIT;
END PROCESS t_prcs_EA_22;
-- EA[21]
t_prcs_EA_21: PROCESS
BEGIN
	EA(21) <= '0';
WAIT;
END PROCESS t_prcs_EA_21;
-- EA[20]
t_prcs_EA_20: PROCESS
BEGIN
	EA(20) <= '0';
WAIT;
END PROCESS t_prcs_EA_20;
-- EA[19]
t_prcs_EA_19: PROCESS
BEGIN
	EA(19) <= '0';
WAIT;
END PROCESS t_prcs_EA_19;
-- EA[18]
t_prcs_EA_18: PROCESS
BEGIN
	EA(18) <= '0';
WAIT;
END PROCESS t_prcs_EA_18;
-- EA[17]
t_prcs_EA_17: PROCESS
BEGIN
	EA(17) <= '0';
WAIT;
END PROCESS t_prcs_EA_17;
-- EA[16]
t_prcs_EA_16: PROCESS
BEGIN
	EA(16) <= '0';
WAIT;
END PROCESS t_prcs_EA_16;
-- EA[15]
t_prcs_EA_15: PROCESS
BEGIN
	EA(15) <= '0';
WAIT;
END PROCESS t_prcs_EA_15;
-- EA[14]
t_prcs_EA_14: PROCESS
BEGIN
	EA(14) <= '0';
WAIT;
END PROCESS t_prcs_EA_14;
-- EA[13]
t_prcs_EA_13: PROCESS
BEGIN
	EA(13) <= '0';
WAIT;
END PROCESS t_prcs_EA_13;
-- EA[12]
t_prcs_EA_12: PROCESS
BEGIN
	EA(12) <= '0';
WAIT;
END PROCESS t_prcs_EA_12;
-- EA[11]
t_prcs_EA_11: PROCESS
BEGIN
	EA(11) <= '0';
WAIT;
END PROCESS t_prcs_EA_11;
-- EA[10]
t_prcs_EA_10: PROCESS
BEGIN
	EA(10) <= '0';
WAIT;
END PROCESS t_prcs_EA_10;
-- EA[9]
t_prcs_EA_9: PROCESS
BEGIN
	EA(9) <= '0';
WAIT;
END PROCESS t_prcs_EA_9;
-- EA[8]
t_prcs_EA_8: PROCESS
BEGIN
	EA(8) <= '0';
WAIT;
END PROCESS t_prcs_EA_8;
-- EA[7]
t_prcs_EA_7: PROCESS
BEGIN
	EA(7) <= '0';
WAIT;
END PROCESS t_prcs_EA_7;
-- EA[6]
t_prcs_EA_6: PROCESS
BEGIN
	EA(6) <= '0';
	WAIT FOR 640000 ps;
	EA(6) <= '1';
WAIT;
END PROCESS t_prcs_EA_6;
-- EA[5]
t_prcs_EA_5: PROCESS
BEGIN
	EA(5) <= '0';
	WAIT FOR 320000 ps;
	EA(5) <= '1';
	WAIT FOR 320000 ps;
	EA(5) <= '0';
	WAIT FOR 320000 ps;
	EA(5) <= '1';
WAIT;
END PROCESS t_prcs_EA_5;
-- EA[4]
t_prcs_EA_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		EA(4) <= '0';
		WAIT FOR 160000 ps;
		EA(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	EA(4) <= '0';
WAIT;
END PROCESS t_prcs_EA_4;
-- EA[3]
t_prcs_EA_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		EA(3) <= '0';
		WAIT FOR 80000 ps;
		EA(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	EA(3) <= '0';
WAIT;
END PROCESS t_prcs_EA_3;
-- EA[2]
t_prcs_EA_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		EA(2) <= '0';
		WAIT FOR 40000 ps;
		EA(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	EA(2) <= '0';
WAIT;
END PROCESS t_prcs_EA_2;
-- EA[1]
t_prcs_EA_1: PROCESS
BEGIN
LOOP
	EA(1) <= '0';
	WAIT FOR 20000 ps;
	EA(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_EA_1;
-- EA[0]
t_prcs_EA_0: PROCESS
BEGIN
LOOP
	EA(0) <= '0';
	WAIT FOR 10000 ps;
	EA(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_EA_0;
-- EB[31]
t_prcs_EB_31: PROCESS
BEGIN
	EB(31) <= '0';
WAIT;
END PROCESS t_prcs_EB_31;
-- EB[30]
t_prcs_EB_30: PROCESS
BEGIN
	EB(30) <= '0';
WAIT;
END PROCESS t_prcs_EB_30;
-- EB[29]
t_prcs_EB_29: PROCESS
BEGIN
	EB(29) <= '0';
WAIT;
END PROCESS t_prcs_EB_29;
-- EB[28]
t_prcs_EB_28: PROCESS
BEGIN
	EB(28) <= '0';
WAIT;
END PROCESS t_prcs_EB_28;
-- EB[27]
t_prcs_EB_27: PROCESS
BEGIN
	EB(27) <= '0';
WAIT;
END PROCESS t_prcs_EB_27;
-- EB[26]
t_prcs_EB_26: PROCESS
BEGIN
	EB(26) <= '0';
WAIT;
END PROCESS t_prcs_EB_26;
-- EB[25]
t_prcs_EB_25: PROCESS
BEGIN
	EB(25) <= '0';
WAIT;
END PROCESS t_prcs_EB_25;
-- EB[24]
t_prcs_EB_24: PROCESS
BEGIN
	EB(24) <= '0';
WAIT;
END PROCESS t_prcs_EB_24;
-- EB[23]
t_prcs_EB_23: PROCESS
BEGIN
	EB(23) <= '0';
WAIT;
END PROCESS t_prcs_EB_23;
-- EB[22]
t_prcs_EB_22: PROCESS
BEGIN
	EB(22) <= '0';
WAIT;
END PROCESS t_prcs_EB_22;
-- EB[21]
t_prcs_EB_21: PROCESS
BEGIN
	EB(21) <= '0';
WAIT;
END PROCESS t_prcs_EB_21;
-- EB[20]
t_prcs_EB_20: PROCESS
BEGIN
	EB(20) <= '0';
WAIT;
END PROCESS t_prcs_EB_20;
-- EB[19]
t_prcs_EB_19: PROCESS
BEGIN
	EB(19) <= '0';
WAIT;
END PROCESS t_prcs_EB_19;
-- EB[18]
t_prcs_EB_18: PROCESS
BEGIN
	EB(18) <= '0';
WAIT;
END PROCESS t_prcs_EB_18;
-- EB[17]
t_prcs_EB_17: PROCESS
BEGIN
	EB(17) <= '0';
WAIT;
END PROCESS t_prcs_EB_17;
-- EB[16]
t_prcs_EB_16: PROCESS
BEGIN
	EB(16) <= '0';
WAIT;
END PROCESS t_prcs_EB_16;
-- EB[15]
t_prcs_EB_15: PROCESS
BEGIN
	EB(15) <= '0';
WAIT;
END PROCESS t_prcs_EB_15;
-- EB[14]
t_prcs_EB_14: PROCESS
BEGIN
	EB(14) <= '0';
WAIT;
END PROCESS t_prcs_EB_14;
-- EB[13]
t_prcs_EB_13: PROCESS
BEGIN
	EB(13) <= '0';
WAIT;
END PROCESS t_prcs_EB_13;
-- EB[12]
t_prcs_EB_12: PROCESS
BEGIN
	EB(12) <= '0';
WAIT;
END PROCESS t_prcs_EB_12;
-- EB[11]
t_prcs_EB_11: PROCESS
BEGIN
	EB(11) <= '0';
WAIT;
END PROCESS t_prcs_EB_11;
-- EB[10]
t_prcs_EB_10: PROCESS
BEGIN
	EB(10) <= '0';
WAIT;
END PROCESS t_prcs_EB_10;
-- EB[9]
t_prcs_EB_9: PROCESS
BEGIN
	EB(9) <= '0';
WAIT;
END PROCESS t_prcs_EB_9;
-- EB[8]
t_prcs_EB_8: PROCESS
BEGIN
	EB(8) <= '0';
WAIT;
END PROCESS t_prcs_EB_8;
-- EB[7]
t_prcs_EB_7: PROCESS
BEGIN
	EB(7) <= '0';
WAIT;
END PROCESS t_prcs_EB_7;
-- EB[6]
t_prcs_EB_6: PROCESS
BEGIN
	EB(6) <= '0';
	WAIT FOR 640000 ps;
	EB(6) <= '1';
WAIT;
END PROCESS t_prcs_EB_6;
-- EB[5]
t_prcs_EB_5: PROCESS
BEGIN
	EB(5) <= '0';
	WAIT FOR 320000 ps;
	EB(5) <= '1';
	WAIT FOR 320000 ps;
	EB(5) <= '0';
	WAIT FOR 320000 ps;
	EB(5) <= '1';
WAIT;
END PROCESS t_prcs_EB_5;
-- EB[4]
t_prcs_EB_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		EB(4) <= '0';
		WAIT FOR 160000 ps;
		EB(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	EB(4) <= '0';
WAIT;
END PROCESS t_prcs_EB_4;
-- EB[3]
t_prcs_EB_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		EB(3) <= '0';
		WAIT FOR 80000 ps;
		EB(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	EB(3) <= '0';
WAIT;
END PROCESS t_prcs_EB_3;
-- EB[2]
t_prcs_EB_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		EB(2) <= '0';
		WAIT FOR 40000 ps;
		EB(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	EB(2) <= '0';
WAIT;
END PROCESS t_prcs_EB_2;
-- EB[1]
t_prcs_EB_1: PROCESS
BEGIN
LOOP
	EB(1) <= '0';
	WAIT FOR 20000 ps;
	EB(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_EB_1;
-- EB[0]
t_prcs_EB_0: PROCESS
BEGIN
LOOP
	EB(0) <= '0';
	WAIT FOR 10000 ps;
	EB(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_EB_0;
END SomadorPC_arch;
