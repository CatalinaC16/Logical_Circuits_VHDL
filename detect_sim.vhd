library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detect_sim is
--  Port ( );
end detect_sim;

architecture Behavioral of detect_sim is
component detector_secv is
 Port ( val:in std_logic_vector(3 downto 0);
   x,R,clk,load: in std_logic;
   count: out std_logic_vector(3 downto 0);
   detect : out std_logic
);
end component;

signal val: std_logic_vector(3 downto 0):="0110";
signal x,R,clk,load: std_logic;
signal count: std_logic_vector(3 downto 0);
signal detect : std_logic;

begin
U1: detector_secv port map(val,x,r,clk,load,count,detect);
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
r<='0';
wait for 20 ns;
load<='0';
x<='1';
wait for 20 ns;
load<='0';

x<='1';
wait for 20 ns;
load<='0';
x<='0';
wait for 20 ns;
end process;
end Behavioral;
