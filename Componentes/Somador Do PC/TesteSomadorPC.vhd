library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity teste is
end teste;

architecture behavior of teste is
component SomadorPC is
    port ( 
        EA : in integer;  
		  EB : in integer;
        SOMA : out integer
    );
end component;

signal in1 : integer;
signal in2 : integer;
signal result : integer;  


begin

cacca: SomadorPC port map( 
EA => in1,
EB => in2,
SOMA => result
);

process
begin        

    in1 <= 10;
	 in2 <= 4;
    wait for 150 ns; 
    assert(result = 14)report "ERROR" severity error;
    wait;
end process;
end behavior;