library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sim_gen is
--  Port ( );
end sim_gen;

architecture Behavioral of sim_gen is
component gen is
  Port ( data:in std_logic_vector(3 downto 0);
         clk,load: in std_logic;
         sel: in std_logic_vector(1 downto 0);
         vect: inout std_logic_vector(3 downto 0)
   );
end component;
signal data:std_logic_vector(3 downto 0):="0101";
signal clk,load: std_logic;
signal sel: std_logic_vector(1 downto 0):="00";
signal vect:  std_logic_vector(3 downto 0);
begin
M1: gen port map(data,clk,load,sel,vect);
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
 wait for 100 ns;
 load<='0';
 sel<="01";
  wait for 100 ns;
end process;

end Behavioral;
