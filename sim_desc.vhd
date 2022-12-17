
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sim_desc is
--  Port ( );
end sim_desc;

architecture Behavioral of sim_desc is
component numarator_invers is
   Port ( clk : in STD_LOGIC;
           load:in std_logic;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           m: in STD_LOGIC_VECTOR (7 downto 0);
           s: in std_logic_vector(7 DOWNTO 0);
            minute:out STD_LOGIC_VECTOR (7 downto 0);
           secunde: out std_logic_vector(7 DOWNTO 0);
           ok :out std_logic);
end component;
signal clk,rst,en,ok,load:std_logic;
signal minute,secunde:std_logic_vector(7 downto 0);
signal m,s:std_logic_vector(7 downto 0);
begin
A: numarator_invers port map(clk,load,rst,en,m,s,minute,secunde,ok);
clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;



stim_proc: process
begin 
rst<='1';
wait for 200 ns;
en<='1';
rst<='0';
m<="00100011";
s<="00100011";
load<='1';
wait for 100 ns;
load<='0';
   wait;
end process;
end Behavioral;
