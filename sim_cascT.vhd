library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_cascT is
 --Port ( );
end sim_cascT;

architecture Behavioral of sim_cascT is
component casc_bistT is
 Port ( T,R,S,Clk: in std_logic;
  Q,Qn:inout std_logic_vector(7 downto 0)
  );
end component;
signal T,R,S,Clk: std_logic;
signal Q,Qn: std_logic_vector(7 downto 0);
begin
U1: casc_bistT port map(T,R,S,Clk,Q,Qn);
clock: process
begin 
clk<='1';
wait for 10 ns;
clk<='0';
wait for 10 ns;
end process;

stimuli: process
begin 
 S<='1';
 R<='0';
 T<='1';
 wait for 100 ns;
  S<='0';
 R<='0';
 T<='1';
 wait for 100 ns;
  S<='0';
 R<='0';
 T<='0';
 wait for 100 ns;
end process;

end Behavioral;
