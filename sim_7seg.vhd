
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_7seg is
--  Port ( );
end sim_7seg;

architecture Behavioral of sim_7seg is
component bcd_7segment is
Port ( vector: in STD_LOGIC_VECTOR (3 downto 0);
        Seven_Segment : out STD_LOGIC_VECTOR (6 downto 0)
     );
end component;
signal vector: std_logic_vector(3 downto 0);
signal Seven_Segment: std_logic_vector(6 downto 0);

begin
U1: bcd_7segment port map(vector=>vector, Seven_Segment=>Seven_Segment);
stimuli: process
 begin 
 vector<="0010";
 wait for 10 ns;
 vector<="0111";
 wait for 10 ns;
 vector <="1001";
 wait for 10 ns;
 vector<="0101";
 wait for 10 ns;
 vector<="1111";
 wait for 20 ns;
end process stimuli;
end Behavioral;
