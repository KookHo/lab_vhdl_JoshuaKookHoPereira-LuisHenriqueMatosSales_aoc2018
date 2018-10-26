library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopJK is port
	(
		J,K,clock: in std_logic;
		Q0,Q1: out std_logic
	);
end FlipFlopJK;

ARCHITECTURE behavior of FlipFlopJK is

component portaAND
	port (A: in STD_LOGIC;
			B: in STD_LOGIC;
			SA: out STD_LOGIC
			);
end component;

component portaNOT
	port (NA: in STD_LOGIC;
			SN: out STD_LOGIC
			);
end component;

signal Sand1: STD_LOGIC;
signal Sand2: STD_LOGIC;
signal SN1: STD_LOGIC;
signal Sand3: STD_LOGIC;
signal Sand4: STD_LOGIC;
signal SN2: STD_LOGIC;
signal Sand5: STD_LOGIC;
signal SN3: STD_LOGIC;
signal Sand6: STD_LOGIC;
signal SN4: STD_LOGIC;


begin
	G1: portaAND port map (SN4, J, Sand1);
	G2: portaAND port map (Sand1, clock, Sand2);
	G3: portaNOT port map (Sand2, SN1);--porta 1
	G4: portaAND port map (clock, K, Sand3);
	G5: portaAND port map (Sand3, SN3, Sand4);
	G6: portaNOT port map (Sand4, SN2);--porta 2
	G7: portaAND port map (SN1, SN4, Sand5);
	G8: portaNOT port map (Sand5, SN3);--porta 3
	G9: portaAND port map (SN3, SN2, Sand6);
	G10: portaNOT port map (Sand6, SN4);--porta 4
	Q1 <= SN3;
	Q0 <= SN4;
end;	
	