
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity numarator_minute is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           min2 : inout STD_LOGIC_VECTOR (7 downto 0);
           sec2: inout std_logic_vector(7 downto 0);
           minute : out STD_LOGIC_VECTOR (7 downto 0);
           secunde: out std_logic_vector(7 downto 0);
           ok :out std_logic);
end numarator_minute;

architecture Behavioral of numarator_minute is
component ultima_secunda is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           rst: in STD_LOGIC;
           secunde: out STD_LOGIC_VECTOR (7 downto 0);
           term : out STD_LOGIC);
end component;
component ultimul_minut is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0);
           term : out STD_LOGIC);
end component;
signal sec:std_logic_vector(7 downto 0):= "00000000";
signal min: std_logic_vector(7 downto 0):= "00000000";
signal carry1,term: std_logic;
signal term1:std_logic:='0';
begin

C1: ultima_secunda port map(clk,en,rst,sec,carry1);
Final: ultimul_minut port map(carry1 or rst,en,rst,min,term1);
secunde<=sec;
minute<=min;
min2<=min;
sec2<=sec;
ok<=term1;

end Behavioral;
