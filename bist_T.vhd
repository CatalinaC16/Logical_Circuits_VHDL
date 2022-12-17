library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bist_T is
Port ( T, R, S, Clk:in std_logic;
       Q,Qn: out std_logic
 );
end bist_T;

architecture Behavioral of bist_T is
signal temp: std_logic;
begin
process(T,R,S,Clk)
begin
if(R='1') then temp<='0';
elsif(S='1')then temp<='1';
elsif(rising_edge(clk)) then
  if(T='1')then temp<=(not temp);
  elsif(T='0') then temp<=temp;
  end if;
  
 end if;
end process;
Q<=temp;
Qn<=(not temp);
end Behavioral;
