library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumator_1bit is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin:in std_logic;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end sumator_1bit;

architecture Behavioral of sumator_1bit is
begin

s<=a xor b xor cin;
cout<=(a and b) or (a and cin) or (b and cin);

end Behavioral;
