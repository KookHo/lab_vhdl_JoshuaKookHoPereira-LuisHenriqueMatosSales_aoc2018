library ieee;
use ieee.std_logic_1164.all;

entity Mux2x1 is
	port(
		A, B, S: in bit;
		saida: out bit
	);
end Mux2x1;

ARCHITECTURE behavior of Mux2x1 is
begin
	saida <= (A and S) or (B and NOT(S));
end;