library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_comp is
--  Port ( );
end sim_comp;

architecture Behavioral of sim_comp is
component comp_1bit is
  Port ( A,B:in std_logic;
         mic,egal,mare: out std_logic
   );
end component;
signal a,b,mic,mare,egal:std_logic;
begin
U1: comp_1bit port map (A,B,mic,egal,mare);
process
begin
  a<='1';
  b<='0';
  wait for 100 ns;
   a<='0';
  b<='0';
  wait for 100 ns;
   a<='0';
  b<='1';
  wait for 100 ns;
end process;

end Behavioral;
