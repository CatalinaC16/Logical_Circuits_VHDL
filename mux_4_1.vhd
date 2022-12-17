library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4_1 is
    Port ( selectii : in STD_LOGIC_VECTOR (1 downto 0);
           intrari : in STD_LOGIC_VECTOR (3 downto 0);
           iesire : out STD_LOGIC);
end mux_4_1;

architecture Behavioral of mux_4_1 is

begin
process(selectii,intrari)
begin 
 case selectii is
   when "00" => iesire<=intrari(0);
   when "01" => iesire<=intrari(1);
   when "10" => iesire<=intrari(2);
   when "11" => iesire<=intrari(3);
   when others=> iesire<='0';
 end case;
 end process;
end Behavioral;
