
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity numarator_secunde is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           secunde : out STD_LOGIC_VECTOR (3 downto 0);
           ok : out STD_LOGIC);
end numarator_secunde;

architecture Behavioral of numarator_secunde is
signal sec1 :std_logic_vector(3 downto 0):="0000";
signal ok1:std_logic:='0';
begin
process(clk)
 
begin
if(rst='1') then 
    sec1<="0000";ok1<='0';
elsif(rising_edge(clk) and en='1')then 
  if(sec1="1111") then
 ok1<='1';sec1<="0000";
else ok1<='0';
  sec1<=sec1+1;
   end if;
   end if;
end process;


ok<=ok1;
secunde<= sec1;
end Behavioral;
