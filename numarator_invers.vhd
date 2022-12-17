
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity numarator_invers is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           load : in STD_LOGIC;
           m:in STD_LOGIC_VECTOR (7 downto 0);
           s: in std_logic_vector(7 DOWNTO 0);
            minute: out STD_LOGIC_VECTOR (7 downto 0);
           secunde: out std_logic_vector(7 DOWNTO 0);
            ok :out std_logic);
end numarator_invers;

architecture Behavioral of numarator_invers is
component sec_desc  is
    Port ( clk : in STD_LOGIC;
           load:in std_logic;
           en : in STD_LOGIC;
           rst: in STD_LOGIC;
           se: in STD_LOGIC_VECTOR (7 downto 0);
           so: out STD_LOGIC_VECTOR (7 downto 0);
           term : out STD_LOGIC);
end component;
component min_desc is
    Port ( clk : in STD_LOGIC;
           load:in std_logic;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           qe : in STD_LOGIC_VECTOR (7 downto 0);
           qo : out STD_LOGIC_VECTOR (7 downto 0);
           term : out STD_LOGIC);
end component ;

signal carry1: std_logic;
signal term1:std_logic;


begin
--
C1: sec_desc port map(clk,load,en and not(rst) and not(term1),rst,s,secunde,carry1);
Final: min_desc port map(carry1 or rst,load,en,rst,m,minute,term1);


end Behavioral;
