library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_num is
--  Port ( );
end sim_num;

architecture Behavioral of sim_num is
component num_modN is
generic(n: integer:=5);
 Port (clk,reset,load: in std_logic;
       val :in std_logic_vector(3 downto 0);
       Q: out std_logic_vector(3 downto 0);
       carry: out std_logic
   );
end component;
constant n:integer:=5;
signal clk,reset,load: std_logic:='0';
signal val :std_logic_vector(3 downto 0):="0110";
signal Q:  std_logic_vector(3 downto 0);
signal carry:  std_logic:='0';
begin
U1: num_modN generic map(n) port map(clk,reset,load,val,Q,carry);
clock: process
begin 
   clk<='1';
   wait for 10 ns;
   clk<='0';
   wait for 10 ns;
end process;
process
begin
reset<='0';
load<='0';
wait for 100 ns;
end process;

end Behavioral;
