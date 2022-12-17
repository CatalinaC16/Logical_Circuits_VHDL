
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_dcd is
--  Port ( );
end sim_dcd;

architecture Behavioral of sim_dcd is
component decodificator is
    Port ( cod_bcd : in STD_LOGIC_VECTOR (3 downto 0);
           vector : out STD_LOGIC_VECTOR (9 downto 0));
end component;
signal cod_bcd:std_logic_vector(3 downto 0);
signal vector:std_logic_vector(9 downto 0);

begin
S1: decodificator port map(cod_bcd,vector);

process
begin
cod_bcd<="0111";
wait for 100 ns;
cod_bcd<="1100";
wait for 100 ns;
cod_bcd<="0101";
wait for 100 ns;
end process;

end Behavioral;
