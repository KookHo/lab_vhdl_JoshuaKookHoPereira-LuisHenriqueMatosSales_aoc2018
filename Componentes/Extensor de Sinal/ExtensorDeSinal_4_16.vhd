library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ExtensorDeSinal_4_16 is 
    port ( data_in : in std_logic_vector(3 downto 0);
           data_out : out std_logic_vector(15 downto 0));
end ExtensorDeSinal_4_16;

architecture behavioral of ExtensorDeSinal_4_16 is 
begin
    process (data_in)
begin
    
    
    data_out(3 downto 0) <= data_in;
    data_out(15 downto 4) <= (15 downto 4 => data_in(3));
end process;     
end behavioral;