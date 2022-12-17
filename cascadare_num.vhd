library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity UPDOWN_COUNTER2 is
    Port ( clk: in std_logic; 
           start: in std_logic;
           reset: in std_logic; 
          up_down: in std_logic; 
           counter1: out std_logic_vector(3 downto 0);
           counter2: out std_logic_vector(3 downto 0)
         
     );
end UPDOWN_COUNTER2;

architecture Behavioral of UPDOWN_COUNTER2 is
signal count_updown1: std_logic_vector(3 downto 0);
signal count_updown2: std_logic_vector(3 downto 0);
signal ok1,ok2:std_logic;
begin

COUNTER9: process(clk,ok2)
  begin 
  if(start='1' or ok2='1') then
    if(rising_edge(clk))then
     if(reset='1') then
       count_updown1<=x"0";
       
     elsif(up_down='1') then 
        count_updown1<=count_updown1-x"1";
           ok1<='0';
        else 
        count_updown1<=count_updown1+x"1";
       ok1<='0';
    end if;
    if(up_down='1' AND count_updown1="0000") then
      count_updown1<="1001";
      ok1<='1';
    elsif(up_down='0' AND count_updown1="1001") then
       count_updown1<="0000";
      ok1<='1';
     end if;
     end if;
     end if;
     end process;
  counter1<= count_updown1;
  
COUNTER5: process(clk,ok1)
  begin 
  if(ok1='1') then
    if(rising_edge(clk))then
     if(reset='1') then
       count_updown2<=x"0";
     
     elsif(up_down='1') then 
        count_updown2<=count_updown2-x"1";
       
        else 
        count_updown2<=count_updown2+x"1";
        
    end if;
    if(up_down='1' AND count_updown2="0000") then
      count_updown2<="0101";
      ok2<='1';
    elsif(up_down='0' AND count_updown2="0101") then
       count_updown2<="0000";
      ok2<='1';
     end if;
     end if;
     end if;
     end process;
  counter2<= count_updown2;
end Behavioral;
