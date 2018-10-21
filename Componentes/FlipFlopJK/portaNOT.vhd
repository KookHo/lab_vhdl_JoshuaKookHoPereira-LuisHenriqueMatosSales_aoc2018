library ieee;
use ieee.std_logic_1164.all;

entity portaNOT is
port
	(NA: in std_logic;
	 SN: out std_logic
	 );
end portaNOT;

ARCHITECTURE func of portaNOT is
BEGIN
	SN <= not NA;
end func;