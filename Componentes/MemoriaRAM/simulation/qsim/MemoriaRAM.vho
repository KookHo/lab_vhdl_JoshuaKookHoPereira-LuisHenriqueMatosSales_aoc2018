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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/25/2018 20:18:41"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MemoriaRAM IS
    PORT (
	Endereco : IN std_logic_vector(3 DOWNTO 0);
	DataIn : IN std_logic_vector(15 DOWNTO 0);
	DataOut : BUFFER std_logic_vector(15 DOWNTO 0);
	Clock : IN std_logic;
	RAMWrite : IN std_logic
	);
END MemoriaRAM;

ARCHITECTURE structure OF MemoriaRAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Endereco : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DataIn : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DataOut : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_RAMWrite : std_logic;
SIGNAL \DataOut[0]~output_o\ : std_logic;
SIGNAL \DataOut[1]~output_o\ : std_logic;
SIGNAL \DataOut[2]~output_o\ : std_logic;
SIGNAL \DataOut[3]~output_o\ : std_logic;
SIGNAL \DataOut[4]~output_o\ : std_logic;
SIGNAL \DataOut[5]~output_o\ : std_logic;
SIGNAL \DataOut[6]~output_o\ : std_logic;
SIGNAL \DataOut[7]~output_o\ : std_logic;
SIGNAL \DataOut[8]~output_o\ : std_logic;
SIGNAL \DataOut[9]~output_o\ : std_logic;
SIGNAL \DataOut[10]~output_o\ : std_logic;
SIGNAL \DataOut[11]~output_o\ : std_logic;
SIGNAL \DataOut[12]~output_o\ : std_logic;
SIGNAL \DataOut[13]~output_o\ : std_logic;
SIGNAL \DataOut[14]~output_o\ : std_logic;
SIGNAL \DataOut[15]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \DataIn[0]~input_o\ : std_logic;
SIGNAL \Endereco[0]~input_o\ : std_logic;
SIGNAL \Endereco[1]~input_o\ : std_logic;
SIGNAL \Endereco[2]~input_o\ : std_logic;
SIGNAL \Endereco[3]~input_o\ : std_logic;
SIGNAL \RAMWrite~input_o\ : std_logic;
SIGNAL \RAM~374_combout\ : std_logic;
SIGNAL \RAM~22_q\ : std_logic;
SIGNAL \RAM~375_combout\ : std_logic;
SIGNAL \RAM~38_q\ : std_logic;
SIGNAL \RAM~376_combout\ : std_logic;
SIGNAL \RAM~54_q\ : std_logic;
SIGNAL \RAM~377_combout\ : std_logic;
SIGNAL \RAM~70_q\ : std_logic;
SIGNAL \RAM~294_combout\ : std_logic;
SIGNAL \RAM~378_combout\ : std_logic;
SIGNAL \RAM~86_q\ : std_logic;
SIGNAL \RAM~379_combout\ : std_logic;
SIGNAL \RAM~102_q\ : std_logic;
SIGNAL \RAM~380_combout\ : std_logic;
SIGNAL \RAM~118_q\ : std_logic;
SIGNAL \RAM~381_combout\ : std_logic;
SIGNAL \RAM~134_q\ : std_logic;
SIGNAL \RAM~295_combout\ : std_logic;
SIGNAL \RAM~382_combout\ : std_logic;
SIGNAL \RAM~150_q\ : std_logic;
SIGNAL \RAM~383_combout\ : std_logic;
SIGNAL \RAM~166_q\ : std_logic;
SIGNAL \RAM~384_combout\ : std_logic;
SIGNAL \RAM~182_q\ : std_logic;
SIGNAL \RAM~385_combout\ : std_logic;
SIGNAL \RAM~198_q\ : std_logic;
SIGNAL \RAM~296_combout\ : std_logic;
SIGNAL \RAM~386_combout\ : std_logic;
SIGNAL \RAM~214_q\ : std_logic;
SIGNAL \RAM~387_combout\ : std_logic;
SIGNAL \RAM~230_q\ : std_logic;
SIGNAL \RAM~388_combout\ : std_logic;
SIGNAL \RAM~246_q\ : std_logic;
SIGNAL \RAM~389_combout\ : std_logic;
SIGNAL \RAM~262_q\ : std_logic;
SIGNAL \RAM~297_combout\ : std_logic;
SIGNAL \RAM~298_combout\ : std_logic;
SIGNAL \DataIn[1]~input_o\ : std_logic;
SIGNAL \RAM~23_q\ : std_logic;
SIGNAL \RAM~87_q\ : std_logic;
SIGNAL \RAM~151_q\ : std_logic;
SIGNAL \RAM~215_q\ : std_logic;
SIGNAL \RAM~299_combout\ : std_logic;
SIGNAL \RAM~39_q\ : std_logic;
SIGNAL \RAM~103_q\ : std_logic;
SIGNAL \RAM~167_q\ : std_logic;
SIGNAL \RAM~231_q\ : std_logic;
SIGNAL \RAM~300_combout\ : std_logic;
SIGNAL \RAM~55_q\ : std_logic;
SIGNAL \RAM~119_q\ : std_logic;
SIGNAL \RAM~183_q\ : std_logic;
SIGNAL \RAM~247_q\ : std_logic;
SIGNAL \RAM~301_combout\ : std_logic;
SIGNAL \RAM~71_q\ : std_logic;
SIGNAL \RAM~135_q\ : std_logic;
SIGNAL \RAM~199_q\ : std_logic;
SIGNAL \RAM~263_q\ : std_logic;
SIGNAL \RAM~302_combout\ : std_logic;
SIGNAL \RAM~303_combout\ : std_logic;
SIGNAL \DataIn[2]~input_o\ : std_logic;
SIGNAL \RAM~24_q\ : std_logic;
SIGNAL \RAM~40_q\ : std_logic;
SIGNAL \RAM~56_q\ : std_logic;
SIGNAL \RAM~72_q\ : std_logic;
SIGNAL \RAM~304_combout\ : std_logic;
SIGNAL \RAM~88_q\ : std_logic;
SIGNAL \RAM~104_q\ : std_logic;
SIGNAL \RAM~120_q\ : std_logic;
SIGNAL \RAM~136_q\ : std_logic;
SIGNAL \RAM~305_combout\ : std_logic;
SIGNAL \RAM~152_q\ : std_logic;
SIGNAL \RAM~168_q\ : std_logic;
SIGNAL \RAM~184_q\ : std_logic;
SIGNAL \RAM~200_q\ : std_logic;
SIGNAL \RAM~306_combout\ : std_logic;
SIGNAL \RAM~216_q\ : std_logic;
SIGNAL \RAM~232_q\ : std_logic;
SIGNAL \RAM~248_q\ : std_logic;
SIGNAL \RAM~264_q\ : std_logic;
SIGNAL \RAM~307_combout\ : std_logic;
SIGNAL \RAM~308_combout\ : std_logic;
SIGNAL \DataIn[3]~input_o\ : std_logic;
SIGNAL \RAM~25_q\ : std_logic;
SIGNAL \RAM~89_q\ : std_logic;
SIGNAL \RAM~153_q\ : std_logic;
SIGNAL \RAM~217_q\ : std_logic;
SIGNAL \RAM~309_combout\ : std_logic;
SIGNAL \RAM~41_q\ : std_logic;
SIGNAL \RAM~105_q\ : std_logic;
SIGNAL \RAM~169_q\ : std_logic;
SIGNAL \RAM~233_q\ : std_logic;
SIGNAL \RAM~310_combout\ : std_logic;
SIGNAL \RAM~57_q\ : std_logic;
SIGNAL \RAM~121_q\ : std_logic;
SIGNAL \RAM~185_q\ : std_logic;
SIGNAL \RAM~249_q\ : std_logic;
SIGNAL \RAM~311_combout\ : std_logic;
SIGNAL \RAM~73_q\ : std_logic;
SIGNAL \RAM~137_q\ : std_logic;
SIGNAL \RAM~201_q\ : std_logic;
SIGNAL \RAM~265_q\ : std_logic;
SIGNAL \RAM~312_combout\ : std_logic;
SIGNAL \RAM~313_combout\ : std_logic;
SIGNAL \DataIn[4]~input_o\ : std_logic;
SIGNAL \RAM~26_q\ : std_logic;
SIGNAL \RAM~42_q\ : std_logic;
SIGNAL \RAM~58_q\ : std_logic;
SIGNAL \RAM~74_q\ : std_logic;
SIGNAL \RAM~314_combout\ : std_logic;
SIGNAL \RAM~90_q\ : std_logic;
SIGNAL \RAM~106_q\ : std_logic;
SIGNAL \RAM~122_q\ : std_logic;
SIGNAL \RAM~138_q\ : std_logic;
SIGNAL \RAM~315_combout\ : std_logic;
SIGNAL \RAM~154_q\ : std_logic;
SIGNAL \RAM~170_q\ : std_logic;
SIGNAL \RAM~186_q\ : std_logic;
SIGNAL \RAM~202_q\ : std_logic;
SIGNAL \RAM~316_combout\ : std_logic;
SIGNAL \RAM~218_q\ : std_logic;
SIGNAL \RAM~234_q\ : std_logic;
SIGNAL \RAM~250_q\ : std_logic;
SIGNAL \RAM~266_q\ : std_logic;
SIGNAL \RAM~317_combout\ : std_logic;
SIGNAL \RAM~318_combout\ : std_logic;
SIGNAL \DataIn[5]~input_o\ : std_logic;
SIGNAL \RAM~27_q\ : std_logic;
SIGNAL \RAM~91_q\ : std_logic;
SIGNAL \RAM~155_q\ : std_logic;
SIGNAL \RAM~219_q\ : std_logic;
SIGNAL \RAM~319_combout\ : std_logic;
SIGNAL \RAM~43_q\ : std_logic;
SIGNAL \RAM~107_q\ : std_logic;
SIGNAL \RAM~171_q\ : std_logic;
SIGNAL \RAM~235_q\ : std_logic;
SIGNAL \RAM~320_combout\ : std_logic;
SIGNAL \RAM~59_q\ : std_logic;
SIGNAL \RAM~123_q\ : std_logic;
SIGNAL \RAM~187_q\ : std_logic;
SIGNAL \RAM~251_q\ : std_logic;
SIGNAL \RAM~321_combout\ : std_logic;
SIGNAL \RAM~75_q\ : std_logic;
SIGNAL \RAM~139_q\ : std_logic;
SIGNAL \RAM~203_q\ : std_logic;
SIGNAL \RAM~267_q\ : std_logic;
SIGNAL \RAM~322_combout\ : std_logic;
SIGNAL \RAM~323_combout\ : std_logic;
SIGNAL \DataIn[6]~input_o\ : std_logic;
SIGNAL \RAM~28_q\ : std_logic;
SIGNAL \RAM~44_q\ : std_logic;
SIGNAL \RAM~60_q\ : std_logic;
SIGNAL \RAM~76_q\ : std_logic;
SIGNAL \RAM~324_combout\ : std_logic;
SIGNAL \RAM~92_q\ : std_logic;
SIGNAL \RAM~108_q\ : std_logic;
SIGNAL \RAM~124_q\ : std_logic;
SIGNAL \RAM~140_q\ : std_logic;
SIGNAL \RAM~325_combout\ : std_logic;
SIGNAL \RAM~156_q\ : std_logic;
SIGNAL \RAM~172_q\ : std_logic;
SIGNAL \RAM~188_q\ : std_logic;
SIGNAL \RAM~204_q\ : std_logic;
SIGNAL \RAM~326_combout\ : std_logic;
SIGNAL \RAM~220_q\ : std_logic;
SIGNAL \RAM~236_q\ : std_logic;
SIGNAL \RAM~252_q\ : std_logic;
SIGNAL \RAM~268_q\ : std_logic;
SIGNAL \RAM~327_combout\ : std_logic;
SIGNAL \RAM~328_combout\ : std_logic;
SIGNAL \DataIn[7]~input_o\ : std_logic;
SIGNAL \RAM~29_q\ : std_logic;
SIGNAL \RAM~93_q\ : std_logic;
SIGNAL \RAM~157_q\ : std_logic;
SIGNAL \RAM~221_q\ : std_logic;
SIGNAL \RAM~329_combout\ : std_logic;
SIGNAL \RAM~45_q\ : std_logic;
SIGNAL \RAM~109_q\ : std_logic;
SIGNAL \RAM~173_q\ : std_logic;
SIGNAL \RAM~237_q\ : std_logic;
SIGNAL \RAM~330_combout\ : std_logic;
SIGNAL \RAM~61_q\ : std_logic;
SIGNAL \RAM~125_q\ : std_logic;
SIGNAL \RAM~189_q\ : std_logic;
SIGNAL \RAM~253_q\ : std_logic;
SIGNAL \RAM~331_combout\ : std_logic;
SIGNAL \RAM~77_q\ : std_logic;
SIGNAL \RAM~141_q\ : std_logic;
SIGNAL \RAM~205_q\ : std_logic;
SIGNAL \RAM~269_q\ : std_logic;
SIGNAL \RAM~332_combout\ : std_logic;
SIGNAL \RAM~333_combout\ : std_logic;
SIGNAL \DataIn[8]~input_o\ : std_logic;
SIGNAL \RAM~30_q\ : std_logic;
SIGNAL \RAM~46_q\ : std_logic;
SIGNAL \RAM~62_q\ : std_logic;
SIGNAL \RAM~78_q\ : std_logic;
SIGNAL \RAM~334_combout\ : std_logic;
SIGNAL \RAM~94_q\ : std_logic;
SIGNAL \RAM~110_q\ : std_logic;
SIGNAL \RAM~126_q\ : std_logic;
SIGNAL \RAM~142_q\ : std_logic;
SIGNAL \RAM~335_combout\ : std_logic;
SIGNAL \RAM~158_q\ : std_logic;
SIGNAL \RAM~174_q\ : std_logic;
SIGNAL \RAM~190_q\ : std_logic;
SIGNAL \RAM~206_q\ : std_logic;
SIGNAL \RAM~336_combout\ : std_logic;
SIGNAL \RAM~222_q\ : std_logic;
SIGNAL \RAM~238_q\ : std_logic;
SIGNAL \RAM~254_q\ : std_logic;
SIGNAL \RAM~270_q\ : std_logic;
SIGNAL \RAM~337_combout\ : std_logic;
SIGNAL \RAM~338_combout\ : std_logic;
SIGNAL \DataIn[9]~input_o\ : std_logic;
SIGNAL \RAM~31_q\ : std_logic;
SIGNAL \RAM~95_q\ : std_logic;
SIGNAL \RAM~159_q\ : std_logic;
SIGNAL \RAM~223_q\ : std_logic;
SIGNAL \RAM~339_combout\ : std_logic;
SIGNAL \RAM~47_q\ : std_logic;
SIGNAL \RAM~111_q\ : std_logic;
SIGNAL \RAM~175_q\ : std_logic;
SIGNAL \RAM~239_q\ : std_logic;
SIGNAL \RAM~340_combout\ : std_logic;
SIGNAL \RAM~63_q\ : std_logic;
SIGNAL \RAM~127_q\ : std_logic;
SIGNAL \RAM~191_q\ : std_logic;
SIGNAL \RAM~255_q\ : std_logic;
SIGNAL \RAM~341_combout\ : std_logic;
SIGNAL \RAM~79_q\ : std_logic;
SIGNAL \RAM~143_q\ : std_logic;
SIGNAL \RAM~207_q\ : std_logic;
SIGNAL \RAM~271_q\ : std_logic;
SIGNAL \RAM~342_combout\ : std_logic;
SIGNAL \RAM~343_combout\ : std_logic;
SIGNAL \DataIn[10]~input_o\ : std_logic;
SIGNAL \RAM~32_q\ : std_logic;
SIGNAL \RAM~48_q\ : std_logic;
SIGNAL \RAM~64_q\ : std_logic;
SIGNAL \RAM~80_q\ : std_logic;
SIGNAL \RAM~344_combout\ : std_logic;
SIGNAL \RAM~96_q\ : std_logic;
SIGNAL \RAM~112_q\ : std_logic;
SIGNAL \RAM~128_q\ : std_logic;
SIGNAL \RAM~144_q\ : std_logic;
SIGNAL \RAM~345_combout\ : std_logic;
SIGNAL \RAM~160_q\ : std_logic;
SIGNAL \RAM~176_q\ : std_logic;
SIGNAL \RAM~192_q\ : std_logic;
SIGNAL \RAM~208_q\ : std_logic;
SIGNAL \RAM~346_combout\ : std_logic;
SIGNAL \RAM~224_q\ : std_logic;
SIGNAL \RAM~240_q\ : std_logic;
SIGNAL \RAM~256_q\ : std_logic;
SIGNAL \RAM~272_q\ : std_logic;
SIGNAL \RAM~347_combout\ : std_logic;
SIGNAL \RAM~348_combout\ : std_logic;
SIGNAL \DataIn[11]~input_o\ : std_logic;
SIGNAL \RAM~33_q\ : std_logic;
SIGNAL \RAM~97_q\ : std_logic;
SIGNAL \RAM~161_q\ : std_logic;
SIGNAL \RAM~225_q\ : std_logic;
SIGNAL \RAM~349_combout\ : std_logic;
SIGNAL \RAM~49_q\ : std_logic;
SIGNAL \RAM~113_q\ : std_logic;
SIGNAL \RAM~177_q\ : std_logic;
SIGNAL \RAM~241_q\ : std_logic;
SIGNAL \RAM~350_combout\ : std_logic;
SIGNAL \RAM~65_q\ : std_logic;
SIGNAL \RAM~129_q\ : std_logic;
SIGNAL \RAM~193_q\ : std_logic;
SIGNAL \RAM~257_q\ : std_logic;
SIGNAL \RAM~351_combout\ : std_logic;
SIGNAL \RAM~81_q\ : std_logic;
SIGNAL \RAM~145_q\ : std_logic;
SIGNAL \RAM~209_q\ : std_logic;
SIGNAL \RAM~273_q\ : std_logic;
SIGNAL \RAM~352_combout\ : std_logic;
SIGNAL \RAM~353_combout\ : std_logic;
SIGNAL \DataIn[12]~input_o\ : std_logic;
SIGNAL \RAM~34_q\ : std_logic;
SIGNAL \RAM~50_q\ : std_logic;
SIGNAL \RAM~66_q\ : std_logic;
SIGNAL \RAM~82_q\ : std_logic;
SIGNAL \RAM~354_combout\ : std_logic;
SIGNAL \RAM~98_q\ : std_logic;
SIGNAL \RAM~114_q\ : std_logic;
SIGNAL \RAM~130_q\ : std_logic;
SIGNAL \RAM~146_q\ : std_logic;
SIGNAL \RAM~355_combout\ : std_logic;
SIGNAL \RAM~162_q\ : std_logic;
SIGNAL \RAM~178_q\ : std_logic;
SIGNAL \RAM~194_q\ : std_logic;
SIGNAL \RAM~210_q\ : std_logic;
SIGNAL \RAM~356_combout\ : std_logic;
SIGNAL \RAM~226_q\ : std_logic;
SIGNAL \RAM~242_q\ : std_logic;
SIGNAL \RAM~258_q\ : std_logic;
SIGNAL \RAM~274_q\ : std_logic;
SIGNAL \RAM~357_combout\ : std_logic;
SIGNAL \RAM~358_combout\ : std_logic;
SIGNAL \DataIn[13]~input_o\ : std_logic;
SIGNAL \RAM~35_q\ : std_logic;
SIGNAL \RAM~99_q\ : std_logic;
SIGNAL \RAM~163_q\ : std_logic;
SIGNAL \RAM~227_q\ : std_logic;
SIGNAL \RAM~359_combout\ : std_logic;
SIGNAL \RAM~51_q\ : std_logic;
SIGNAL \RAM~115_q\ : std_logic;
SIGNAL \RAM~179_q\ : std_logic;
SIGNAL \RAM~243_q\ : std_logic;
SIGNAL \RAM~360_combout\ : std_logic;
SIGNAL \RAM~67_q\ : std_logic;
SIGNAL \RAM~131_q\ : std_logic;
SIGNAL \RAM~195_q\ : std_logic;
SIGNAL \RAM~259_q\ : std_logic;
SIGNAL \RAM~361_combout\ : std_logic;
SIGNAL \RAM~83_q\ : std_logic;
SIGNAL \RAM~147_q\ : std_logic;
SIGNAL \RAM~211_q\ : std_logic;
SIGNAL \RAM~275_q\ : std_logic;
SIGNAL \RAM~362_combout\ : std_logic;
SIGNAL \RAM~363_combout\ : std_logic;
SIGNAL \DataIn[14]~input_o\ : std_logic;
SIGNAL \RAM~36_q\ : std_logic;
SIGNAL \RAM~52_q\ : std_logic;
SIGNAL \RAM~68_q\ : std_logic;
SIGNAL \RAM~84_q\ : std_logic;
SIGNAL \RAM~364_combout\ : std_logic;
SIGNAL \RAM~100_q\ : std_logic;
SIGNAL \RAM~116_q\ : std_logic;
SIGNAL \RAM~132_q\ : std_logic;
SIGNAL \RAM~148_q\ : std_logic;
SIGNAL \RAM~365_combout\ : std_logic;
SIGNAL \RAM~164_q\ : std_logic;
SIGNAL \RAM~180_q\ : std_logic;
SIGNAL \RAM~196_q\ : std_logic;
SIGNAL \RAM~212_q\ : std_logic;
SIGNAL \RAM~366_combout\ : std_logic;
SIGNAL \RAM~228_q\ : std_logic;
SIGNAL \RAM~244_q\ : std_logic;
SIGNAL \RAM~260_q\ : std_logic;
SIGNAL \RAM~276_q\ : std_logic;
SIGNAL \RAM~367_combout\ : std_logic;
SIGNAL \RAM~368_combout\ : std_logic;
SIGNAL \DataIn[15]~input_o\ : std_logic;
SIGNAL \RAM~37_q\ : std_logic;
SIGNAL \RAM~101_q\ : std_logic;
SIGNAL \RAM~165_q\ : std_logic;
SIGNAL \RAM~229_q\ : std_logic;
SIGNAL \RAM~369_combout\ : std_logic;
SIGNAL \RAM~53_q\ : std_logic;
SIGNAL \RAM~117_q\ : std_logic;
SIGNAL \RAM~181_q\ : std_logic;
SIGNAL \RAM~245_q\ : std_logic;
SIGNAL \RAM~370_combout\ : std_logic;
SIGNAL \RAM~69_q\ : std_logic;
SIGNAL \RAM~133_q\ : std_logic;
SIGNAL \RAM~197_q\ : std_logic;
SIGNAL \RAM~261_q\ : std_logic;
SIGNAL \RAM~371_combout\ : std_logic;
SIGNAL \RAM~85_q\ : std_logic;
SIGNAL \RAM~149_q\ : std_logic;
SIGNAL \RAM~213_q\ : std_logic;
SIGNAL \RAM~277_q\ : std_logic;
SIGNAL \RAM~372_combout\ : std_logic;
SIGNAL \RAM~373_combout\ : std_logic;
SIGNAL \ALT_INV_RAMWrite~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RAM~170_q\ : std_logic;
SIGNAL \ALT_INV_RAM~154_q\ : std_logic;
SIGNAL \ALT_INV_RAM~315_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~138_q\ : std_logic;
SIGNAL \ALT_INV_RAM~122_q\ : std_logic;
SIGNAL \ALT_INV_RAM~106_q\ : std_logic;
SIGNAL \ALT_INV_RAM~90_q\ : std_logic;
SIGNAL \ALT_INV_RAM~314_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~74_q\ : std_logic;
SIGNAL \ALT_INV_RAM~58_q\ : std_logic;
SIGNAL \ALT_INV_RAM~42_q\ : std_logic;
SIGNAL \ALT_INV_RAM~26_q\ : std_logic;
SIGNAL \ALT_INV_RAM~312_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~265_q\ : std_logic;
SIGNAL \ALT_INV_RAM~201_q\ : std_logic;
SIGNAL \ALT_INV_RAM~137_q\ : std_logic;
SIGNAL \ALT_INV_RAM~73_q\ : std_logic;
SIGNAL \ALT_INV_RAM~311_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~249_q\ : std_logic;
SIGNAL \ALT_INV_RAM~185_q\ : std_logic;
SIGNAL \ALT_INV_RAM~121_q\ : std_logic;
SIGNAL \ALT_INV_RAM~57_q\ : std_logic;
SIGNAL \ALT_INV_RAM~310_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~233_q\ : std_logic;
SIGNAL \ALT_INV_RAM~169_q\ : std_logic;
SIGNAL \ALT_INV_RAM~105_q\ : std_logic;
SIGNAL \ALT_INV_RAM~41_q\ : std_logic;
SIGNAL \ALT_INV_RAM~309_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~217_q\ : std_logic;
SIGNAL \ALT_INV_RAM~153_q\ : std_logic;
SIGNAL \ALT_INV_RAM~89_q\ : std_logic;
SIGNAL \ALT_INV_RAM~25_q\ : std_logic;
SIGNAL \ALT_INV_RAM~307_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~264_q\ : std_logic;
SIGNAL \ALT_INV_RAM~248_q\ : std_logic;
SIGNAL \ALT_INV_RAM~232_q\ : std_logic;
SIGNAL \ALT_INV_RAM~216_q\ : std_logic;
SIGNAL \ALT_INV_RAM~306_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~200_q\ : std_logic;
SIGNAL \ALT_INV_RAM~184_q\ : std_logic;
SIGNAL \ALT_INV_RAM~168_q\ : std_logic;
SIGNAL \ALT_INV_RAM~152_q\ : std_logic;
SIGNAL \ALT_INV_RAM~305_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~136_q\ : std_logic;
SIGNAL \ALT_INV_RAM~120_q\ : std_logic;
SIGNAL \ALT_INV_RAM~104_q\ : std_logic;
SIGNAL \ALT_INV_RAM~88_q\ : std_logic;
SIGNAL \ALT_INV_RAM~304_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~72_q\ : std_logic;
SIGNAL \ALT_INV_RAM~56_q\ : std_logic;
SIGNAL \ALT_INV_RAM~40_q\ : std_logic;
SIGNAL \ALT_INV_RAM~24_q\ : std_logic;
SIGNAL \ALT_INV_RAM~302_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~263_q\ : std_logic;
SIGNAL \ALT_INV_RAM~199_q\ : std_logic;
SIGNAL \ALT_INV_RAM~135_q\ : std_logic;
SIGNAL \ALT_INV_RAM~71_q\ : std_logic;
SIGNAL \ALT_INV_RAM~301_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~247_q\ : std_logic;
SIGNAL \ALT_INV_RAM~183_q\ : std_logic;
SIGNAL \ALT_INV_RAM~119_q\ : std_logic;
SIGNAL \ALT_INV_RAM~55_q\ : std_logic;
SIGNAL \ALT_INV_RAM~300_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~231_q\ : std_logic;
SIGNAL \ALT_INV_RAM~167_q\ : std_logic;
SIGNAL \ALT_INV_RAM~103_q\ : std_logic;
SIGNAL \ALT_INV_RAM~39_q\ : std_logic;
SIGNAL \ALT_INV_RAM~299_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~215_q\ : std_logic;
SIGNAL \ALT_INV_RAM~151_q\ : std_logic;
SIGNAL \ALT_INV_RAM~87_q\ : std_logic;
SIGNAL \ALT_INV_RAM~23_q\ : std_logic;
SIGNAL \ALT_INV_RAM~297_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~262_q\ : std_logic;
SIGNAL \ALT_INV_RAM~246_q\ : std_logic;
SIGNAL \ALT_INV_RAM~230_q\ : std_logic;
SIGNAL \ALT_INV_RAM~214_q\ : std_logic;
SIGNAL \ALT_INV_RAM~296_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~198_q\ : std_logic;
SIGNAL \ALT_INV_RAM~182_q\ : std_logic;
SIGNAL \ALT_INV_RAM~166_q\ : std_logic;
SIGNAL \ALT_INV_RAM~150_q\ : std_logic;
SIGNAL \ALT_INV_RAM~295_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~134_q\ : std_logic;
SIGNAL \ALT_INV_RAM~118_q\ : std_logic;
SIGNAL \ALT_INV_RAM~102_q\ : std_logic;
SIGNAL \ALT_INV_RAM~86_q\ : std_logic;
SIGNAL \ALT_INV_RAM~294_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~70_q\ : std_logic;
SIGNAL \ALT_INV_RAM~54_q\ : std_logic;
SIGNAL \ALT_INV_RAM~38_q\ : std_logic;
SIGNAL \ALT_INV_RAM~22_q\ : std_logic;
SIGNAL \ALT_INV_RAM~372_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~277_q\ : std_logic;
SIGNAL \ALT_INV_RAM~213_q\ : std_logic;
SIGNAL \ALT_INV_RAM~149_q\ : std_logic;
SIGNAL \ALT_INV_RAM~85_q\ : std_logic;
SIGNAL \ALT_INV_RAM~371_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~261_q\ : std_logic;
SIGNAL \ALT_INV_RAM~197_q\ : std_logic;
SIGNAL \ALT_INV_RAM~133_q\ : std_logic;
SIGNAL \ALT_INV_RAM~69_q\ : std_logic;
SIGNAL \ALT_INV_RAM~370_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~245_q\ : std_logic;
SIGNAL \ALT_INV_RAM~181_q\ : std_logic;
SIGNAL \ALT_INV_RAM~117_q\ : std_logic;
SIGNAL \ALT_INV_RAM~53_q\ : std_logic;
SIGNAL \ALT_INV_RAM~369_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~229_q\ : std_logic;
SIGNAL \ALT_INV_RAM~165_q\ : std_logic;
SIGNAL \ALT_INV_RAM~101_q\ : std_logic;
SIGNAL \ALT_INV_RAM~37_q\ : std_logic;
SIGNAL \ALT_INV_RAM~367_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~276_q\ : std_logic;
SIGNAL \ALT_INV_RAM~260_q\ : std_logic;
SIGNAL \ALT_INV_RAM~244_q\ : std_logic;
SIGNAL \ALT_INV_RAM~228_q\ : std_logic;
SIGNAL \ALT_INV_RAM~366_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~212_q\ : std_logic;
SIGNAL \ALT_INV_RAM~196_q\ : std_logic;
SIGNAL \ALT_INV_RAM~180_q\ : std_logic;
SIGNAL \ALT_INV_RAM~164_q\ : std_logic;
SIGNAL \ALT_INV_RAM~365_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~148_q\ : std_logic;
SIGNAL \ALT_INV_RAM~132_q\ : std_logic;
SIGNAL \ALT_INV_RAM~116_q\ : std_logic;
SIGNAL \ALT_INV_RAM~100_q\ : std_logic;
SIGNAL \ALT_INV_RAM~364_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~84_q\ : std_logic;
SIGNAL \ALT_INV_RAM~68_q\ : std_logic;
SIGNAL \ALT_INV_RAM~52_q\ : std_logic;
SIGNAL \ALT_INV_RAM~36_q\ : std_logic;
SIGNAL \ALT_INV_RAM~362_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~275_q\ : std_logic;
SIGNAL \ALT_INV_RAM~211_q\ : std_logic;
SIGNAL \ALT_INV_RAM~147_q\ : std_logic;
SIGNAL \ALT_INV_RAM~83_q\ : std_logic;
SIGNAL \ALT_INV_RAM~361_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~259_q\ : std_logic;
SIGNAL \ALT_INV_RAM~195_q\ : std_logic;
SIGNAL \ALT_INV_RAM~131_q\ : std_logic;
SIGNAL \ALT_INV_RAM~67_q\ : std_logic;
SIGNAL \ALT_INV_RAM~360_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~243_q\ : std_logic;
SIGNAL \ALT_INV_RAM~179_q\ : std_logic;
SIGNAL \ALT_INV_RAM~115_q\ : std_logic;
SIGNAL \ALT_INV_RAM~51_q\ : std_logic;
SIGNAL \ALT_INV_RAM~359_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~227_q\ : std_logic;
SIGNAL \ALT_INV_RAM~163_q\ : std_logic;
SIGNAL \ALT_INV_RAM~99_q\ : std_logic;
SIGNAL \ALT_INV_RAM~35_q\ : std_logic;
SIGNAL \ALT_INV_RAM~357_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~274_q\ : std_logic;
SIGNAL \ALT_INV_RAM~258_q\ : std_logic;
SIGNAL \ALT_INV_RAM~242_q\ : std_logic;
SIGNAL \ALT_INV_RAM~226_q\ : std_logic;
SIGNAL \ALT_INV_RAM~356_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~210_q\ : std_logic;
SIGNAL \ALT_INV_RAM~194_q\ : std_logic;
SIGNAL \ALT_INV_RAM~178_q\ : std_logic;
SIGNAL \ALT_INV_RAM~162_q\ : std_logic;
SIGNAL \ALT_INV_RAM~355_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~146_q\ : std_logic;
SIGNAL \ALT_INV_RAM~130_q\ : std_logic;
SIGNAL \ALT_INV_RAM~114_q\ : std_logic;
SIGNAL \ALT_INV_RAM~98_q\ : std_logic;
SIGNAL \ALT_INV_RAM~354_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~82_q\ : std_logic;
SIGNAL \ALT_INV_RAM~66_q\ : std_logic;
SIGNAL \ALT_INV_RAM~50_q\ : std_logic;
SIGNAL \ALT_INV_RAM~34_q\ : std_logic;
SIGNAL \ALT_INV_RAM~352_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~273_q\ : std_logic;
SIGNAL \ALT_INV_RAM~209_q\ : std_logic;
SIGNAL \ALT_INV_RAM~145_q\ : std_logic;
SIGNAL \ALT_INV_RAM~81_q\ : std_logic;
SIGNAL \ALT_INV_RAM~351_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~257_q\ : std_logic;
SIGNAL \ALT_INV_RAM~193_q\ : std_logic;
SIGNAL \ALT_INV_RAM~129_q\ : std_logic;
SIGNAL \ALT_INV_RAM~65_q\ : std_logic;
SIGNAL \ALT_INV_RAM~350_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~241_q\ : std_logic;
SIGNAL \ALT_INV_RAM~177_q\ : std_logic;
SIGNAL \ALT_INV_RAM~113_q\ : std_logic;
SIGNAL \ALT_INV_RAM~49_q\ : std_logic;
SIGNAL \ALT_INV_RAM~349_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~225_q\ : std_logic;
SIGNAL \ALT_INV_RAM~161_q\ : std_logic;
SIGNAL \ALT_INV_RAM~97_q\ : std_logic;
SIGNAL \ALT_INV_RAM~33_q\ : std_logic;
SIGNAL \ALT_INV_RAM~347_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~272_q\ : std_logic;
SIGNAL \ALT_INV_RAM~256_q\ : std_logic;
SIGNAL \ALT_INV_RAM~240_q\ : std_logic;
SIGNAL \ALT_INV_RAM~224_q\ : std_logic;
SIGNAL \ALT_INV_RAM~346_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~208_q\ : std_logic;
SIGNAL \ALT_INV_RAM~192_q\ : std_logic;
SIGNAL \ALT_INV_RAM~176_q\ : std_logic;
SIGNAL \ALT_INV_RAM~160_q\ : std_logic;
SIGNAL \ALT_INV_RAM~345_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~144_q\ : std_logic;
SIGNAL \ALT_INV_RAM~128_q\ : std_logic;
SIGNAL \ALT_INV_RAM~112_q\ : std_logic;
SIGNAL \ALT_INV_RAM~96_q\ : std_logic;
SIGNAL \ALT_INV_RAM~344_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~80_q\ : std_logic;
SIGNAL \ALT_INV_RAM~64_q\ : std_logic;
SIGNAL \ALT_INV_RAM~48_q\ : std_logic;
SIGNAL \ALT_INV_RAM~32_q\ : std_logic;
SIGNAL \ALT_INV_RAM~342_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~271_q\ : std_logic;
SIGNAL \ALT_INV_RAM~207_q\ : std_logic;
SIGNAL \ALT_INV_RAM~143_q\ : std_logic;
SIGNAL \ALT_INV_RAM~79_q\ : std_logic;
SIGNAL \ALT_INV_RAM~341_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~255_q\ : std_logic;
SIGNAL \ALT_INV_RAM~191_q\ : std_logic;
SIGNAL \ALT_INV_RAM~127_q\ : std_logic;
SIGNAL \ALT_INV_RAM~63_q\ : std_logic;
SIGNAL \ALT_INV_RAM~340_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~239_q\ : std_logic;
SIGNAL \ALT_INV_RAM~175_q\ : std_logic;
SIGNAL \ALT_INV_RAM~111_q\ : std_logic;
SIGNAL \ALT_INV_RAM~47_q\ : std_logic;
SIGNAL \ALT_INV_RAM~339_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~223_q\ : std_logic;
SIGNAL \ALT_INV_RAM~159_q\ : std_logic;
SIGNAL \ALT_INV_RAM~95_q\ : std_logic;
SIGNAL \ALT_INV_RAM~31_q\ : std_logic;
SIGNAL \ALT_INV_RAM~337_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~270_q\ : std_logic;
SIGNAL \ALT_INV_RAM~254_q\ : std_logic;
SIGNAL \ALT_INV_RAM~238_q\ : std_logic;
SIGNAL \ALT_INV_RAM~222_q\ : std_logic;
SIGNAL \ALT_INV_RAM~336_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~206_q\ : std_logic;
SIGNAL \ALT_INV_RAM~190_q\ : std_logic;
SIGNAL \ALT_INV_RAM~174_q\ : std_logic;
SIGNAL \ALT_INV_RAM~158_q\ : std_logic;
SIGNAL \ALT_INV_RAM~335_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~142_q\ : std_logic;
SIGNAL \ALT_INV_RAM~126_q\ : std_logic;
SIGNAL \ALT_INV_RAM~110_q\ : std_logic;
SIGNAL \ALT_INV_RAM~94_q\ : std_logic;
SIGNAL \ALT_INV_RAM~334_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~78_q\ : std_logic;
SIGNAL \ALT_INV_RAM~62_q\ : std_logic;
SIGNAL \ALT_INV_RAM~46_q\ : std_logic;
SIGNAL \ALT_INV_RAM~30_q\ : std_logic;
SIGNAL \ALT_INV_RAM~332_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~269_q\ : std_logic;
SIGNAL \ALT_INV_RAM~205_q\ : std_logic;
SIGNAL \ALT_INV_RAM~141_q\ : std_logic;
SIGNAL \ALT_INV_RAM~77_q\ : std_logic;
SIGNAL \ALT_INV_RAM~331_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~253_q\ : std_logic;
SIGNAL \ALT_INV_RAM~189_q\ : std_logic;
SIGNAL \ALT_INV_RAM~125_q\ : std_logic;
SIGNAL \ALT_INV_RAM~61_q\ : std_logic;
SIGNAL \ALT_INV_RAM~330_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~237_q\ : std_logic;
SIGNAL \ALT_INV_RAM~173_q\ : std_logic;
SIGNAL \ALT_INV_RAM~109_q\ : std_logic;
SIGNAL \ALT_INV_RAM~45_q\ : std_logic;
SIGNAL \ALT_INV_RAM~329_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~221_q\ : std_logic;
SIGNAL \ALT_INV_RAM~157_q\ : std_logic;
SIGNAL \ALT_INV_RAM~93_q\ : std_logic;
SIGNAL \ALT_INV_RAM~29_q\ : std_logic;
SIGNAL \ALT_INV_RAM~327_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~268_q\ : std_logic;
SIGNAL \ALT_INV_RAM~252_q\ : std_logic;
SIGNAL \ALT_INV_RAM~236_q\ : std_logic;
SIGNAL \ALT_INV_RAM~220_q\ : std_logic;
SIGNAL \ALT_INV_RAM~326_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~204_q\ : std_logic;
SIGNAL \ALT_INV_RAM~188_q\ : std_logic;
SIGNAL \ALT_INV_RAM~172_q\ : std_logic;
SIGNAL \ALT_INV_RAM~156_q\ : std_logic;
SIGNAL \ALT_INV_RAM~325_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~140_q\ : std_logic;
SIGNAL \ALT_INV_RAM~124_q\ : std_logic;
SIGNAL \ALT_INV_RAM~108_q\ : std_logic;
SIGNAL \ALT_INV_RAM~92_q\ : std_logic;
SIGNAL \ALT_INV_RAM~324_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~76_q\ : std_logic;
SIGNAL \ALT_INV_RAM~60_q\ : std_logic;
SIGNAL \ALT_INV_RAM~44_q\ : std_logic;
SIGNAL \ALT_INV_RAM~28_q\ : std_logic;
SIGNAL \ALT_INV_RAM~322_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~267_q\ : std_logic;
SIGNAL \ALT_INV_RAM~203_q\ : std_logic;
SIGNAL \ALT_INV_RAM~139_q\ : std_logic;
SIGNAL \ALT_INV_RAM~75_q\ : std_logic;
SIGNAL \ALT_INV_RAM~321_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~251_q\ : std_logic;
SIGNAL \ALT_INV_RAM~187_q\ : std_logic;
SIGNAL \ALT_INV_RAM~123_q\ : std_logic;
SIGNAL \ALT_INV_RAM~59_q\ : std_logic;
SIGNAL \ALT_INV_RAM~320_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~235_q\ : std_logic;
SIGNAL \ALT_INV_RAM~171_q\ : std_logic;
SIGNAL \ALT_INV_RAM~107_q\ : std_logic;
SIGNAL \ALT_INV_RAM~43_q\ : std_logic;
SIGNAL \ALT_INV_RAM~319_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~219_q\ : std_logic;
SIGNAL \ALT_INV_RAM~155_q\ : std_logic;
SIGNAL \ALT_INV_RAM~91_q\ : std_logic;
SIGNAL \ALT_INV_RAM~27_q\ : std_logic;
SIGNAL \ALT_INV_RAM~317_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~266_q\ : std_logic;
SIGNAL \ALT_INV_RAM~250_q\ : std_logic;
SIGNAL \ALT_INV_RAM~234_q\ : std_logic;
SIGNAL \ALT_INV_RAM~218_q\ : std_logic;
SIGNAL \ALT_INV_RAM~316_combout\ : std_logic;
SIGNAL \ALT_INV_RAM~202_q\ : std_logic;
SIGNAL \ALT_INV_RAM~186_q\ : std_logic;

