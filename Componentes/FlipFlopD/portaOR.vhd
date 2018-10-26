library ieee;
use ieee.std_logic_1164.all;

entity portaOR is port(
	A: in std_logic;
	B: in std_logic;
	S: out std_logic
);
END portaOR;

ARCHITECTURE behavior of portaOR is
BEGIN
	S <= A or B;
END behavior;