library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sim_dmux is
--  Port ( );
end sim_dmux;

architecture Behavioral of sim_dmux is
component dmux_1_n is
generic(nr_selectii: integer:=3);
 Port (
 
 intrare:in std_logic;
 selectii:in std_logic_vector(nr_selectii-1 downto 0);
 iesiri :out std_logic_vector(2** nr_selectii-1 downto 0)
 
  );
end component;
constant nr:integer:=3 ;
signal selectii:std_logic_vector(nr-1 downto 0);
signal iesiri: std_logic_vector(2**nr-1 downto 0);
signal intrare:std_logic;
begin
U1: dmux_1_n generic map(nr) port map(intrare,selectii,iesiri);
process
    begin
        intrare<='1';
        selectii<="101";
        wait for 100 ns;
        selectii<="011";
        wait for 100 ns;
end process;


end Behavioral;
