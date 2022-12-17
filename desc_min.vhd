
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;


entity min_desc is
    Port ( clk : in STD_LOGIC;
           load:in std_logic;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           qe : in STD_LOGIC_VECTOR (7 downto 0);
           qo : out STD_LOGIC_VECTOR (7 downto 0);
           term : out STD_LOGIC);
end min_desc ;

architecture Behavioral of min_desc  is
signal min: std_logic_vector(7 downto 0):=qe;
signal term1: std_logic;
begin

process(clk)
begin
    if(rst='1') then 
        min<="00000000"; term1<='0';
    elsif(load='1')then
      min<=qe;
    elsif(rising_edge(clk) and en='1')then 
     
     if(min="00000000") then
        term1<='1';
     else term1<='0';  min<=min-1;
       end if;
       end if;
      
end process;
term<=term1;
qo<=min;
end Behavioral;
