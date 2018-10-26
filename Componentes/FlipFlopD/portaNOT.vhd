library ieee;
use ieee.std_logic_1164.all;

entity portaNOT is
 port
	(A: in std_logic;
	 S: out std_logic
	 );
end portaNOT;

architecture behavior of portaNOT is
begin
   S <= not A;
end behavior;