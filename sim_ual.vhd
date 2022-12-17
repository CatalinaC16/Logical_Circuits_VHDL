library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_ual is
--  Port ( );
end sim_ual;

architecture Behavioral of sim_ual is
component ual_1bit is
 Port ( sel: in std_logic_vector(2 downto 0);
        A,B: in std_logic;
        cin:in std_logic;
        rez:out std_logic;
        temp: out integer;
        cout: out std_logic
  );
end component;
signal sel:  std_logic_vector(2 downto 0);
signal A,B:  std_logic;
signal cin: std_logic;
signal rez: std_logic;
signal temp:  integer;
signal cout: std_logic;
begin
s1: ual_1bit port map(sel,a,b,cin,rez,temp,cout);
process
begin 
A<='1';
B<='0';
Cin<='0';
Sel<="100";
wait for 100 ns;
Sel<="001";
wait for 100 ns;
Sel<="011";
wait for 100 ns;
end process;
end Behavioral;
