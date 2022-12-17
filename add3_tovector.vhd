library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity add3_tovector is
    Port ( bcd_cod : in STD_LOGIC_VECTOR (3 downto 0);
           exces : out STD_LOGIC_VECTOR (3 downto 0));
end add3_tovector;

architecture Behavioral of add3_tovector is

begin
exces<=bcd_cod+"0011";

end Behavioral;
