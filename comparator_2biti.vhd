library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_2biti is
 Port ( A,B:in std_logic_vector(1 downto 0);
         mic,egal,mare: out std_logic
 );
end comparator_2biti;

architecture Behavioral of comparator_2biti is
component comp_1bit is
  Port ( A,B:in std_logic;
         mic,egal,mare: out std_logic
   );
end component;
signal mare1,mare2,mic1,mic2,egal1,egal2:std_logic;
begin
U1: comp_1bit port map (A(0),B(0),mic1,egal1,mare1);
U2: comp_1bit port map (A(1),B(1),mic2,egal2,mare2);
Mare<= mare1 or (egal1 and mare2);
Egal<= egal1 and egal2; 
Mic<= (egal1 and mic2) or mic1;
end Behavioral;
