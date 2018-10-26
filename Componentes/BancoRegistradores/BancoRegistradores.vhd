	library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

Entity BancoRegistradores is port
	(
	 RegWrite: in std_logic; -- Sinal da unidade de controle
	 RegA: out std_logic_vector (15 downto 0);
	 RegB: out std_logic_vector (15 downto 0); 
	 WriteData: in std_logic_vector (15 downto 0); -- Write Back
	 EndRegWrite: in std_logic_vector (3 downto 0); -- Registrador de destino
	 ReadReg1: in std_logic_vector (3 downto 0);
	 ReadReg2: in std_logic_vector (3 downto 0)
	);
end BancoRegistradores;

Architecture behavior of BancoRegistradores is
	
	type RegBank is array(0 to 15) of std_logic_vector (15 downto 0);
	signal Regs : RegBank;
	
begin
	RegA <= Regs(to_integer(unsigned(ReadReg1)));
	RegB <= Regs(to_integer(unsigned(ReadReg2)));
		
	process (RegWrite)
		begin 
			if RegWrite = '1' then
				Regs(to_integer(unsigned(EndRegWrite))) <= WriteData;
				end if;
	end process;
	
end behavior;
					