library ieee;
use ieee.std_logic_1164.all;

entity JK is port
	(
		J,K,clock: in std_logic;
		Q1: out std_logic
	);
end JK;

ARCHITECTURE behavior of JK is

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

signal state: STD_LOGIC;
signal output: STD_LOGIC_vector(1 downto 0);


begin
	output <= J & K;
	process(Clock)
		begin
			if Clock = '1' then
				case(output) is
					when "11" => state <= not (state);
					when "10" => state <= '1';
					when "01" => state <= '0';
					when others => NULL;
				end case;
			end if;
		end process;
		
	Q1 <= state;
end;	
	