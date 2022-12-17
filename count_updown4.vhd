library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;


entity count_updown5 is
    Port (  clk: in std_logic; 
           start: in std_logic;
           reset: in std_logic; 
          up_down: in std_logic; 
           counter: out std_logic_vector(3 downto 0);
           ok: inout std_logic);
end count_updown5;

architecture Behavioral of count_updown5 is
signal count_updown: std_logic_vector(3 downto 0);
signal temp: std_logic:='1';

begin
process(clk)
  begin
  
  if(start='1' and ok='1') then
    if(rising_edge(clk))then
     if(reset='1') then
       count_updown<=x"0";
     
     elsif(up_down='1') then 
        count_updown<=count_updown-x"1";
        temp<='0'; 
        else 
        count_updown<=count_updown+x"1";
        temp<='0';
    end if;
    if(up_down='1' AND count_updown="0000") then
      count_updown<="0101";
      temp<='1';
    elsif(up_down='0' AND count_updown="0101") then
       count_updown<="0000";
       temp<='1';
     end if;
     end if;
     end if;
     end process;
     counter<= count_updown;
     ok<=temp;
end Behavioral;
