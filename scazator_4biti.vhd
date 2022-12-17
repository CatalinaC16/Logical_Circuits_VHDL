library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity scazator_4biti is
Port (A: in std_logic_vector(3 downto 0);
      B: in  std_logic_vector(3 downto 0);
      Bin: in  std_logic;
      D: out std_logic_vector(3 downto 0);
      Bout: out std_logic 
  );
end scazator_4biti;

architecture Behavioral of scazator_4biti is
component scazator_1bit is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           bin : in STD_LOGIC;
           d : out STD_LOGIC;
           bout : out STD_LOGIC);
end component;
signal bout1,bout2,bout3:std_logic:='0';
begin
D1: scazator_1bit port map(A(0),B(0),Bin,D(0),bout1);
D2: scazator_1bit port map(A(1),B(1),bout1,D(1),bout2);
D3: scazator_1bit port map(A(2),B(2),bout2,D(2),bout3);
D4: scazator_1bit port map(A(3),B(3),bout3,D(3),bout);

end Behavioral;
