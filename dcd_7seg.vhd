library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dcd_7seg is
    Port ( cod_bcd : in STD_LOGIC_VECTOR (3 downto 0);
           afisaj_7seg : out STD_LOGIC_VECTOR (6 downto 0));
end dcd_7seg;

architecture Behavioral of dcd_7seg is

begin
process(cod_bcd)
begin
  case cod_bcd is
  when "0000"=> afisaj_7seg<="0000001";
  when "0001"=> afisaj_7seg<="1001111";
  when "0010"=> afisaj_7seg<="0010010";
  when "0011"=> afisaj_7seg<="0000110";
  when "0100"=> afisaj_7seg<="1001100";
  when "0101"=> afisaj_7seg<="0100100";
  when "0110"=> afisaj_7seg<="0100000";
  when "0111"=> afisaj_7seg<="0001111";
  when "1000"=> afisaj_7seg<="0000000";
  when "1001"=> afisaj_7seg<="0000100";
  when others=> afisaj_7seg<="0000000";
  end case;
end process;

end Behavioral;
