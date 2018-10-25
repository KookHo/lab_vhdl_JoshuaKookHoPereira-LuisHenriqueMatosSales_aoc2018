library ieee;
use ieee.std_logic_1164.all;

entity NANDPort is port
	(
	 A, B : in std_logic;
	 S: out std_logic
	);
end NANDPort;

Architecture behavior of NANDPort is
begin
	S <= not (A and B);
end behavior;