BEGIN

ww_Endereco <= Endereco;
ww_DataIn <= DataIn;
DataOut <= ww_DataOut;
ww_Clock <= Clock;
ww_RAMWrite <= RAMWrite;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RAMWrite~input_o\ <= NOT \RAMWrite~input_o\;
\ALT_INV_Endereco[3]~input_o\ <= NOT \Endereco[3]~input_o\;
\ALT_INV_Endereco[2]~input_o\ <= NOT \Endereco[2]~input_o\;
\ALT_INV_Endereco[1]~input_o\ <= NOT \Endereco[1]~input_o\;
\ALT_INV_Endereco[0]~input_o\ <= NOT \Endereco[0]~input_o\;
\ALT_INV_RAM~170_q\ <= NOT \RAM~170_q\;
\ALT_INV_RAM~154_q\ <= NOT \RAM~154_q\;
\ALT_INV_RAM~315_combout\ <= NOT \RAM~315_combout\;
\ALT_INV_RAM~138_q\ <= NOT \RAM~138_q\;
\ALT_INV_RAM~122_q\ <= NOT \RAM~122_q\;
\ALT_INV_RAM~106_q\ <= NOT \RAM~106_q\;
\ALT_INV_RAM~90_q\ <= NOT \RAM~90_q\;
\ALT_INV_RAM~314_combout\ <= NOT \RAM~314_combout\;
\ALT_INV_RAM~74_q\ <= NOT \RAM~74_q\;
\ALT_INV_RAM~58_q\ <= NOT \RAM~58_q\;
\ALT_INV_RAM~42_q\ <= NOT \RAM~42_q\;
\ALT_INV_RAM~26_q\ <= NOT \RAM~26_q\;
\ALT_INV_RAM~312_combout\ <= NOT \RAM~312_combout\;
\ALT_INV_RAM~265_q\ <= NOT \RAM~265_q\;
\ALT_INV_RAM~201_q\ <= NOT \RAM~201_q\;
\ALT_INV_RAM~137_q\ <= NOT \RAM~137_q\;
\ALT_INV_RAM~73_q\ <= NOT \RAM~73_q\;
\ALT_INV_RAM~311_combout\ <= NOT \RAM~311_combout\;
\ALT_INV_RAM~249_q\ <= NOT \RAM~249_q\;
\ALT_INV_RAM~185_q\ <= NOT \RAM~185_q\;
\ALT_INV_RAM~121_q\ <= NOT \RAM~121_q\;
\ALT_INV_RAM~57_q\ <= NOT \RAM~57_q\;
\ALT_INV_RAM~310_combout\ <= NOT \RAM~310_combout\;
\ALT_INV_RAM~233_q\ <= NOT \RAM~233_q\;
\ALT_INV_RAM~169_q\ <= NOT \RAM~169_q\;
\ALT_INV_RAM~105_q\ <= NOT \RAM~105_q\;
\ALT_INV_RAM~41_q\ <= NOT \RAM~41_q\;
\ALT_INV_RAM~309_combout\ <= NOT \RAM~309_combout\;
\ALT_INV_RAM~217_q\ <= NOT \RAM~217_q\;
\ALT_INV_RAM~153_q\ <= NOT \RAM~153_q\;
\ALT_INV_RAM~89_q\ <= NOT \RAM~89_q\;
\ALT_INV_RAM~25_q\ <= NOT \RAM~25_q\;
\ALT_INV_RAM~307_combout\ <= NOT \RAM~307_combout\;
\ALT_INV_RAM~264_q\ <= NOT \RAM~264_q\;
\ALT_INV_RAM~248_q\ <= NOT \RAM~248_q\;
\ALT_INV_RAM~232_q\ <= NOT \RAM~232_q\;
\ALT_INV_RAM~216_q\ <= NOT \RAM~216_q\;
\ALT_INV_RAM~306_combout\ <= NOT \RAM~306_combout\;
\ALT_INV_RAM~200_q\ <= NOT \RAM~200_q\;
\ALT_INV_RAM~184_q\ <= NOT \RAM~184_q\;
\ALT_INV_RAM~168_q\ <= NOT \RAM~168_q\;
\ALT_INV_RAM~152_q\ <= NOT \RAM~152_q\;
\ALT_INV_RAM~305_combout\ <= NOT \RAM~305_combout\;
\ALT_INV_RAM~136_q\ <= NOT \RAM~136_q\;
\ALT_INV_RAM~120_q\ <= NOT \RAM~120_q\;
\ALT_INV_RAM~104_q\ <= NOT \RAM~104_q\;
\ALT_INV_RAM~88_q\ <= NOT \RAM~88_q\;
\ALT_INV_RAM~304_combout\ <= NOT \RAM~304_combout\;
\ALT_INV_RAM~72_q\ <= NOT \RAM~72_q\;
\ALT_INV_RAM~56_q\ <= NOT \RAM~56_q\;
\ALT_INV_RAM~40_q\ <= NOT \RAM~40_q\;
\ALT_INV_RAM~24_q\ <= NOT \RAM~24_q\;
\ALT_INV_RAM~302_combout\ <= NOT \RAM~302_combout\;
\ALT_INV_RAM~263_q\ <= NOT \RAM~263_q\;
\ALT_INV_RAM~199_q\ <= NOT \RAM~199_q\;
\ALT_INV_RAM~135_q\ <= NOT \RAM~135_q\;
\ALT_INV_RAM~71_q\ <= NOT \RAM~71_q\;
\ALT_INV_RAM~301_combout\ <= NOT \RAM~301_combout\;
\ALT_INV_RAM~247_q\ <= NOT \RAM~247_q\;
\ALT_INV_RAM~183_q\ <= NOT \RAM~183_q\;
\ALT_INV_RAM~119_q\ <= NOT \RAM~119_q\;
\ALT_INV_RAM~55_q\ <= NOT \RAM~55_q\;
\ALT_INV_RAM~300_combout\ <= NOT \RAM~300_combout\;
\ALT_INV_RAM~231_q\ <= NOT \RAM~231_q\;
\ALT_INV_RAM~167_q\ <= NOT \RAM~167_q\;
\ALT_INV_RAM~103_q\ <= NOT \RAM~103_q\;
\ALT_INV_RAM~39_q\ <= NOT \RAM~39_q\;
\ALT_INV_RAM~299_combout\ <= NOT \RAM~299_combout\;
\ALT_INV_RAM~215_q\ <= NOT \RAM~215_q\;
\ALT_INV_RAM~151_q\ <= NOT \RAM~151_q\;
\ALT_INV_RAM~87_q\ <= NOT \RAM~87_q\;
\ALT_INV_RAM~23_q\ <= NOT \RAM~23_q\;
\ALT_INV_RAM~297_combout\ <= NOT \RAM~297_combout\;
\ALT_INV_RAM~262_q\ <= NOT \RAM~262_q\;
\ALT_INV_RAM~246_q\ <= NOT \RAM~246_q\;
\ALT_INV_RAM~230_q\ <= NOT \RAM~230_q\;
\ALT_INV_RAM~214_q\ <= NOT \RAM~214_q\;
\ALT_INV_RAM~296_combout\ <= NOT \RAM~296_combout\;
\ALT_INV_RAM~198_q\ <= NOT \RAM~198_q\;
\ALT_INV_RAM~182_q\ <= NOT \RAM~182_q\;
\ALT_INV_RAM~166_q\ <= NOT \RAM~166_q\;
\ALT_INV_RAM~150_q\ <= NOT \RAM~150_q\;
\ALT_INV_RAM~295_combout\ <= NOT \RAM~295_combout\;
\ALT_INV_RAM~134_q\ <= NOT \RAM~134_q\;
\ALT_INV_RAM~118_q\ <= NOT \RAM~118_q\;
\ALT_INV_RAM~102_q\ <= NOT \RAM~102_q\;
\ALT_INV_RAM~86_q\ <= NOT \RAM~86_q\;
\ALT_INV_RAM~294_combout\ <= NOT \RAM~294_combout\;
\ALT_INV_RAM~70_q\ <= NOT \RAM~70_q\;
\ALT_INV_RAM~54_q\ <= NOT \RAM~54_q\;
\ALT_INV_RAM~38_q\ <= NOT \RAM~38_q\;
\ALT_INV_RAM~22_q\ <= NOT \RAM~22_q\;
\ALT_INV_RAM~372_combout\ <= NOT \RAM~372_combout\;
\ALT_INV_RAM~277_q\ <= NOT \RAM~277_q\;
\ALT_INV_RAM~213_q\ <= NOT \RAM~213_q\;
\ALT_INV_RAM~149_q\ <= NOT \RAM~149_q\;
\ALT_INV_RAM~85_q\ <= NOT \RAM~85_q\;
\ALT_INV_RAM~371_combout\ <= NOT \RAM~371_combout\;
\ALT_INV_RAM~261_q\ <= NOT \RAM~261_q\;
\ALT_INV_RAM~197_q\ <= NOT \RAM~197_q\;
\ALT_INV_RAM~133_q\ <= NOT \RAM~133_q\;
\ALT_INV_RAM~69_q\ <= NOT \RAM~69_q\;
\ALT_INV_RAM~370_combout\ <= NOT \RAM~370_combout\;
\ALT_INV_RAM~245_q\ <= NOT \RAM~245_q\;
\ALT_INV_RAM~181_q\ <= NOT \RAM~181_q\;
\ALT_INV_RAM~117_q\ <= NOT \RAM~117_q\;
\ALT_INV_RAM~53_q\ <= NOT \RAM~53_q\;
\ALT_INV_RAM~369_combout\ <= NOT \RAM~369_combout\;
\ALT_INV_RAM~229_q\ <= NOT \RAM~229_q\;
\ALT_INV_RAM~165_q\ <= NOT \RAM~165_q\;
\ALT_INV_RAM~101_q\ <= NOT \RAM~101_q\;
\ALT_INV_RAM~37_q\ <= NOT \RAM~37_q\;
\ALT_INV_RAM~367_combout\ <= NOT \RAM~367_combout\;
\ALT_INV_RAM~276_q\ <= NOT \RAM~276_q\;
\ALT_INV_RAM~260_q\ <= NOT \RAM~260_q\;
\ALT_INV_RAM~244_q\ <= NOT \RAM~244_q\;
\ALT_INV_RAM~228_q\ <= NOT \RAM~228_q\;
\ALT_INV_RAM~366_combout\ <= NOT \RAM~366_combout\;
\ALT_INV_RAM~212_q\ <= NOT \RAM~212_q\;
\ALT_INV_RAM~196_q\ <= NOT \RAM~196_q\;
\ALT_INV_RAM~180_q\ <= NOT \RAM~180_q\;
\ALT_INV_RAM~164_q\ <= NOT \RAM~164_q\;
\ALT_INV_RAM~365_combout\ <= NOT \RAM~365_combout\;
\ALT_INV_RAM~148_q\ <= NOT \RAM~148_q\;
\ALT_INV_RAM~132_q\ <= NOT \RAM~132_q\;
\ALT_INV_RAM~116_q\ <= NOT \RAM~116_q\;
\ALT_INV_RAM~100_q\ <= NOT \RAM~100_q\;
\ALT_INV_RAM~364_combout\ <= NOT \RAM~364_combout\;
\ALT_INV_RAM~84_q\ <= NOT \RAM~84_q\;
\ALT_INV_RAM~68_q\ <= NOT \RAM~68_q\;
\ALT_INV_RAM~52_q\ <= NOT \RAM~52_q\;
\ALT_INV_RAM~36_q\ <= NOT \RAM~36_q\;
\ALT_INV_RAM~362_combout\ <= NOT \RAM~362_combout\;
\ALT_INV_RAM~275_q\ <= NOT \RAM~275_q\;
\ALT_INV_RAM~211_q\ <= NOT \RAM~211_q\;
\ALT_INV_RAM~147_q\ <= NOT \RAM~147_q\;
\ALT_INV_RAM~83_q\ <= NOT \RAM~83_q\;
\ALT_INV_RAM~361_combout\ <= NOT \RAM~361_combout\;
\ALT_INV_RAM~259_q\ <= NOT \RAM~259_q\;
\ALT_INV_RAM~195_q\ <= NOT \RAM~195_q\;
\ALT_INV_RAM~131_q\ <= NOT \RAM~131_q\;
\ALT_INV_RAM~67_q\ <= NOT \RAM~67_q\;
\ALT_INV_RAM~360_combout\ <= NOT \RAM~360_combout\;
\ALT_INV_RAM~243_q\ <= NOT \RAM~243_q\;
\ALT_INV_RAM~179_q\ <= NOT \RAM~179_q\;
\ALT_INV_RAM~115_q\ <= NOT \RAM~115_q\;
\ALT_INV_RAM~51_q\ <= NOT \RAM~51_q\;
\ALT_INV_RAM~359_combout\ <= NOT \RAM~359_combout\;
\ALT_INV_RAM~227_q\ <= NOT \RAM~227_q\;
\ALT_INV_RAM~163_q\ <= NOT \RAM~163_q\;
\ALT_INV_RAM~99_q\ <= NOT \RAM~99_q\;
\ALT_INV_RAM~35_q\ <= NOT \RAM~35_q\;
\ALT_INV_RAM~357_combout\ <= NOT \RAM~357_combout\;
\ALT_INV_RAM~274_q\ <= NOT \RAM~274_q\;
\ALT_INV_RAM~258_q\ <= NOT \RAM~258_q\;
\ALT_INV_RAM~242_q\ <= NOT \RAM~242_q\;
\ALT_INV_RAM~226_q\ <= NOT \RAM~226_q\;
\ALT_INV_RAM~356_combout\ <= NOT \RAM~356_combout\;
\ALT_INV_RAM~210_q\ <= NOT \RAM~210_q\;
\ALT_INV_RAM~194_q\ <= NOT \RAM~194_q\;
\ALT_INV_RAM~178_q\ <= NOT \RAM~178_q\;
\ALT_INV_RAM~162_q\ <= NOT \RAM~162_q\;
\ALT_INV_RAM~355_combout\ <= NOT \RAM~355_combout\;
\ALT_INV_RAM~146_q\ <= NOT \RAM~146_q\;
\ALT_INV_RAM~130_q\ <= NOT \RAM~130_q\;
\ALT_INV_RAM~114_q\ <= NOT \RAM~114_q\;
\ALT_INV_RAM~98_q\ <= NOT \RAM~98_q\;
\ALT_INV_RAM~354_combout\ <= NOT \RAM~354_combout\;
\ALT_INV_RAM~82_q\ <= NOT \RAM~82_q\;
\ALT_INV_RAM~66_q\ <= NOT \RAM~66_q\;
\ALT_INV_RAM~50_q\ <= NOT \RAM~50_q\;
\ALT_INV_RAM~34_q\ <= NOT \RAM~34_q\;
\ALT_INV_RAM~352_combout\ <= NOT \RAM~352_combout\;
\ALT_INV_RAM~273_q\ <= NOT \RAM~273_q\;
\ALT_INV_RAM~209_q\ <= NOT \RAM~209_q\;
\ALT_INV_RAM~145_q\ <= NOT \RAM~145_q\;
\ALT_INV_RAM~81_q\ <= NOT \RAM~81_q\;
\ALT_INV_RAM~351_combout\ <= NOT \RAM~351_combout\;
\ALT_INV_RAM~257_q\ <= NOT \RAM~257_q\;
\ALT_INV_RAM~193_q\ <= NOT \RAM~193_q\;
\ALT_INV_RAM~129_q\ <= NOT \RAM~129_q\;
\ALT_INV_RAM~65_q\ <= NOT \RAM~65_q\;
\ALT_INV_RAM~350_combout\ <= NOT \RAM~350_combout\;
\ALT_INV_RAM~241_q\ <= NOT \RAM~241_q\;
\ALT_INV_RAM~177_q\ <= NOT \RAM~177_q\;
\ALT_INV_RAM~113_q\ <= NOT \RAM~113_q\;
\ALT_INV_RAM~49_q\ <= NOT \RAM~49_q\;
\ALT_INV_RAM~349_combout\ <= NOT \RAM~349_combout\;
\ALT_INV_RAM~225_q\ <= NOT \RAM~225_q\;
\ALT_INV_RAM~161_q\ <= NOT \RAM~161_q\;
\ALT_INV_RAM~97_q\ <= NOT \RAM~97_q\;
\ALT_INV_RAM~33_q\ <= NOT \RAM~33_q\;
\ALT_INV_RAM~347_combout\ <= NOT \RAM~347_combout\;
\ALT_INV_RAM~272_q\ <= NOT \RAM~272_q\;
\ALT_INV_RAM~256_q\ <= NOT \RAM~256_q\;
\ALT_INV_RAM~240_q\ <= NOT \RAM~240_q\;
\ALT_INV_RAM~224_q\ <= NOT \RAM~224_q\;
\ALT_INV_RAM~346_combout\ <= NOT \RAM~346_combout\;
\ALT_INV_RAM~208_q\ <= NOT \RAM~208_q\;
\ALT_INV_RAM~192_q\ <= NOT \RAM~192_q\;
\ALT_INV_RAM~176_q\ <= NOT \RAM~176_q\;
\ALT_INV_RAM~160_q\ <= NOT \RAM~160_q\;
\ALT_INV_RAM~345_combout\ <= NOT \RAM~345_combout\;
\ALT_INV_RAM~144_q\ <= NOT \RAM~144_q\;
\ALT_INV_RAM~128_q\ <= NOT \RAM~128_q\;
\ALT_INV_RAM~112_q\ <= NOT \RAM~112_q\;
\ALT_INV_RAM~96_q\ <= NOT \RAM~96_q\;
\ALT_INV_RAM~344_combout\ <= NOT \RAM~344_combout\;
\ALT_INV_RAM~80_q\ <= NOT \RAM~80_q\;
\ALT_INV_RAM~64_q\ <= NOT \RAM~64_q\;
\ALT_INV_RAM~48_q\ <= NOT \RAM~48_q\;
\ALT_INV_RAM~32_q\ <= NOT \RAM~32_q\;
\ALT_INV_RAM~342_combout\ <= NOT \RAM~342_combout\;
\ALT_INV_RAM~271_q\ <= NOT \RAM~271_q\;
\ALT_INV_RAM~207_q\ <= NOT \RAM~207_q\;
\ALT_INV_RAM~143_q\ <= NOT \RAM~143_q\;
\ALT_INV_RAM~79_q\ <= NOT \RAM~79_q\;
\ALT_INV_RAM~341_combout\ <= NOT \RAM~341_combout\;
\ALT_INV_RAM~255_q\ <= NOT \RAM~255_q\;
\ALT_INV_RAM~191_q\ <= NOT \RAM~191_q\;
\ALT_INV_RAM~127_q\ <= NOT \RAM~127_q\;
\ALT_INV_RAM~63_q\ <= NOT \RAM~63_q\;
\ALT_INV_RAM~340_combout\ <= NOT \RAM~340_combout\;
\ALT_INV_RAM~239_q\ <= NOT \RAM~239_q\;
\ALT_INV_RAM~175_q\ <= NOT \RAM~175_q\;
\ALT_INV_RAM~111_q\ <= NOT \RAM~111_q\;
\ALT_INV_RAM~47_q\ <= NOT \RAM~47_q\;
\ALT_INV_RAM~339_combout\ <= NOT \RAM~339_combout\;
\ALT_INV_RAM~223_q\ <= NOT \RAM~223_q\;
\ALT_INV_RAM~159_q\ <= NOT \RAM~159_q\;
\ALT_INV_RAM~95_q\ <= NOT \RAM~95_q\;
\ALT_INV_RAM~31_q\ <= NOT \RAM~31_q\;
\ALT_INV_RAM~337_combout\ <= NOT \RAM~337_combout\;
\ALT_INV_RAM~270_q\ <= NOT \RAM~270_q\;
\ALT_INV_RAM~254_q\ <= NOT \RAM~254_q\;
\ALT_INV_RAM~238_q\ <= NOT \RAM~238_q\;
\ALT_INV_RAM~222_q\ <= NOT \RAM~222_q\;
\ALT_INV_RAM~336_combout\ <= NOT \RAM~336_combout\;
\ALT_INV_RAM~206_q\ <= NOT \RAM~206_q\;
\ALT_INV_RAM~190_q\ <= NOT \RAM~190_q\;
\ALT_INV_RAM~174_q\ <= NOT \RAM~174_q\;
\ALT_INV_RAM~158_q\ <= NOT \RAM~158_q\;
\ALT_INV_RAM~335_combout\ <= NOT \RAM~335_combout\;
\ALT_INV_RAM~142_q\ <= NOT \RAM~142_q\;
\ALT_INV_RAM~126_q\ <= NOT \RAM~126_q\;
\ALT_INV_RAM~110_q\ <= NOT \RAM~110_q\;
\ALT_INV_RAM~94_q\ <= NOT \RAM~94_q\;
\ALT_INV_RAM~334_combout\ <= NOT \RAM~334_combout\;
\ALT_INV_RAM~78_q\ <= NOT \RAM~78_q\;
\ALT_INV_RAM~62_q\ <= NOT \RAM~62_q\;
\ALT_INV_RAM~46_q\ <= NOT \RAM~46_q\;
\ALT_INV_RAM~30_q\ <= NOT \RAM~30_q\;
\ALT_INV_RAM~332_combout\ <= NOT \RAM~332_combout\;
\ALT_INV_RAM~269_q\ <= NOT \RAM~269_q\;
\ALT_INV_RAM~205_q\ <= NOT \RAM~205_q\;
\ALT_INV_RAM~141_q\ <= NOT \RAM~141_q\;
\ALT_INV_RAM~77_q\ <= NOT \RAM~77_q\;
\ALT_INV_RAM~331_combout\ <= NOT \RAM~331_combout\;
\ALT_INV_RAM~253_q\ <= NOT \RAM~253_q\;
\ALT_INV_RAM~189_q\ <= NOT \RAM~189_q\;
\ALT_INV_RAM~125_q\ <= NOT \RAM~125_q\;
\ALT_INV_RAM~61_q\ <= NOT \RAM~61_q\;
\ALT_INV_RAM~330_combout\ <= NOT \RAM~330_combout\;
\ALT_INV_RAM~237_q\ <= NOT \RAM~237_q\;
\ALT_INV_RAM~173_q\ <= NOT \RAM~173_q\;
\ALT_INV_RAM~109_q\ <= NOT \RAM~109_q\;
\ALT_INV_RAM~45_q\ <= NOT \RAM~45_q\;
\ALT_INV_RAM~329_combout\ <= NOT \RAM~329_combout\;
\ALT_INV_RAM~221_q\ <= NOT \RAM~221_q\;
\ALT_INV_RAM~157_q\ <= NOT \RAM~157_q\;
\ALT_INV_RAM~93_q\ <= NOT \RAM~93_q\;
\ALT_INV_RAM~29_q\ <= NOT \RAM~29_q\;
\ALT_INV_RAM~327_combout\ <= NOT \RAM~327_combout\;
\ALT_INV_RAM~268_q\ <= NOT \RAM~268_q\;
\ALT_INV_RAM~252_q\ <= NOT \RAM~252_q\;
\ALT_INV_RAM~236_q\ <= NOT \RAM~236_q\;
\ALT_INV_RAM~220_q\ <= NOT \RAM~220_q\;
\ALT_INV_RAM~326_combout\ <= NOT \RAM~326_combout\;
\ALT_INV_RAM~204_q\ <= NOT \RAM~204_q\;
\ALT_INV_RAM~188_q\ <= NOT \RAM~188_q\;
\ALT_INV_RAM~172_q\ <= NOT \RAM~172_q\;
\ALT_INV_RAM~156_q\ <= NOT \RAM~156_q\;
\ALT_INV_RAM~325_combout\ <= NOT \RAM~325_combout\;
\ALT_INV_RAM~140_q\ <= NOT \RAM~140_q\;
\ALT_INV_RAM~124_q\ <= NOT \RAM~124_q\;
\ALT_INV_RAM~108_q\ <= NOT \RAM~108_q\;
\ALT_INV_RAM~92_q\ <= NOT \RAM~92_q\;
\ALT_INV_RAM~324_combout\ <= NOT \RAM~324_combout\;
\ALT_INV_RAM~76_q\ <= NOT \RAM~76_q\;
\ALT_INV_RAM~60_q\ <= NOT \RAM~60_q\;
\ALT_INV_RAM~44_q\ <= NOT \RAM~44_q\;
\ALT_INV_RAM~28_q\ <= NOT \RAM~28_q\;
\ALT_INV_RAM~322_combout\ <= NOT \RAM~322_combout\;
\ALT_INV_RAM~267_q\ <= NOT \RAM~267_q\;
\ALT_INV_RAM~203_q\ <= NOT \RAM~203_q\;
\ALT_INV_RAM~139_q\ <= NOT \RAM~139_q\;
\ALT_INV_RAM~75_q\ <= NOT \RAM~75_q\;
\ALT_INV_RAM~321_combout\ <= NOT \RAM~321_combout\;
\ALT_INV_RAM~251_q\ <= NOT \RAM~251_q\;
\ALT_INV_RAM~187_q\ <= NOT \RAM~187_q\;
\ALT_INV_RAM~123_q\ <= NOT \RAM~123_q\;
\ALT_INV_RAM~59_q\ <= NOT \RAM~59_q\;
\ALT_INV_RAM~320_combout\ <= NOT \RAM~320_combout\;
\ALT_INV_RAM~235_q\ <= NOT \RAM~235_q\;
\ALT_INV_RAM~171_q\ <= NOT \RAM~171_q\;
\ALT_INV_RAM~107_q\ <= NOT \RAM~107_q\;
\ALT_INV_RAM~43_q\ <= NOT \RAM~43_q\;
\ALT_INV_RAM~319_combout\ <= NOT \RAM~319_combout\;
\ALT_INV_RAM~219_q\ <= NOT \RAM~219_q\;
\ALT_INV_RAM~155_q\ <= NOT \RAM~155_q\;
\ALT_INV_RAM~91_q\ <= NOT \RAM~91_q\;
\ALT_INV_RAM~27_q\ <= NOT \RAM~27_q\;
\ALT_INV_RAM~317_combout\ <= NOT \RAM~317_combout\;
\ALT_INV_RAM~266_q\ <= NOT \RAM~266_q\;
\ALT_INV_RAM~250_q\ <= NOT \RAM~250_q\;
\ALT_INV_RAM~234_q\ <= NOT \RAM~234_q\;
\ALT_INV_RAM~218_q\ <= NOT \RAM~218_q\;
\ALT_INV_RAM~316_combout\ <= NOT \RAM~316_combout\;
\ALT_INV_RAM~202_q\ <= NOT \RAM~202_q\;
\ALT_INV_RAM~186_q\ <= NOT \RAM~186_q\;

\DataOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~298_combout\,
	devoe => ww_devoe,
	o => \DataOut[0]~output_o\);

\DataOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~303_combout\,
	devoe => ww_devoe,
	o => \DataOut[1]~output_o\);

\DataOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~308_combout\,
	devoe => ww_devoe,
	o => \DataOut[2]~output_o\);

\DataOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~313_combout\,
	devoe => ww_devoe,
	o => \DataOut[3]~output_o\);

\DataOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~318_combout\,
	devoe => ww_devoe,
	o => \DataOut[4]~output_o\);

\DataOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~323_combout\,
	devoe => ww_devoe,
	o => \DataOut[5]~output_o\);

\DataOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~328_combout\,
	devoe => ww_devoe,
	o => \DataOut[6]~output_o\);

\DataOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~333_combout\,
	devoe => ww_devoe,
	o => \DataOut[7]~output_o\);

\DataOut[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~338_combout\,
	devoe => ww_devoe,
	o => \DataOut[8]~output_o\);

\DataOut[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~343_combout\,
	devoe => ww_devoe,
	o => \DataOut[9]~output_o\);

\DataOut[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~348_combout\,
	devoe => ww_devoe,
	o => \DataOut[10]~output_o\);

\DataOut[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~353_combout\,
	devoe => ww_devoe,
	o => \DataOut[11]~output_o\);

