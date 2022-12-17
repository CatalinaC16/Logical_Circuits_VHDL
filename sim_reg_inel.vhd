library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_reg_inel is
--  Port ( );
end sim_reg_inel;

architecture Behavioral of sim_reg_inel is
component reg_inel is
 Port ( Val: in std_logic_vector(3 downto 0);
         Q: out std_logic_vector(3 downto 0);
         SL,SR,clk,load: in std_logic
 );
end component;
signal Val: std_logic_vector(3 downto 0):="0101";
signal Q:  std_logic_vector(3 downto 0);
signal SL,SR,clk,load:  std_logic;
begin
U1: reg_inel port map(Val,Q,Sl,Sr,clk,load);
clock: process
begin 
clk<='1';
wait for 10 ns;
clk<='0';
wait for 10 ns;
end process;

stimuli: process
begin
load<='1';
sl<='0';
sr<='0';

wait for 200 ns;
load<='0';
sl<='1';
sr<='0';
wait for 200 ns;
sr<='1';
sl<='0';
wait for 200 ns;
end process;
end Behavioral;
