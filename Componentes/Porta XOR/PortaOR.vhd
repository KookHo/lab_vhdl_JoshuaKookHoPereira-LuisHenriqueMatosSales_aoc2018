library ieee;
use ieee.std_logic_1164.all;

entity portaOR is port(
	PA: in std_logic;
	PB: in std_logic;
	SO: out std_logic
);
END portaOR;

ARCHITECTURE behavior of portaOR is
BEGIN
	SO <= pa or pb;
END behavior;