\DataOut[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~358_combout\,
	devoe => ww_devoe,
	o => \DataOut[12]~output_o\);

\DataOut[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~363_combout\,
	devoe => ww_devoe,
	o => \DataOut[13]~output_o\);

\DataOut[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~368_combout\,
	devoe => ww_devoe,
	o => \DataOut[14]~output_o\);

\DataOut[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM~373_combout\,
	devoe => ww_devoe,
	o => \DataOut[15]~output_o\);

\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\DataIn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(0),
	o => \DataIn[0]~input_o\);

\Endereco[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(0),
	o => \Endereco[0]~input_o\);

\Endereco[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(1),
	o => \Endereco[1]~input_o\);

\Endereco[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(2),
	o => \Endereco[2]~input_o\);

\Endereco[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(3),
	o => \Endereco[3]~input_o\);

\RAMWrite~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMWrite,
	o => \RAMWrite~input_o\);

\RAM~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~374_combout\ = ( \RAMWrite~input_o\ & ( (!\Endereco[0]~input_o\ & (!\Endereco[1]~input_o\ & (!\Endereco[2]~input_o\ & !\Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~374_combout\);

\RAM~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~22_q\);

\RAM~375\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~375_combout\ = ( \RAMWrite~input_o\ & ( (\Endereco[0]~input_o\ & (!\Endereco[1]~input_o\ & (!\Endereco[2]~input_o\ & !\Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~375_combout\);

\RAM~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~38_q\);

\RAM~376\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~376_combout\ = ( \RAMWrite~input_o\ & ( (!\Endereco[0]~input_o\ & (\Endereco[1]~input_o\ & (!\Endereco[2]~input_o\ & !\Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~376_combout\);

\RAM~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~54_q\);

\RAM~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~377_combout\ = ( \RAMWrite~input_o\ & ( (\Endereco[0]~input_o\ & (\Endereco[1]~input_o\ & (!\Endereco[2]~input_o\ & !\Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~377_combout\);

\RAM~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~70_q\);

\RAM~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~294_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~70_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~54_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~38_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~22_q\,
	datab => \ALT_INV_RAM~38_q\,
	datac => \ALT_INV_RAM~54_q\,
	datad => \ALT_INV_RAM~70_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~294_combout\);

\RAM~378\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~378_combout\ = ( \RAMWrite~input_o\ & ( (!\Endereco[0]~input_o\ & (!\Endereco[1]~input_o\ & (\Endereco[2]~input_o\ & !\Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~378_combout\);

\RAM~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~86_q\);

\RAM~379\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~379_combout\ = ( \RAMWrite~input_o\ & ( (\Endereco[0]~input_o\ & (!\Endereco[1]~input_o\ & (\Endereco[2]~input_o\ & !\Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~379_combout\);

\RAM~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~102_q\);

\RAM~380\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~380_combout\ = ( \RAMWrite~input_o\ & ( (!\Endereco[0]~input_o\ & (\Endereco[1]~input_o\ & (\Endereco[2]~input_o\ & !\Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~380_combout\);

\RAM~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~118_q\);

\RAM~381\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~381_combout\ = ( \RAMWrite~input_o\ & ( (\Endereco[0]~input_o\ & (\Endereco[1]~input_o\ & (\Endereco[2]~input_o\ & !\Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~381_combout\);

\RAM~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~134_q\);

\RAM~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~295_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~134_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~118_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~102_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~86_q\,
	datab => \ALT_INV_RAM~102_q\,
	datac => \ALT_INV_RAM~118_q\,
	datad => \ALT_INV_RAM~134_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~295_combout\);

\RAM~382\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~382_combout\ = ( \RAMWrite~input_o\ & ( (!\Endereco[0]~input_o\ & (!\Endereco[1]~input_o\ & (!\Endereco[2]~input_o\ & \Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~382_combout\);

\RAM~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~150_q\);

\RAM~383\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~383_combout\ = ( \RAMWrite~input_o\ & ( (\Endereco[0]~input_o\ & (!\Endereco[1]~input_o\ & (!\Endereco[2]~input_o\ & \Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~383_combout\);

\RAM~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~166_q\);

\RAM~384\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~384_combout\ = ( \RAMWrite~input_o\ & ( (!\Endereco[0]~input_o\ & (\Endereco[1]~input_o\ & (!\Endereco[2]~input_o\ & \Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~384_combout\);

\RAM~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~182_q\);

\RAM~385\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~385_combout\ = ( \RAMWrite~input_o\ & ( (\Endereco[0]~input_o\ & (\Endereco[1]~input_o\ & (!\Endereco[2]~input_o\ & \Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~385_combout\);

\RAM~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~198_q\);

\RAM~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~296_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~198_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~182_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~166_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~150_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~150_q\,
	datab => \ALT_INV_RAM~166_q\,
	datac => \ALT_INV_RAM~182_q\,
	datad => \ALT_INV_RAM~198_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~296_combout\);

\RAM~386\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~386_combout\ = ( \RAMWrite~input_o\ & ( (!\Endereco[0]~input_o\ & (!\Endereco[1]~input_o\ & (\Endereco[2]~input_o\ & \Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~386_combout\);

\RAM~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~214_q\);

\RAM~387\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~387_combout\ = ( \RAMWrite~input_o\ & ( (\Endereco[0]~input_o\ & (!\Endereco[1]~input_o\ & (\Endereco[2]~input_o\ & \Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~387_combout\);

\RAM~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~230_q\);

\RAM~388\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~388_combout\ = ( \RAMWrite~input_o\ & ( (!\Endereco[0]~input_o\ & (\Endereco[1]~input_o\ & (\Endereco[2]~input_o\ & \Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~388_combout\);

\RAM~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~246_q\);

\RAM~389\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~389_combout\ = ( \RAMWrite~input_o\ & ( (\Endereco[0]~input_o\ & (\Endereco[1]~input_o\ & (\Endereco[2]~input_o\ & \Endereco[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	datae => \ALT_INV_RAMWrite~input_o\,
	combout => \RAM~389_combout\);

\RAM~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[0]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~262_q\);

\RAM~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~297_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~262_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~246_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~230_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~214_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~214_q\,
	datab => \ALT_INV_RAM~230_q\,
	datac => \ALT_INV_RAM~246_q\,
	datad => \ALT_INV_RAM~262_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~297_combout\);

\RAM~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~298_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~297_combout\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~296_combout\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~295_combout\ ) 
-- ) ) # ( !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~294_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~294_combout\,
	datab => \ALT_INV_RAM~295_combout\,
	datac => \ALT_INV_RAM~296_combout\,
	datad => \ALT_INV_RAM~297_combout\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~298_combout\);

\DataIn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(1),
	o => \DataIn[1]~input_o\);

\RAM~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~23_q\);

\RAM~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~87_q\);

\RAM~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~151_q\);

\RAM~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~215_q\);

\RAM~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~299_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~215_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~151_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~87_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~23_q\,
	datab => \ALT_INV_RAM~87_q\,
	datac => \ALT_INV_RAM~151_q\,
	datad => \ALT_INV_RAM~215_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~299_combout\);

\RAM~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~39_q\);

\RAM~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~103_q\);

\RAM~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~167_q\);

\RAM~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~231_q\);

\RAM~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~300_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~231_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~167_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~103_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~39_q\,
	datab => \ALT_INV_RAM~103_q\,
	datac => \ALT_INV_RAM~167_q\,
	datad => \ALT_INV_RAM~231_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~300_combout\);

\RAM~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~55_q\);

\RAM~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~119_q\);

\RAM~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~183_q\);

\RAM~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~247_q\);

\RAM~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~301_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~247_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~183_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~119_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~55_q\,
	datab => \ALT_INV_RAM~119_q\,
	datac => \ALT_INV_RAM~183_q\,
	datad => \ALT_INV_RAM~247_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~301_combout\);

\RAM~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~71_q\);

\RAM~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~135_q\);

\RAM~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~199_q\);

\RAM~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[1]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~263_q\);

\RAM~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~302_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~263_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~199_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~135_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~71_q\,
	datab => \ALT_INV_RAM~135_q\,
	datac => \ALT_INV_RAM~199_q\,
	datad => \ALT_INV_RAM~263_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~302_combout\);

\RAM~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~303_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~302_combout\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~301_combout\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~300_combout\ ) 
-- ) ) # ( !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~299_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~299_combout\,
	datab => \ALT_INV_RAM~300_combout\,
	datac => \ALT_INV_RAM~301_combout\,
	datad => \ALT_INV_RAM~302_combout\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~303_combout\);

\DataIn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(2),
	o => \DataIn[2]~input_o\);

\RAM~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~24_q\);

\RAM~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~40_q\);

\RAM~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~56_q\);

\RAM~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~72_q\);

\RAM~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~304_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~72_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~56_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~40_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~24_q\,
	datab => \ALT_INV_RAM~40_q\,
	datac => \ALT_INV_RAM~56_q\,
	datad => \ALT_INV_RAM~72_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~304_combout\);

\RAM~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~88_q\);

\RAM~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~104_q\);

\RAM~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~120_q\);

\RAM~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~136_q\);

\RAM~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~305_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~136_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~120_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~104_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~88_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~88_q\,
	datab => \ALT_INV_RAM~104_q\,
	datac => \ALT_INV_RAM~120_q\,
	datad => \ALT_INV_RAM~136_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~305_combout\);

\RAM~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~152_q\);

\RAM~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~168_q\);

\RAM~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~184_q\);

\RAM~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~200_q\);

\RAM~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~306_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~200_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~184_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~168_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~152_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~152_q\,
	datab => \ALT_INV_RAM~168_q\,
	datac => \ALT_INV_RAM~184_q\,
	datad => \ALT_INV_RAM~200_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~306_combout\);

