library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity num_sim is
--  Port ( );
end num_sim;

architecture Behavioral of num_sim is
component num_binar is
 Port ( load,reset,c_up,c_down,hold,clk: in std_logic;
        val: in std_logic_vector(3 downto 0);
       Q: out std_logic_vector(3 downto 0);
        carry,borrow: out std_logic
  );
end component;
signal load,reset,c_up,c_down,hold,clk: std_logic:='0';
signal val: std_logic_vector(3 downto 0):="0101";
signal Q:  std_logic_vector(3 downto 0):="0000";
signal carry,borrow: std_logic:='0';
begin
U1: num_binar port map(load,reset,c_up,c_down,hold,clk,val,Q,carry,borrow);

clock: process
begin
clk<='1';
wait for 10 ns;
clk<='0';
wait for 10 ns;
 
end process;

stimuli: process
begin 
reset<='0';
hold<='0';
load<='0';
c_up<='1';
wait  for 100 ns;
reset<='1';
hold<='0';
load<='0';
c_up<='0';
wait  for 100 ns;
reset<='0';
hold<='0';
load<='1';
c_up<='0';
wait  for 100 ns;
reset<='0';
hold<='0';
load<='0';
c_down<='1';
wait  for 100 ns;
end process;

end Behavioral;
