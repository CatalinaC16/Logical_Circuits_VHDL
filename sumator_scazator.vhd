library	IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Entitate:
entity sumator_scazator is
	port (					  
		        A, B:  in STD_LOGIC_VECTOR (3 downto 0);
			Sel, Cin:  in STD_LOGIC;   
				   S: out STD_LOGIC_VECTOR (3 downto 0);
				Cout: out STD_LOGIC
		  );
		  
end entity;

architecture comportamental of sumator_scazator is
begin
	process ( A, B, Sel, Cin)
	variable X, Y, O, Z: STD_LOGIC_VECTOR (4 downto 0);
	begin
		if (Sel = '0') then 			-- adunare
			Z := "00000";
			Z(0) :=Cin;
			X(4) := '0';
			X(3 downto 0) := A;
			Y(4) := '0';
			y(3 downto 0) := B;
			O := X + Y + Z;
			S <= O(3 downto 0);
			Cout <= O(4);
		elsif(Sel='1')then             --scadere
		Z := "00000";
		Z(0):=Cin;			
			X(4) := '0';
			X(3 downto 0) := A;
			Y(4) := '0';
			Y(3 downto 0) := (not B);
			O := X + Y - Z+"00001";
			S <= O(3 downto 0);
			Cout <= O(4);
		end if;
	end process;
end architecture;
			
			
			