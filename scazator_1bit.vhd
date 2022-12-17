library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity scazator_1bit is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           bin : in STD_LOGIC;
           d : out STD_LOGIC;
           bout : out STD_LOGIC);
end scazator_1bit;

architecture Behavioral of scazator_1bit is

begin
d<= a xor b xor bin;
bout<= ((not a) and bin) or((not a) and b) or (b and bin);

end Behavioral;
