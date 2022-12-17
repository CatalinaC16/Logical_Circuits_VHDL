library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity casc_bistD is
 Port (D: in std_logic;
       Q: inout std_logic_vector(7 downto 0);
       S,R,Clk: in std_logic
  );
end casc_bistD;

architecture Behavioral of casc_bistD is
component bist_D is
  Port ( D,S,R,CLK:in std_logic;
         Q:out std_logic
   );
end component;
begin
B0: bist_D port map (D,S,R,Clk,Q(0));
B1: bist_D port map (Q(0),S,R,Clk,Q(1));
B2: bist_D port map (Q(1),S,R,Clk,Q(2));
B3: bist_D port map (Q(2),S,R,Clk,Q(3));
B4: bist_D port map (Q(3),S,R,Clk,Q(4));
B5: bist_D port map (Q(4),S,R,Clk,Q(5));
B6: bist_D port map (Q(5),S,R,Clk,Q(6));
B7: bist_D port map (Q(6),S,R,Clk,Q(7));

end Behavioral;
