
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;


entity ultima_secunda is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           secunde: out STD_LOGIC_VECTOR (7 downto 0);
           term : out STD_LOGIC);
end ultima_secunda;

architecture Behavioral of ultima_secunda is
signal sec: std_logic_vector(7 downto 0):= "00000000";
signal term1: std_logic;
begin

process(clk)
begin
    if(rst='1') then 
        sec<="00000000"; term1<='0';
    elsif(rising_edge(clk) and en='1')then 
     
     if(sec="00111011") then
      sec<="00000000"; term1<='1';
     else term1<='0';  sec<=sec+1;
       end if;
       end if;
      
end process;
term<=term1;
secunde<=sec;
end Behavioral;
