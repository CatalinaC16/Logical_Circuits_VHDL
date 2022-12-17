library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_final is
--  Port ( );
end sim_final;

architecture Behavioral of sim_final is
component final is
   Port ( START_STOP : in STD_LOGIC;
           M : in STD_LOGIC;
           S : in STD_LOGIC;
           CLK : in STD_LOGIC;
           MINUTE : out STD_LOGIC_VECTOR (7 downto 0);
           SECUNDE :out STD_LOGIC_VECTOR (7 downto 0);
           LED: out std_logic);
end component;
signal start,m,s,clk,led:std_logic;
signal minute,secunde:std_logic_vector(7 downto 0);
begin
F1: final port map(start,m,s,clk,minute,secunde,led);
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
