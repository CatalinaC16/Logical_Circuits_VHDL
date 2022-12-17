library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity comp_sec is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           secunde : out STD_LOGIC_VECTOR (7 downto 0);
           carry : out STD_LOGIC);
end comp_sec;

architecture Behavioral of comp_sec is
component numarator_secunde is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           secunde : out STD_LOGIC_VECTOR (3 downto 0);
           ok : out STD_LOGIC);
end component;
signal ok1,ok2,ok,R1:std_logic;
signal Sec: std_logic_vector(7 downto 0);

begin
S1: numarator_secunde port map(clk,rst,en,sec(3 downto 0),ok1);
S2: numarator_secunde port map(clk,r1,ok1,sec(7 downto 4),ok2);

ok<=sec(0) AND sec(1) and (NOT(sec(2))) and sec(3) and sec(4) and sec(5);
r1<=ok or rst;
secunde<=sec;
carry<=ok;
end Behavioral;
