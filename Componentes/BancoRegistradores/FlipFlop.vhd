library ieee;
use ieee.std_logic_1164.all;

entity FlipFLop is port
	(
		D: in std_logic_vector (15 downto 0);
		Clock: in std_logic;
		Q: out std_logic_vector (15 downto 0)
	);
end FlipFlop;

ARCHITECTURE behavior of FlipFlop is

component PortaAND
	port (A: in STD_LOGIC;
			B: in STD_LOGIC;
			SA: out STD_LOGIC
			);
end component;

--component PortaNOT
--	port(NA: in STD_LOGIC;
--		  SN: out STD_LOGIC
--		  );
--end component;

signal Sand1: STD_LOGIC;
signal Sand2: STD_LOGIC;
signal Sand3: STD_LOGIC;
signal Sand4: STD_LOGIC;


begin
	G1: portaAND port map (D, Clock, Sand1);
	G2: portaAND port map (NOT D, Clock, Sand2);
	G3: portaAND port map (NOT Sand1, NOT Sand4, Sand3);
	G4: portaAND port map (NOT Sand3, NOT Sand2, Sand4);
	Q <= NOT Sand3;
end;	