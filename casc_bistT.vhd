library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity casc_bistT is
 Port ( T,R,S,Clk: in std_logic;
  Q,Qn:inout std_logic_vector(7 downto 0)
  );
end casc_bistT;

architecture Behavioral of casc_bistT is
component bist_T is
  Port (T,R,S,Clk: in std_logic;
        Q, Qn :out std_logic
   );
end component;
begin
B0: bist_T port map (T,R,S,Clk,Q(0),Qn(0));
B1: bist_T port map (Q(0),R,S,Clk,Q(1),Qn(1));
B2: bist_T port map (Q(1),R,S,Clk,Q(2),Qn(2));
B3: bist_T port map (Q(2),R,S,Clk,Q(3),Qn(3));
B4: bist_T port map (Q(3),R,S,Clk,Q(4),Qn(4));
B5: bist_T port map (Q(4),R,S,Clk,Q(5),Qn(5));
B6: bist_T port map (Q(5),R,S,Clk,Q(6),Qn(6));
B7: bist_T port map (Q(6),R,S,Clk,Q(7),Qn(7));
end Behavioral;
