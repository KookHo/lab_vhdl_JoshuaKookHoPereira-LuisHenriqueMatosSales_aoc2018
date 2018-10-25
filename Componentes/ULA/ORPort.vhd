library ieee;
use ieee.std_logic_1164.all;

entity ORPort is port(
	A: in std_logic;
	B: in std_logic;
	S: out std_logic
);
END ORPort;

ARCHITECTURE behavior of ORPort is
BEGIN
	S <= A or B;
END behavior;