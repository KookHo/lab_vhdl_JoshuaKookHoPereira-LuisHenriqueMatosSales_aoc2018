library ieee;
use ieee.std_logic_1164.all;

entity NOTPort is
 port
	(A: in std_logic;
	 S: out std_logic
	 );
end NOTPort;

architecture behavior of NOTPort is
begin
   S <= not A;
end behavior;