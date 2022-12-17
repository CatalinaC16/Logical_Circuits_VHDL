library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_num_zec is
--  Port ( );
end sim_num_zec;

architecture Behavioral of sim_num_zec is
component num_zecimal is
 Port ( Load,Reset,C_up,C_down,clk: in std_logic;
        carry,borrow: out std_logic;
        val:in  std_logic_vector(3 downto 0);
         Q: out std_logic_vector(3 downto 0)
 );
end component;
signal Load,Reset,C_up,C_down,clk: std_logic;
signal carry,borrow:  std_logic;
signal val: std_logic_vector(3 downto 0):="0100";
signal Q: std_logic_vector(3 downto 0);
begin
A1: num_zecimal port map( load,Reset,C_up,C_down,clk,carry,borrow,val,Q);
clock: process
begin 
 clk<='1';
 wait for 10 ns;
 clk<='0';
 wait for 10 ns;
 end process;

stimuli: process
begin
Load<='0';
Reset<='0';
C_up<='1';
wait for 100 ns;
Load<='1';
Reset<='0';
C_down<='0';
wait for 100 ns;
Load<='0';
Reset<='0';
C_down<='1';
wait for 100 ns;
end process;
end Behavioral;
