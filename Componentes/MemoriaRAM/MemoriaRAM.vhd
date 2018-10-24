library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


Entity MemoriaRAM is port
	(Endereco: in std_logic_vector (3 downto 0);
	 DataIn: in std_logic_vector (15 downto 0);	 
	 DataOut: out std_logic_vector (15 downto 0);
	 Clock, RAMWrite: in std_logic
	);
End MemoriaRAM;

Architecture behavior of MemoriaRAM is

type RAMMem is array (16 downto 0) of std_logic_vector (15 downto 0);

signal RAM : RAMMem := (others => "0000000000000000");

begin
	process(Clock)
		begin
			if(rising_edge(Clock)) then
				if(RAMWrite = '1') then
					RAM(to_integer(unsigned(Endereco))) <= DataIn;
				end if;
			end if;
	end process;
	
	DataOut <= RAM(to_integer(unsigned(Endereco)));
end behavior;
