library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_and is
--  Port ( );
end sim_and;

architecture Behavioral of sim_and is
component and_3structural is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           y : out STD_LOGIC);
end component;
signal a,b,c,y:std_logic:='0';
begin
M1: and_3structural port map (a=>a,b=>b,c=>c,y=>y);
process
begin

a<='1';
b<='1';
c<='0';
wait for 1000 ns;
a<='0';
b<='1';
c<='0';
wait for 1000 ns;
a<='1';
b<='0';
c<='0';
wait for 1000 ns;
a<='0';
b<='0';
c<='0';
wait for 1000 ns;
a<='1';
b<='1';
c<='1';
wait for 1000 ns;
end process;

end Behavioral;