\RAM~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~216_q\);

\RAM~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~232_q\);

\RAM~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~248_q\);

\RAM~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[2]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~264_q\);

\RAM~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~307_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~264_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~248_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~232_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~216_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~216_q\,
	datab => \ALT_INV_RAM~232_q\,
	datac => \ALT_INV_RAM~248_q\,
	datad => \ALT_INV_RAM~264_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~307_combout\);

\RAM~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~308_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~307_combout\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~306_combout\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~305_combout\ ) 
-- ) ) # ( !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~304_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~304_combout\,
	datab => \ALT_INV_RAM~305_combout\,
	datac => \ALT_INV_RAM~306_combout\,
	datad => \ALT_INV_RAM~307_combout\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~308_combout\);

\DataIn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(3),
	o => \DataIn[3]~input_o\);

\RAM~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~25_q\);

\RAM~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~89_q\);

\RAM~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~153_q\);

\RAM~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~217_q\);

\RAM~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~309_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~217_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~153_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~89_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~25_q\,
	datab => \ALT_INV_RAM~89_q\,
	datac => \ALT_INV_RAM~153_q\,
	datad => \ALT_INV_RAM~217_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~309_combout\);

\RAM~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~41_q\);

\RAM~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~105_q\);

\RAM~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~169_q\);

