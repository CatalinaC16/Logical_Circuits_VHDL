library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bist_D is
Port ( D: in std_logic;
       Clk: in std_logic;
       S: in std_logic;
       R: in std_logic;
       Q:out std_logic;
       QN: out std_logic
);
end bist_D;

architecture Behavioral of bist_D is
signal temp:std_logic;
begin
process(D,Clk,R,S)
begin 
 if(R='1') then temp<='0';
 elsif(S='1')then temp<='1';
 elsif(rising_edge(clk)) then 
     if(D='1')then temp<='1';
     elsif(D='0')then temp<='0';
     end if;
  end if;
end process;
Q<=temp;
Qn<=(not temp);
end Behavioral;
