library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counters is
end tb_counters;

architecture Behavioral of tb_counters is

component count_updown5
    Port (  clk: in std_logic; 
           start: in std_logic;
           reset: in std_logic; 
          up_down: in std_logic; 
           counter: out std_logic_vector(3 downto 0);
           ok: out std_logic
     );
end component;
signal reset,clk,up_down,start,ok: std_logic;
signal counter:std_logic_vector(3 downto 0);

begin
dut: count_updown5 port map (clk => clk, start=>start,reset=>reset, up_down => up_down, counter => counter,ok=>ok);

clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;



stim_proc: process
begin        
   start<='0';
     reset <= '1';
   up_down <= '0';
    wait for 50 ns;  
    start<='1';  
    reset <= '1';
      wait for 30 ns;
  reset <= '0';
  wait for 300 ns;
  start<='0';  
  wait for 200 ns;
  start<='1';  
  up_down <= '1';
  
   wait;
end process;
end Behavioral;