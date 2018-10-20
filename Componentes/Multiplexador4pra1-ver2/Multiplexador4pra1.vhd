library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Multiplexador4pra1 is 
	port(Selector: in std_logic_vector (1 downto 0);
		  A, B, C, D: in bit; --std_logic_vector
		  S: out bit
		);
end Multiplexador4pra1;

ARCHITECTURE behavior of Multiplexador4pra1 is
begin

	process(Selector, A, B, C, D)
	
		begin
		
			if Selector = "00" then
				S <= A;
			elsif Selector = "01" then
				S <= B;
			elsif Selector = "10" then
				S <= C;
			else
				S <= D;
			end if;
			
		end process;
		
end behavior;