library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity gen is
  Port ( data:in std_logic_vector(3 downto 0);
         clk,load: in std_logic;
         sel: in std_logic_vector(1 downto 0);
         vect: inout std_logic_vector(3 downto 0)
   );
end gen;

architecture Behavioral of gen is
component poarta_xor is
 Port ( a,b:in std_logic;
        y: out std_logic
 );
 end component;
component generator is
 Port (data:in std_logic_vector(3 downto 0);
       vec: out std_logic_vector(3 downto 0);
       sel: in std_logic_vector(1 downto 0);
       Sl,Sr,clk,Load:in std_logic
  );
end component;

signal v: std_logic:='0';
begin
C1: generator port map(data,vect,sel,v,v,clk,load);
X2: poarta_xor port map (vect(3),vect(0),v);

end Behavioral;
