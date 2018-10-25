library ieee;
use ieee.std_logic_1164.all;

entity PortaNOT is
 port
	(A: in std_logic;
	 S: out std_logic
	 );
end PortaNOT;

architecture func of PortaNOT is
begin
   S <= not A;
end func;