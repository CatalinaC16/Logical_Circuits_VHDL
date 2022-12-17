library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity bist_JK is
Port (J,K,R,S,Clk:in std_logic;
      Q,Qn: out std_logic
     );
end bist_JK;

architecture Behavioral of bist_JK is
signal temp: std_logic;

begin
process(R,S,J,K,Clk)
begin
    if(R='1')then temp<='0';
    elsif(S='1')then temp <='1';
    elsif(rising_edge(clk)) then 
      if(J='0' and K='1') then temp<='0';
      elsif(J='1' and K='0') then temp<='1';
      elsif(J='0' and K='0') then temp<=temp;
      elsif(J='1' and K='1') then temp<=(not temp);
      end if;
      end if;
end process;
Q<= temp;
Qn<=(not temp);
end Behavioral;
