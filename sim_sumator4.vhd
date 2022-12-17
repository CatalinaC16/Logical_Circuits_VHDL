
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sim_sumator4 is
--  Port ( );
end sim_sumator4;

architecture Behavioral of sim_sumator4 is
component sumator_4biti is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC;
           cin: in std_logic;
           suma : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal A,B,suma: std_logic_vector(3 downto 0):="0000";
signal cout,cin: std_logic:='0';
begin
M1: sumator_4biti port map(A,B,cout,cin,suma);
process
begin 
A<="0101";
B<="1001";
cin<='0';
wait for 100 ns;
A<="0101";
B<="1011";
cin<='1';
wait for 100 ns;
end process;

end Behavioral;
