library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift2bitsRight is
generic(n:integer:= 2);
port(R  :in     STD_LOGIC_VECTOR(n-1 downto 0);
     L,E,w:in       STD_LOGIC;
     Clock:in       STD_LOGIC;
     Q      :buffer  STD_LOGIC_VECTOR(n-1 downto 0));
end shift2bitsRight;

architecture Behavioral of shift2bitsRight is
begin
process
begin
    wait until Clock'Event and Clock = '1';
    if E = '1' then
        if L = '1' then
            Q <= R;
        else
            Genbits: for i in 0 to n-2 loop
                Q(i) <= Q(i+1);
            end loop;
            Q(n-1) <= w;
        end if;
    end if;
end process;
 end Behavioral;