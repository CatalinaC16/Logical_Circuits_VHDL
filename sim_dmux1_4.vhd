library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_dmux1_4 is
--  Port ( );
end sim_dmux1_4;

architecture Behavioral of sim_dmux1_4 is
component dmux_1_4 is
Port (
  selectii: in std_logic_vector(1 downto 0);
  intrare:in std_logic;
  iesiri:out std_logic_vector(3 downto 0)
);
end component;

signal selectii:std_logic_vector(1 downto 0);
signal intrare:std_logic;
signal iesiri:std_logic_vector(3 downto 0);

begin
U1: dmux_1_4 port map(selectii,intrare,iesiri);
process
begin

selectii<="01";
intrare<='1';
wait for 100 ns; 
end process;

end Behavioral;
