library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sim_timerr is
--  Port ( );
end sim_timerr;

architecture Behavioral of sim_timerr is
component cascadare is
   Port ( START_STOP : in STD_LOGIC;
           M : in STD_LOGIC;
           S : in STD_LOGIC;
           CLK : in STD_LOGIC;
           MINUTE : out STD_LOGIC_VECTOR (7 downto 0);
           SECUNDE :out STD_LOGIC_VECTOR (7 downto 0));
end component;
signal clk,start,M,S:std_logic;
signal min,sec: std_logic_vector(7  downto 0);
begin
C1: cascadare port map(start,m,s,clk,min,sec);

clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;



stim_proc: process
begin 
--numara cresc  
   M<='0';
   S<='0';     
   start<='1';
 wait for 1000 ns;
 --hold
 start<='0';
  wait for 1000 ns;
  
   start<='1';
 wait for 1000 ns;
 --reset
 M<='1';
 S<='1';
 
   wait for 1000 ns;
   --nr cresc
     M<='0';
     S<='0';
     wait for 1000 ns;
 
      M<='0';
     S<='1';
  wait for 1200 ns;
    M<='0';
     S<='0';
     wait for 3000 ns;
     M<='1';
     S<='0';
     wait for 3500 ns;
     M<='0';
     S<='0';
   wait;
end process;
end Behavioral;
