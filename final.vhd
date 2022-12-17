library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity final is
    Port ( START_STOP : in STD_LOGIC;
           M : in STD_LOGIC;
           S : in STD_LOGIC;
           CLK : in STD_LOGIC;
           MINUTE : out STD_LOGIC_VECTOR (7 downto 0);
           SECUNDE :out STD_LOGIC_VECTOR (7 downto 0);
           LED: out std_logic);
end final;

architecture toate of final is
component  numarator_invers is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           load : in STD_LOGIC;
           m:in STD_LOGIC_VECTOR (7 downto 0);
           s: in std_logic_vector(7 DOWNTO 0);
            minute: out STD_LOGIC_VECTOR (7 downto 0);
           secunde: out std_logic_vector(7 DOWNTO 0);
            ok :out std_logic);
end component;
component numarator_minute is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           min2 : inout STD_LOGIC_VECTOR (7 downto 0);
           sec2: inout std_logic_vector(7 downto 0);
           minute : out STD_LOGIC_VECTOR (7 downto 0);
           secunde: out std_logic_vector(7 downto 0);
           ok :out std_logic);
end component;
signal reset,ok,load,semnal:std_logic:='0';
signal  minut,secunda:  std_logic_vector(7 downto 0):="00000000";
signal minut_inv,secunda_inv: std_logic_vector(7 downto 0):="00000000";
begin
process(M,S)
    begin 
        if(M='1' and S='1') then
        reset<='1';
        else reset<='0';
        end if;
end process;

process(M,S)
    begin 
        if(M='0' and S='1') then
          load<='1'; secunda_inv<=secunda+1; minut_inv<=minut;
        elsif( M='1' and S='0')then
          load<='1'; minut_inv<=minut+1;secunda_inv<=secunda;
        else load<='0';
        end if;
end process;
D1: numarator_minute port map( clk,reset or load,START_STOP ,minut,secunda,minute,secunde,ok);
D2: numarator_invers port map( clk,reset,START_STOP,load,minut_inv,secunda_inv,minut,secunda,led);

--secunda_inv<=secunda;
--minut_inv<=minut;

end toate;
