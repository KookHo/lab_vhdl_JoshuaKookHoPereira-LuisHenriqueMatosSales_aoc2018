library ieee;
use ieee.std_logic_1164.all;

entity flipflopD is port
	(
		D,clock: in std_logic;
		Q0,Q1: out std_logic
	);
end flipflopD;

ARCHITECTURE behavior of flipflopD is

component PortaAND
	port (A: in STD_LOGIC;
			B: in STD_LOGIC;
			SA: out STD_LOGIC
			);
end component;

component PortaNOT
	port(NA: in STD_LOGIC;
		  SN: out STD_LOGIC
		  );
end component;

signal Sand1: STD_LOGIC;
signal SN1: STD_LOGIC;
signal Sand2: STD_LOGIC;
signal SN2: STD_LOGIC;
signal Sand3: STD_LOGIC;
signal SN3: STD_LOGIC;
signal Sand4: STD_LOGIC;
signal SN4: STD_LOGIC;
signal Sand5: STD_LOGIC;
signal SN5: STD_LOGIC;
signal Qsim: STD_LOGIC;
signal Qnao: STD_LOGIC;


begin
	G1: portaAND port map (D, clock, Sand1);--porta 1
	G2: portaNOT port map (Sand1, SN1);
	G3: portaAND port map (D, D, Sand2);--porta 2
	G4: portaNOT port map (Sand2, SN2);
	G5: portaAND port map (clock, SN2, Sand3);--porta 3
	G6: portaNOT port map (Sand3, SN3);
	G7: portaAND port map (SN1, SN5, Sand4);--porta 4
	G8: portaNOT port map (Sand4, SN4);
	G9: portaAND port map (SN3,SN4, Sand5);--porta 5
	G10: portaNOT port map (Sand5, SN5);
	Q0 <= SN5;
	Q1 <= SN4;
end;	
	