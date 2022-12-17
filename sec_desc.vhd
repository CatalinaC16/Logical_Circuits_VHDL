
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;


entity sec_desc  is
    Port ( clk : in STD_LOGIC;
            load:in std_logic;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           se: in STD_LOGIC_VECTOR (7 downto 0);
           so: out STD_LOGIC_VECTOR (7 downto 0);
           term : out STD_LOGIC);
end sec_desc;

architecture Behavioral of sec_desc is
signal sec: std_logic_vector(7 downto 0);
signal term1: std_logic;
begin
process(clk)
begin
    if(rst='1' ) then 
        sec<="00000000"; term1<='0';
    elsif(load='1')then
       sec<=se;
    elsif(en='0') then
       sec<="00000000";
    elsif(rising_edge(clk) and en='1')then 
     
     if(sec="00000000" and en='1') then
        sec<="00111011";term1<='1';
     else  sec<=sec-1;term1<='0'; 
       end if;
       end if;
end process;
term<=term1;
so<=sec;
end Behavioral;