\RAM~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~233_q\);

\RAM~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~310_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~233_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~169_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~105_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~41_q\,
	datab => \ALT_INV_RAM~105_q\,
	datac => \ALT_INV_RAM~169_q\,
	datad => \ALT_INV_RAM~233_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~310_combout\);

\RAM~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~57_q\);

\RAM~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~121_q\);

\RAM~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~185_q\);

\RAM~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~249_q\);

\RAM~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~311_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~249_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~185_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~121_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~57_q\,
	datab => \ALT_INV_RAM~121_q\,
	datac => \ALT_INV_RAM~185_q\,
	datad => \ALT_INV_RAM~249_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~311_combout\);

\RAM~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~73_q\);

\RAM~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~137_q\);

\RAM~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~201_q\);

\RAM~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[3]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~265_q\);

\RAM~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~312_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~265_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~201_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~137_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~73_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~73_q\,
	datab => \ALT_INV_RAM~137_q\,
	datac => \ALT_INV_RAM~201_q\,
	datad => \ALT_INV_RAM~265_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~312_combout\);

\RAM~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~313_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~312_combout\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~311_combout\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~310_combout\ ) 
-- ) ) # ( !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~309_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~309_combout\,
	datab => \ALT_INV_RAM~310_combout\,
	datac => \ALT_INV_RAM~311_combout\,
	datad => \ALT_INV_RAM~312_combout\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~313_combout\);

