library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Y : out STD_LOGIC);
end or_3;

architecture Behavioral of or_3 is

begin

Y <= A OR B OR C;

end Behavioral;
