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
-- Generated on "10/24/2018 18:05:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ExtensorDeSinal_8_16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ExtensorDeSinal_8_16_vhd_vec_tst IS
END ExtensorDeSinal_8_16_vhd_vec_tst;
ARCHITECTURE ExtensorDeSinal_8_16_arch OF ExtensorDeSinal_8_16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ExtensorDeSinal_8_16
	PORT (
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_out : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ExtensorDeSinal_8_16
	PORT MAP (
-- list connections between master ports and signals
	data_in => data_in,
	data_out => data_out
	);
-- data_in[7]
t_prcs_data_in_7: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		data_in(7) <= '0';
		WAIT FOR 64000 ps;
		data_in(7) <= '1';
		WAIT FOR 64000 ps;
	END LOOP;
	data_in(7) <= '0';
	WAIT FOR 64000 ps;
	data_in(7) <= '1';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	FOR i IN 1 TO 15
	LOOP
		data_in(6) <= '0';
		WAIT FOR 32000 ps;
		data_in(6) <= '1';
		WAIT FOR 32000 ps;
	END LOOP;
	data_in(6) <= '0';
	WAIT FOR 32000 ps;
	data_in(6) <= '1';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	FOR i IN 1 TO 31
	LOOP
		data_in(5) <= '0';
		WAIT FOR 16000 ps;
		data_in(5) <= '1';
		WAIT FOR 16000 ps;
	END LOOP;
	data_in(5) <= '0';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	FOR i IN 1 TO 62
	LOOP
		data_in(4) <= '0';
		WAIT FOR 8000 ps;
		data_in(4) <= '1';
		WAIT FOR 8000 ps;
	END LOOP;
	data_in(4) <= '0';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
LOOP
	data_in(3) <= '0';
	WAIT FOR 4000 ps;
	data_in(3) <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
LOOP
	data_in(2) <= '0';
	WAIT FOR 2000 ps;
	data_in(2) <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
LOOP
	data_in(1) <= '0';
	WAIT FOR 1000 ps;
	data_in(1) <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
LOOP
	data_in(0) <= '0';
	WAIT FOR 500 ps;
	data_in(0) <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_in_0;
END ExtensorDeSinal_8_16_arch;
