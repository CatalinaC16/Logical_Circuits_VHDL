library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counters is
end tb_counters;

architecture Behavioral of tb_counters is

component UPDOWN_COUNTER 
    Port ( clk: in std_logic; 
           start: in std_logic;
           reset: in std_logic; 
          up_down: in std_logic; 
           counter1: out std_logic_vector(3 downto 0);
           counter2: out std_logic_vector(3 downto 0);
            ok1: inout std_logic;
           ok2: inout std_logic
     );
end component;
signal reset,clk,up_down,start,ok1,ok2: std_logic;
signal counter1:std_logic_vector(3 downto 0);
signal counter2:std_logic_vector(3 downto 0);

begin
dut: UPDOWN_COUNTER port map (clk => clk, start=>start,reset=>reset, up_down => up_down, counter1 => counter1,counter2 => counter2,ok1=>ok1,ok2=>ok2);

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
    ok1<='1';
    ok2<='1';
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