
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;


entity ultimul_minut is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0);
           term : out STD_LOGIC);
end ultimul_minut;

architecture Behavioral of ultimul_minut is
signal min: std_logic_vector(7 downto 0):= "00000000";
signal term1: std_logic;
begin

process(clk)
begin
    if(rst='1') then 
        min<="00000000"; term1<='0';
    elsif(rising_edge(clk) and en='1')then 
     
     if(min="01100011") then
       min<="00000000"; term1<='1';
     else term1<='0';  min<=min+1;
       end if;
       end if;
      
end process;
term<=term1;
q<=min;
end Behavioral;
