library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decodificator is
    Port ( cod_bcd : in STD_LOGIC_VECTOR (3 downto 0);
           vector : out STD_LOGIC_VECTOR (9 downto 0));
end decodificator;

architecture Behavioral of decodificator is

begin
--decodificator prioritar/ zecimal
process(cod_bcd)
begin 
  case cod_bcd is
    when "0000" => vector<="0000000001";
    when "0001" => vector<="0000000010"; 
    when "0010" => vector<="0000000100";
    when "0011" => vector<="0000001000"; 
    when "0100" => vector<="0000010000";
    when "0101" => vector<="0000100000"; 
    when "0110" => vector<="0001000000";
    when "0111" => vector<="0010000000";
    when "1000" => vector<="0100000000";
    when "1001" => vector<="1000000000";
    when others => vector<="1111111111";
    end case; 
end process;

end Behavioral;
