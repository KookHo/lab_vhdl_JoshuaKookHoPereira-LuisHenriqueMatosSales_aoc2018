library ieee;
use ieee.std_logic_1164.all;

entity PortaNOT is
 port
	(NA: in std_logic;
	 SN: out std_logic
	 );
end PortaNOT;

architecture func of PortaNOT is
begin
   SN <= not NA;
end func;