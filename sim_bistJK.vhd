library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sim_bistJK is
--  Port ( );
end sim_bistJK;

architecture Behavioral of sim_bistJK is
component bist_JK is
Port (J,K,R,S,Clk:in std_logic;
      Q,Qn: out std_logic
     );
end component;
signal J,K,R,S,Clk,Q,Qn: std_logic;
begin
U1: bist_JK port map (J,K,R,S,Clk,Q,Qn);

clock: process
begin 
  Clk<='1';
  wait for 10 ns;
  Clk<='0';
  wait for 10 ns;
end process;


stimuli: process
begin 
S<='0';
R<='1';
J<='0';
K<='0';

wait for 100 ns;
S<='1';
R<='0';
J<='0';
K<='0';

wait for 100 ns;
S<='0';
R<='0';
J<='1';
K<='0';

wait for 100 ns;
S<='0';
R<='0';
J<='0';
K<='1';

wait for 100 ns;
S<='0';
R<='0';
J<='0';
K<='0';

wait for 100 ns;
end process;
end Behavioral;
