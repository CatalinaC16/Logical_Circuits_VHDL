library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_bistT is
--  Port ( );
end sim_bistT;

architecture Behavioral of sim_bistT is
component bist_T is
Port ( T, R, S, Clk:in std_logic;
       Q,Qn: out std_logic
 );
end component;
signal T,R,S,Clk,Q,Qn:std_logic;
begin
U1: bist_T port map(T,R,S,Clk,Q,Qn);
clock:process
begin 
  clk<='1';
  wait for 10 ns;
  clk<='0';
  wait for 10 ns;
end process;

stimuli: process
begin
R<='1';
S<='0';
T<='0';
wait for 100 ns;
R<='0';
S<='1';
T<='0';
wait for 100 ns;
R<='0';
S<='0';
T<='0';
wait for 100 ns;
R<='0';
S<='0';
T<='1';
wait for 100 ns;
end process;

end Behavioral;