\DataIn[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(4),
	o => \DataIn[4]~input_o\);

\RAM~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~26_q\);

\RAM~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~42_q\);

\RAM~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~58_q\);

\RAM~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~74_q\);

\RAM~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~314_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~74_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~58_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~42_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~26_q\,
	datab => \ALT_INV_RAM~42_q\,
	datac => \ALT_INV_RAM~58_q\,
	datad => \ALT_INV_RAM~74_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~314_combout\);

\RAM~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~90_q\);

\RAM~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~106_q\);

\RAM~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~122_q\);

\RAM~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~138_q\);

\RAM~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~315_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~138_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~122_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~106_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~90_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~90_q\,
	datab => \ALT_INV_RAM~106_q\,
	datac => \ALT_INV_RAM~122_q\,
	datad => \ALT_INV_RAM~138_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~315_combout\);

\RAM~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~154_q\);

\RAM~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~170_q\);

\RAM~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~186_q\);

\RAM~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~202_q\);

\RAM~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~316_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~202_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~186_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~170_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~154_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~154_q\,
	datab => \ALT_INV_RAM~170_q\,
	datac => \ALT_INV_RAM~186_q\,
	datad => \ALT_INV_RAM~202_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~316_combout\);

\RAM~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~218_q\);

\RAM~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~234_q\);

\RAM~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~250_q\);

\RAM~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[4]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~266_q\);

\RAM~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~317_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~266_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~250_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~234_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~218_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~218_q\,
	datab => \ALT_INV_RAM~234_q\,
	datac => \ALT_INV_RAM~250_q\,
	datad => \ALT_INV_RAM~266_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~317_combout\);

\RAM~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~318_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~317_combout\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~316_combout\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~315_combout\ ) 
-- ) ) # ( !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~314_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~314_combout\,
	datab => \ALT_INV_RAM~315_combout\,
	datac => \ALT_INV_RAM~316_combout\,
	datad => \ALT_INV_RAM~317_combout\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~318_combout\);

\DataIn[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(5),
	o => \DataIn[5]~input_o\);

\RAM~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~27_q\);

\RAM~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~91_q\);

\RAM~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~155_q\);

\RAM~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~219_q\);

\RAM~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~319_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~219_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~155_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~91_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~27_q\,
	datab => \ALT_INV_RAM~91_q\,
	datac => \ALT_INV_RAM~155_q\,
	datad => \ALT_INV_RAM~219_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~319_combout\);

\RAM~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~43_q\);

\RAM~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~107_q\);

\RAM~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~171_q\);

\RAM~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~235_q\);

\RAM~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~320_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~235_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~171_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~107_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~43_q\,
	datab => \ALT_INV_RAM~107_q\,
	datac => \ALT_INV_RAM~171_q\,
	datad => \ALT_INV_RAM~235_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~320_combout\);

\RAM~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~59_q\);

\RAM~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~123_q\);

\RAM~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~187_q\);

\RAM~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~251_q\);

\RAM~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~321_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~251_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~187_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~123_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~59_q\,
	datab => \ALT_INV_RAM~123_q\,
	datac => \ALT_INV_RAM~187_q\,
	datad => \ALT_INV_RAM~251_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~321_combout\);

\RAM~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~75_q\);

\RAM~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~139_q\);

\RAM~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~203_q\);

\RAM~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[5]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~267_q\);

\RAM~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~322_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~267_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~203_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~139_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~75_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~75_q\,
	datab => \ALT_INV_RAM~139_q\,
	datac => \ALT_INV_RAM~203_q\,
	datad => \ALT_INV_RAM~267_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~322_combout\);

\RAM~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~323_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~322_combout\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~321_combout\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~320_combout\ ) 
-- ) ) # ( !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~319_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~319_combout\,
	datab => \ALT_INV_RAM~320_combout\,
	datac => \ALT_INV_RAM~321_combout\,
	datad => \ALT_INV_RAM~322_combout\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~323_combout\);

\DataIn[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(6),
	o => \DataIn[6]~input_o\);

\RAM~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~28_q\);

\RAM~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~44_q\);

\RAM~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~60_q\);

\RAM~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~76_q\);

\RAM~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~324_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~76_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~60_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~44_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~28_q\,
	datab => \ALT_INV_RAM~44_q\,
	datac => \ALT_INV_RAM~60_q\,
	datad => \ALT_INV_RAM~76_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~324_combout\);

\RAM~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~92_q\);

\RAM~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~108_q\);

\RAM~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~124_q\);

\RAM~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~140_q\);

\RAM~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~325_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~140_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~124_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~108_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~92_q\,
	datab => \ALT_INV_RAM~108_q\,
	datac => \ALT_INV_RAM~124_q\,
	datad => \ALT_INV_RAM~140_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~325_combout\);

\RAM~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~156_q\);

\RAM~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~172_q\);

\RAM~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~188_q\);

\RAM~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~204_q\);

\RAM~326\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~326_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~204_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~188_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~172_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~156_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~156_q\,
	datab => \ALT_INV_RAM~172_q\,
	datac => \ALT_INV_RAM~188_q\,
	datad => \ALT_INV_RAM~204_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~326_combout\);

\RAM~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~220_q\);

\RAM~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~236_q\);

\RAM~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~252_q\);

\RAM~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[6]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~268_q\);

\RAM~327\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~327_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~268_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~252_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~236_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~220_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~220_q\,
	datab => \ALT_INV_RAM~236_q\,
	datac => \ALT_INV_RAM~252_q\,
	datad => \ALT_INV_RAM~268_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~327_combout\);

\RAM~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~328_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~327_combout\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~326_combout\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~325_combout\ ) 
-- ) ) # ( !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~324_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~324_combout\,
	datab => \ALT_INV_RAM~325_combout\,
	datac => \ALT_INV_RAM~326_combout\,
	datad => \ALT_INV_RAM~327_combout\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~328_combout\);

\DataIn[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(7),
	o => \DataIn[7]~input_o\);

\RAM~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~29_q\);

\RAM~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~93_q\);

\RAM~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~157_q\);

\RAM~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~221_q\);

\RAM~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~329_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~221_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~157_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~93_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~29_q\,
	datab => \ALT_INV_RAM~93_q\,
	datac => \ALT_INV_RAM~157_q\,
	datad => \ALT_INV_RAM~221_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~329_combout\);

\RAM~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~45_q\);

\RAM~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~109_q\);

\RAM~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~173_q\);

\RAM~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~237_q\);

\RAM~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~330_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~237_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~173_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~109_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~45_q\,
	datab => \ALT_INV_RAM~109_q\,
	datac => \ALT_INV_RAM~173_q\,
	datad => \ALT_INV_RAM~237_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~330_combout\);

\RAM~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~61_q\);

\RAM~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~125_q\);

\RAM~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~189_q\);

\RAM~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~253_q\);

\RAM~331\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~331_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~253_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~189_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~125_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~61_q\,
	datab => \ALT_INV_RAM~125_q\,
	datac => \ALT_INV_RAM~189_q\,
	datad => \ALT_INV_RAM~253_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~331_combout\);

\RAM~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~77_q\);

\RAM~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~141_q\);

\RAM~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~205_q\);

\RAM~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[7]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~269_q\);

\RAM~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~332_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~269_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~205_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~141_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~77_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~77_q\,
	datab => \ALT_INV_RAM~141_q\,
	datac => \ALT_INV_RAM~205_q\,
	datad => \ALT_INV_RAM~269_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~332_combout\);

\RAM~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~333_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~332_combout\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~331_combout\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~330_combout\ ) 
-- ) ) # ( !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~329_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~329_combout\,
	datab => \ALT_INV_RAM~330_combout\,
	datac => \ALT_INV_RAM~331_combout\,
	datad => \ALT_INV_RAM~332_combout\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~333_combout\);

\DataIn[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(8),
	o => \DataIn[8]~input_o\);

\RAM~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~30_q\);

\RAM~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~46_q\);

\RAM~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~62_q\);

\RAM~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~78_q\);

\RAM~334\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~334_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~78_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~62_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~46_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~30_q\,
	datab => \ALT_INV_RAM~46_q\,
	datac => \ALT_INV_RAM~62_q\,
	datad => \ALT_INV_RAM~78_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~334_combout\);

\RAM~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~94_q\);

\RAM~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~110_q\);

\RAM~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~126_q\);

\RAM~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~142_q\);

\RAM~335\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~335_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~142_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~126_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~110_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~94_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~94_q\,
	datab => \ALT_INV_RAM~110_q\,
	datac => \ALT_INV_RAM~126_q\,
	datad => \ALT_INV_RAM~142_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~335_combout\);

\RAM~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~158_q\);

\RAM~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~174_q\);

\RAM~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~190_q\);

\RAM~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~206_q\);

\RAM~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~336_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~206_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~190_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~174_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~158_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~158_q\,
	datab => \ALT_INV_RAM~174_q\,
	datac => \ALT_INV_RAM~190_q\,
	datad => \ALT_INV_RAM~206_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~336_combout\);

\RAM~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~222_q\);

\RAM~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~238_q\);

\RAM~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~254_q\);

\RAM~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[8]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~270_q\);

\RAM~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~337_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~270_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~254_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~238_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~222_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~222_q\,
	datab => \ALT_INV_RAM~238_q\,
	datac => \ALT_INV_RAM~254_q\,
	datad => \ALT_INV_RAM~270_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~337_combout\);

\RAM~338\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~338_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~337_combout\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~336_combout\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~335_combout\ ) 
-- ) ) # ( !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~334_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~334_combout\,
	datab => \ALT_INV_RAM~335_combout\,
	datac => \ALT_INV_RAM~336_combout\,
	datad => \ALT_INV_RAM~337_combout\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~338_combout\);

\DataIn[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(9),
	o => \DataIn[9]~input_o\);

\RAM~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~31_q\);

\RAM~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~95_q\);

\RAM~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~159_q\);

\RAM~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~223_q\);

\RAM~339\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~339_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~223_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~159_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~95_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~31_q\,
	datab => \ALT_INV_RAM~95_q\,
	datac => \ALT_INV_RAM~159_q\,
	datad => \ALT_INV_RAM~223_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~339_combout\);

\RAM~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~47_q\);

\RAM~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~111_q\);

\RAM~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~175_q\);

\RAM~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~239_q\);

\RAM~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~340_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~239_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~175_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~111_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~47_q\,
	datab => \ALT_INV_RAM~111_q\,
	datac => \ALT_INV_RAM~175_q\,
	datad => \ALT_INV_RAM~239_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~340_combout\);

\RAM~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~63_q\);

\RAM~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~127_q\);

\RAM~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~191_q\);

\RAM~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~255_q\);

\RAM~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~341_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~255_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~191_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~127_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~63_q\,
	datab => \ALT_INV_RAM~127_q\,
	datac => \ALT_INV_RAM~191_q\,
	datad => \ALT_INV_RAM~255_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~341_combout\);

\RAM~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~79_q\);

\RAM~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~143_q\);

\RAM~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~207_q\);

\RAM~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[9]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~271_q\);

\RAM~342\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~342_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~271_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~207_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~143_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~79_q\,
	datab => \ALT_INV_RAM~143_q\,
	datac => \ALT_INV_RAM~207_q\,
	datad => \ALT_INV_RAM~271_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~342_combout\);

\RAM~343\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~343_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~342_combout\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~341_combout\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~340_combout\ ) 
-- ) ) # ( !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~339_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~339_combout\,
	datab => \ALT_INV_RAM~340_combout\,
	datac => \ALT_INV_RAM~341_combout\,
	datad => \ALT_INV_RAM~342_combout\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~343_combout\);

