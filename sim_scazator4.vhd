library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_scazator4 is
--  Port ( );
end sim_scazator4;

architecture Behavioral of sim_scazator4 is

component scazator_4biti is
Port (A: in std_logic_vector(3 downto 0);
      B: in  std_logic_vector(3 downto 0);
      Bin: in  std_logic;
      D: out std_logic_vector(3 downto 0);
      Bout: out std_logic 
  );
end component;
signal A,B,D: std_logic_vector(3 downto 0);
signal Bin,Bout:std_logic;
begin
K1: scazator_4biti port map(A,B,Bin,D,Bout);
process
begin 
A<="0101";
B<="1011";
Bin<='0';
wait for 100 ns;
A<="1111";
B<="1010";
wait for 100 ns;
end process;

end Behavioral;
