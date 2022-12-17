library IEEE;
use IEEE.STD_LOGIC_1164.ALL;	  

entity sumator_4biti is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           cout : out STD_LOGIC;
           cin: in std_logic;
           suma : out STD_LOGIC_VECTOR (3 downto 0));
end sumator_4biti;

architecture Behavioral of sumator_4biti is
component sumator_1bit is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin:in std_logic;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;
signal cout0,cout1,cout2:std_logic:='0';
begin
S0: sumator_1bit port map(A(0),B(0),cin,suma(0),cout0);
S1: sumator_1bit port map(A(1),B(1),cout0,suma(1),cout1);
S2: sumator_1bit port map(A(2),B(2),cout1,suma(2),cout2);
S3: sumator_1bit port map(A(3),B(3),cout2,suma(3),cout);
end Behavioral;
