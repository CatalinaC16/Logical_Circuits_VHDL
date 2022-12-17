library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sim_reg is
--  Port ( );
end sim_reg;

architecture Behavioral of sim_reg is
component registru_universal is
 Port (Clk,Clear,SR,SL: in std_logic;
         Sel: in std_logic_vector(1 downto 0);
       val: in std_logic_vector(3 downto 0);
       Q: out std_logic_vector(3 downto 0)
 
  );
end component;
signal Clk,Clear,SR,SL: std_logic;
signal Sel: std_logic_vector(1 downto 0);
signal val: std_logic_vector(3 downto 0):="0101";
signal Q: std_logic_vector(3 downto 0);
begin
U1: registru_universal port map(Clk,Clear,SR,SL,Sel,val,Q);
clock: process
begin
    clk<='1';
    wait for 10 ns;
    clk<='0';
    wait for 10 ns;
end process;

process
begin 
Clear<='0';
Sel<="01";
SR<='0';
SL<='0';
val<="0011";
wait for 100 ns;
Clear<='1';
Sel<="01";
SR<='0';
SL<='0';
val<="0011";
wait for 100 ns;
Clear<='0';
Sel<="10";
SR<='0';
SL<='1';
val<="0011";
wait for 100 ns;
Clear<='0';
Sel<="11";
SR<='1';
SL<='0';
val<="0011";
wait for 100 ns;
end process;
end Behavioral;