\DataIn[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(10),
	o => \DataIn[10]~input_o\);

\RAM~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~32_q\);

\RAM~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~48_q\);

\RAM~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~64_q\);

\RAM~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~80_q\);

\RAM~344\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~344_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~80_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~64_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~48_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~32_q\,
	datab => \ALT_INV_RAM~48_q\,
	datac => \ALT_INV_RAM~64_q\,
	datad => \ALT_INV_RAM~80_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~344_combout\);

\RAM~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~96_q\);

\RAM~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~112_q\);

\RAM~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~128_q\);

\RAM~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~144_q\);

\RAM~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~345_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~144_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~128_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~112_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~96_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~96_q\,
	datab => \ALT_INV_RAM~112_q\,
	datac => \ALT_INV_RAM~128_q\,
	datad => \ALT_INV_RAM~144_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~345_combout\);

\RAM~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~160_q\);

\RAM~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~176_q\);

\RAM~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~192_q\);

\RAM~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~208_q\);

\RAM~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~346_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~208_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~192_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~176_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~160_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~160_q\,
	datab => \ALT_INV_RAM~176_q\,
	datac => \ALT_INV_RAM~192_q\,
	datad => \ALT_INV_RAM~208_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~346_combout\);

\RAM~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~224_q\);

\RAM~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~240_q\);

\RAM~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~256_q\);

\RAM~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[10]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~272_q\);

\RAM~347\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~347_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~272_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~256_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~240_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~224_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~224_q\,
	datab => \ALT_INV_RAM~240_q\,
	datac => \ALT_INV_RAM~256_q\,
	datad => \ALT_INV_RAM~272_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~347_combout\);

\RAM~348\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~348_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~347_combout\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~346_combout\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~345_combout\ ) 
-- ) ) # ( !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~344_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~344_combout\,
	datab => \ALT_INV_RAM~345_combout\,
	datac => \ALT_INV_RAM~346_combout\,
	datad => \ALT_INV_RAM~347_combout\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~348_combout\);

\DataIn[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(11),
	o => \DataIn[11]~input_o\);

\RAM~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~33_q\);

\RAM~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~97_q\);

\RAM~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~161_q\);

\RAM~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~225_q\);

\RAM~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~349_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~225_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~161_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~97_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~33_q\,
	datab => \ALT_INV_RAM~97_q\,
	datac => \ALT_INV_RAM~161_q\,
	datad => \ALT_INV_RAM~225_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~349_combout\);

\RAM~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~49_q\);

\RAM~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~113_q\);

\RAM~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~177_q\);

\RAM~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~241_q\);

\RAM~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~350_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~241_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~177_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~113_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~49_q\,
	datab => \ALT_INV_RAM~113_q\,
	datac => \ALT_INV_RAM~177_q\,
	datad => \ALT_INV_RAM~241_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~350_combout\);

\RAM~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~65_q\);

\RAM~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~129_q\);

\RAM~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~193_q\);

\RAM~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~257_q\);

\RAM~351\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~351_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~257_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~193_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~129_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~65_q\,
	datab => \ALT_INV_RAM~129_q\,
	datac => \ALT_INV_RAM~193_q\,
	datad => \ALT_INV_RAM~257_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~351_combout\);

\RAM~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~81_q\);

\RAM~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~145_q\);

\RAM~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~209_q\);

\RAM~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[11]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~273_q\);

\RAM~352\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~352_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~273_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~209_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~145_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~81_q\,
	datab => \ALT_INV_RAM~145_q\,
	datac => \ALT_INV_RAM~209_q\,
	datad => \ALT_INV_RAM~273_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~352_combout\);

\RAM~353\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~353_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~352_combout\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~351_combout\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~350_combout\ ) 
-- ) ) # ( !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~349_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~349_combout\,
	datab => \ALT_INV_RAM~350_combout\,
	datac => \ALT_INV_RAM~351_combout\,
	datad => \ALT_INV_RAM~352_combout\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~353_combout\);

\DataIn[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(12),
	o => \DataIn[12]~input_o\);

\RAM~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~34_q\);

\RAM~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~50_q\);

\RAM~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~66_q\);

\RAM~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~82_q\);

\RAM~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~354_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~82_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~66_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~50_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~34_q\,
	datab => \ALT_INV_RAM~50_q\,
	datac => \ALT_INV_RAM~66_q\,
	datad => \ALT_INV_RAM~82_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~354_combout\);

\RAM~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~98_q\);

\RAM~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~114_q\);

\RAM~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~130_q\);

\RAM~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~146_q\);

\RAM~355\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~355_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~146_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~130_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~114_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~98_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~98_q\,
	datab => \ALT_INV_RAM~114_q\,
	datac => \ALT_INV_RAM~130_q\,
	datad => \ALT_INV_RAM~146_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~355_combout\);

\RAM~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~162_q\);

\RAM~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~178_q\);

\RAM~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~194_q\);

\RAM~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~210_q\);

\RAM~356\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~356_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~210_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~194_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~178_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~162_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~162_q\,
	datab => \ALT_INV_RAM~178_q\,
	datac => \ALT_INV_RAM~194_q\,
	datad => \ALT_INV_RAM~210_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~356_combout\);

\RAM~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~226_q\);

\RAM~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~242_q\);

\RAM~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~258_q\);

\RAM~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[12]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~274_q\);

\RAM~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~357_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~274_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~258_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~242_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~226_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~226_q\,
	datab => \ALT_INV_RAM~242_q\,
	datac => \ALT_INV_RAM~258_q\,
	datad => \ALT_INV_RAM~274_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~357_combout\);

\RAM~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~358_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~357_combout\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~356_combout\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~355_combout\ ) 
-- ) ) # ( !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~354_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~354_combout\,
	datab => \ALT_INV_RAM~355_combout\,
	datac => \ALT_INV_RAM~356_combout\,
	datad => \ALT_INV_RAM~357_combout\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~358_combout\);

\DataIn[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(13),
	o => \DataIn[13]~input_o\);

\RAM~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~35_q\);

\RAM~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~99_q\);

\RAM~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~163_q\);

\RAM~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~227_q\);

\RAM~359\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~359_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~227_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~163_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~99_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~35_q\,
	datab => \ALT_INV_RAM~99_q\,
	datac => \ALT_INV_RAM~163_q\,
	datad => \ALT_INV_RAM~227_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~359_combout\);

\RAM~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~51_q\);

\RAM~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~115_q\);

\RAM~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~179_q\);

\RAM~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~243_q\);

\RAM~360\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~360_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~243_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~179_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~115_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~51_q\,
	datab => \ALT_INV_RAM~115_q\,
	datac => \ALT_INV_RAM~179_q\,
	datad => \ALT_INV_RAM~243_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~360_combout\);

\RAM~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~67_q\);

\RAM~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~131_q\);

\RAM~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~195_q\);

\RAM~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~259_q\);

\RAM~361\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~361_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~259_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~195_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~131_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~67_q\,
	datab => \ALT_INV_RAM~131_q\,
	datac => \ALT_INV_RAM~195_q\,
	datad => \ALT_INV_RAM~259_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~361_combout\);

\RAM~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~83_q\);

\RAM~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~147_q\);

\RAM~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~211_q\);

\RAM~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[13]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~275_q\);

\RAM~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~362_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~275_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~211_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~147_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~83_q\,
	datab => \ALT_INV_RAM~147_q\,
	datac => \ALT_INV_RAM~211_q\,
	datad => \ALT_INV_RAM~275_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~362_combout\);

\RAM~363\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~363_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~362_combout\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~361_combout\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~360_combout\ ) 
-- ) ) # ( !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~359_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~359_combout\,
	datab => \ALT_INV_RAM~360_combout\,
	datac => \ALT_INV_RAM~361_combout\,
	datad => \ALT_INV_RAM~362_combout\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~363_combout\);

\DataIn[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(14),
	o => \DataIn[14]~input_o\);

\RAM~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~36_q\);

\RAM~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~52_q\);

\RAM~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~68_q\);

\RAM~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~84_q\);

\RAM~364\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~364_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~84_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~68_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~52_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~36_q\,
	datab => \ALT_INV_RAM~52_q\,
	datac => \ALT_INV_RAM~68_q\,
	datad => \ALT_INV_RAM~84_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~364_combout\);

\RAM~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~100_q\);

\RAM~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~116_q\);

\RAM~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~132_q\);

\RAM~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~148_q\);

\RAM~365\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~365_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~148_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~132_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~116_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~100_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~100_q\,
	datab => \ALT_INV_RAM~116_q\,
	datac => \ALT_INV_RAM~132_q\,
	datad => \ALT_INV_RAM~148_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~365_combout\);

\RAM~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~164_q\);

\RAM~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~180_q\);

\RAM~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~196_q\);

\RAM~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~212_q\);

\RAM~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~366_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~212_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~196_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~180_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~164_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~164_q\,
	datab => \ALT_INV_RAM~180_q\,
	datac => \ALT_INV_RAM~196_q\,
	datad => \ALT_INV_RAM~212_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~366_combout\);

\RAM~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~228_q\);

\RAM~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~244_q\);

\RAM~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~260_q\);

\RAM~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[14]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~276_q\);

\RAM~367\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~367_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~276_q\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~260_q\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~244_q\ ) ) ) # ( 
-- !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~228_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~228_q\,
	datab => \ALT_INV_RAM~244_q\,
	datac => \ALT_INV_RAM~260_q\,
	datad => \ALT_INV_RAM~276_q\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~367_combout\);

\RAM~368\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~368_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~367_combout\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~366_combout\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~365_combout\ ) 
-- ) ) # ( !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~364_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~364_combout\,
	datab => \ALT_INV_RAM~365_combout\,
	datac => \ALT_INV_RAM~366_combout\,
	datad => \ALT_INV_RAM~367_combout\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~368_combout\);

\DataIn[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(15),
	o => \DataIn[15]~input_o\);

\RAM~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~374_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~37_q\);

\RAM~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~378_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~101_q\);

\RAM~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~165_q\);

\RAM~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~229_q\);

\RAM~369\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~369_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~229_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~165_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~101_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~37_q\,
	datab => \ALT_INV_RAM~101_q\,
	datac => \ALT_INV_RAM~165_q\,
	datad => \ALT_INV_RAM~229_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~369_combout\);

\RAM~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~53_q\);

\RAM~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~117_q\);

\RAM~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~181_q\);

\RAM~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~245_q\);

\RAM~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~370_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~245_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~181_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~117_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~53_q\,
	datab => \ALT_INV_RAM~117_q\,
	datac => \ALT_INV_RAM~181_q\,
	datad => \ALT_INV_RAM~245_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~370_combout\);

\RAM~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~376_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~69_q\);

\RAM~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~380_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~133_q\);

\RAM~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~197_q\);

\RAM~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~261_q\);

\RAM~371\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~371_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~261_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~197_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~133_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~69_q\,
	datab => \ALT_INV_RAM~133_q\,
	datac => \ALT_INV_RAM~197_q\,
	datad => \ALT_INV_RAM~261_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~371_combout\);

\RAM~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~85_q\);

\RAM~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~149_q\);

\RAM~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~213_q\);

\RAM~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \DataIn[15]~input_o\,
	ena => \RAM~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM~277_q\);

\RAM~372\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~372_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~277_q\ ) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[3]~input_o\ & ( \RAM~213_q\ ) ) ) # ( \Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~149_q\ ) ) ) # ( 
-- !\Endereco[2]~input_o\ & ( !\Endereco[3]~input_o\ & ( \RAM~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~85_q\,
	datab => \ALT_INV_RAM~149_q\,
	datac => \ALT_INV_RAM~213_q\,
	datad => \ALT_INV_RAM~277_q\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	dataf => \ALT_INV_Endereco[3]~input_o\,
	combout => \RAM~372_combout\);

\RAM~373\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM~373_combout\ = ( \Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~372_combout\ ) ) ) # ( !\Endereco[0]~input_o\ & ( \Endereco[1]~input_o\ & ( \RAM~371_combout\ ) ) ) # ( \Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~370_combout\ ) 
-- ) ) # ( !\Endereco[0]~input_o\ & ( !\Endereco[1]~input_o\ & ( \RAM~369_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAM~369_combout\,
	datab => \ALT_INV_RAM~370_combout\,
	datac => \ALT_INV_RAM~371_combout\,
	datad => \ALT_INV_RAM~372_combout\,
	datae => \ALT_INV_Endereco[0]~input_o\,
	dataf => \ALT_INV_Endereco[1]~input_o\,
	combout => \RAM~373_combout\);

ww_DataOut(0) <= \DataOut[0]~output_o\;

ww_DataOut(1) <= \DataOut[1]~output_o\;

ww_DataOut(2) <= \DataOut[2]~output_o\;

ww_DataOut(3) <= \DataOut[3]~output_o\;

ww_DataOut(4) <= \DataOut[4]~output_o\;

ww_DataOut(5) <= \DataOut[5]~output_o\;

ww_DataOut(6) <= \DataOut[6]~output_o\;

ww_DataOut(7) <= \DataOut[7]~output_o\;

ww_DataOut(8) <= \DataOut[8]~output_o\;

ww_DataOut(9) <= \DataOut[9]~output_o\;

ww_DataOut(10) <= \DataOut[10]~output_o\;

ww_DataOut(11) <= \DataOut[11]~output_o\;

ww_DataOut(12) <= \DataOut[12]~output_o\;

ww_DataOut(13) <= \DataOut[13]~output_o\;

ww_DataOut(14) <= \DataOut[14]~output_o\;

ww_DataOut(15) <= \DataOut[15]~output_o\;
END structure;


