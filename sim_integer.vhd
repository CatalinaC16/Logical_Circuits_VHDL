library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_integer is
--  Port ( );
end sim_integer;

architecture Behavioral of sim_integer is
component  binar8_zecimal_binar4 is
  Port( vector: in std_logic_vector(7 downto 0);
        zeci: out std_logic_vector(3 downto 0);
        unitati: out std_logic_vector(3 downto 0)
        ); 
end component;
signal vec:std_logic_vector(7 downto 0);
signal z, u: std_logic_vector(3 downto 0);

begin
S1: binar8_zecimal_binar4 port map(vector=>vec,zeci=>z,unitati=>u);
vec<="01001110";
end Behavioral;
