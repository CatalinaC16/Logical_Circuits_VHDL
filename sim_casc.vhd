library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sim_casc is
--  Port ( );
end sim_casc;

architecture Behavioral of sim_casc is
component UPDOWN_COUNTER2 is
  PORT(
           clk: in std_logic; 
           start: in std_logic;
           reset: in std_logic; 
          up_down: in std_logic; 
           counter1: out std_logic_vector(3 downto 0);
           counter2: out std_logic_vector(3 downto 0);
          ok1: inout std_logic;
           ok2: inout std_logic
  );
  end component;
  signal START,RESET,CLK,UP_DOWN,ok1,ok2:std_logic;
  signal counter1,counter2: std_logic_vector(3 downto 0);
  
begin
U1: UPDOWN_COUNTER2 port map(CLK=>CLK,START=>START,RESET=>RESET,UP_DOWN=>UP_DOWN,counter1=>counter1,counter2=>counter2,ok1=>ok1,ok2=>ok2);

clock_process :process
begin
  
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;



stim_proc: process
begin        

  start<='1';  
  up_down <= '0';
  RESET<='1';
  WAIT FOR 30 NS;
  
  RESET<='0';
  start<='1';
  ok1<='1';
  ok2<='1';
  wait for 50 ns;
 
   wait;
end process;
end Behavioral;

