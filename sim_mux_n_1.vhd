library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_mux_n_1 is
--  Port ( );
end sim_mux_n_1;

architecture Behavioral of sim_mux_n_1 is
component  mux_n_1 is
generic ( nr_selectii: integer:= 3);
Port ( 
   
   selectii: in std_logic_vector(nr_selectii-1 downto 0);
   intrari :in std_logic_vector( 2**nr_selectii-1 downto 0);
   iesire : out std_logic
 
 );
end component;

constant nr: integer :=3;
signal selectii:  std_logic_vector(nr-1 downto 0);
signal intrari :std_logic_vector( 2**nr-1 downto 0);
signal iesire :  std_logic;

begin
U1: mux_n_1 generic map(nr) port map (selectii,intrari,iesire);

process
begin 
selectii<="110";
intrari<="10101010";
wait for 100 ns;
selectii<="000";
wait for 100 ns;
selectii<="011";
wait for 100 ns;
end process;

end Behavioral;
