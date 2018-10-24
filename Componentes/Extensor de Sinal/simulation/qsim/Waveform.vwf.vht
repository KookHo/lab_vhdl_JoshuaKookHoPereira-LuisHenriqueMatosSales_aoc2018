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
-- Generated on "10/24/2018 17:56:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ExtensorDeSinal_4_16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ExtensorDeSinal_4_16_vhd_vec_tst IS
END ExtensorDeSinal_4_16_vhd_vec_tst;
ARCHITECTURE ExtensorDeSinal_4_16_arch OF ExtensorDeSinal_4_16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ExtensorDeSinal_4_16
	PORT (
	data_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	data_out : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ExtensorDeSinal_4_16
	PORT MAP (
-- list connections between master ports and signals
	data_in => data_in,
	data_out => data_out
	);
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		data_in(3) <= '0';
		WAIT FOR 240000 ps;
		data_in(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	data_in(3) <= '0';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		data_in(2) <= '0';
		WAIT FOR 120000 ps;
		data_in(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	data_in(2) <= '0';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		data_in(1) <= '0';
		WAIT FOR 60000 ps;
		data_in(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	data_in(1) <= '0';
WAIT;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		data_in(0) <= '0';
		WAIT FOR 30000 ps;
		data_in(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	data_in(0) <= '0';
	WAIT FOR 30000 ps;
	data_in(0) <= '1';
WAIT;
END PROCESS t_prcs_data_in_0;
END ExtensorDeSinal_4_16_arch;
