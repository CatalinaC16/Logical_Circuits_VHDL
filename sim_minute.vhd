
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sim_minute is
--  Port ( );
end sim_minute;

architecture Behavioral of sim_minute is
component numarator_minute is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           minute : out STD_LOGIC_VECTOR (7 downto 0);
            secunde : out STD_LOGIC_VECTOR (7 downto 0);
           ok :out std_logic);
end component;
signal clk,rst,en,ok:std_logic;
signal minute,secunde:std_logic_vector(7 downto 0);
begin
K1: numarator_minute port map(clk,rst,en,minute,secunde,ok);

end Behavioral;
