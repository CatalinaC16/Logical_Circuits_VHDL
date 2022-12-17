library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity mux_n_1 is
generic ( nr_selectii: integer:= 3);
Port ( 
   
   selectii: in std_logic_vector(nr_selectii-1 downto 0);
   intrari :in std_logic_vector( 2**nr_selectii-1 downto 0);
   iesire : out std_logic
 
 );
end mux_n_1;

architecture Behavioral of mux_n_1 is

begin
iesire<=intrari(CONV_INTEGER(selectii));

end Behavioral;
