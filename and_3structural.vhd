library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity and_3structural is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           y : out STD_LOGIC);
end and_3structural;

architecture Behavioral of and_3structural is
component and3 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC);
end component;
signal x:std_logic:='0';

begin
U1: and3 port map(a,b,x);
U2: and3 port map(x,c,y);

end Behavioral;
