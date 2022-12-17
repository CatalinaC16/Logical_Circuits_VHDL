library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_bistD is
--  Port ( );
end sim_bistD;

architecture Behavioral of sim_bistD is
component bist_D is
Port ( D: in std_logic;
       Clk: in std_logic;
       S: in std_logic;
       R: in std_logic;
       Q:out std_logic;
       QN: out std_logic
);
end component;
signal D,clk,s,r,Q,Qn:std_logic;
begin
U1: bist_D port map (D,clk,s,r,Q,Qn);
generarea_clock: process
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

wait for 100 ns;
S<='0';
R<='1';

wait for 100 ns;
S<='0';
R<='0';
D<='1';
wait for 100 ns;
S<='0';
R<='0';
D<='0';
wait for 100 ns;
end process;
end Behavioral;
