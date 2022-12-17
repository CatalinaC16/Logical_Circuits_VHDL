library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registru_universal is
 Port (Clk,Clear,SR,SL: in std_logic;
         Sel: in std_logic_vector(1 downto 0);
       val: in std_logic_vector(3 downto 0);
       Q: out std_logic_vector(3 downto 0)
 
  );
end registru_universal;

architecture Behavioral of registru_universal is
signal temp: std_logic_vector(3 downto 0);
begin
process(clk,Clear,sel,sr,sl)
begin 
if(rising_edge(clk)) then
   if(Clear='1')then temp<="0000";
   else case sel is
    when "00" => temp<=temp;
    when "01" => temp<=val;
    when "10" => temp(3 downto 1)<= temp( 2 downto 0); temp(0)<=SL;
    when "11" => temp(2 downto 0)<= temp(3 downto 1); temp(3)<=SR;
    when others => temp<="1111";
    end case;
    end if;
end if;
end process;
Q<=temp;
end Behavioral;
