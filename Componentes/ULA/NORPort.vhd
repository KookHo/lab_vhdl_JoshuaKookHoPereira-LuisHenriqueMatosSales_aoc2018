library ieee;
use ieee.std_logic_1164.all;

entity NORPort is port
	(
	 A, B : in std_logic;
	 S: out std_logic
	);
end NORPort;

Architecture behavior of NORPort is
begin
	S <= not (A OR B);
end behavior;