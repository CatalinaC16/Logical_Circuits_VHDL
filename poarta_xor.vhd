library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity poarta_xor is
 Port ( a,b:in std_logic;
        y: out std_logic
 );
end poarta_xor;

architecture Behavioral of poarta_xor is

begin

y<=a xor b;
end Behavioral;
