library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_scazator_sumator is
--  Port ( );
end sim_scazator_sumator;

architecture Behavioral of sim_scazator_sumator is
component sumator_scazator is
	port (					  
		        A, B:  in STD_LOGIC_VECTOR (3 downto 0);
			Sel, Cin:  in STD_LOGIC;   
				   S: out STD_LOGIC_VECTOR (3 downto 0);
				Cout: out STD_LOGIC
		  );
		  
end component;

signal A,B,S: std_logic_vector(3 downto 0):="0000";
signal Cin,Sel,Cout:std_logic:='0';

begin
K2: sumator_scazator port map (A,B,Sel,Cin,S,Cout);
process
begin 
wait for 50 ns;
A<="1010";
B<="0110";
Cin<='1';
sel<='1';
wait for 100 ns;
A<="1010";
B<="1110";
Cin<='1';
sel<='1';
wait for 100 ns;
A<="0011";
B<="1010";
Cin<='1';
Sel<='0';
wait for 100 ns;
A<="0111";
B<="1010";
Cin<='0';
Sel<='1';
wait for 100 ns;
end process;

end Behavioral;
