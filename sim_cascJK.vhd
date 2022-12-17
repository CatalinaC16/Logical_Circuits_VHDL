library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_cascJK is
--  Port ( );
end sim_cascJK;

architecture Behavioral of sim_cascJK is
component casc_JK is
 Port ( J,K,R,S,Clk: in std_logic;
        Q,Qn: inout std_logic_vector(7 downto 0)
  );
end component;
signal J,K,R,S,Clk: std_logic;
signal Q,Qn: std_logic_vector(7 downto 0);
begin
C1: casc_JK port map (J,K,R,S,Clk,Q,Qn);
clock: process
begin 
clk<='1';
wait for 10 ns;
clk<='0';
wait for 10 ns;
end process;

stimuli: process
begin 
J<='0';
K<='0';
S<='1';
R<='0';
wait for 100 ns;
J<='1';
K<='0';
S<='0';
R<='0';
wait for 100 ns;
J<='0';
K<='0';
S<='0';
R<='1';
wait for 100 ns;

end process;

end Behavioral;
