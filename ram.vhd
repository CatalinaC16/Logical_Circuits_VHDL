library	IEEE;
use ieee.std_logic_1164.all;
--memorie RAM
entity memRam is
	port (CS_RAM: IN std_logic;
	WE_RAM: IN std_logic;
	A_RAM: IN  std_logic_vector (3 DOWNTO 0);
	D_RAM: IN  std_logic_vector (3 DOWNTO 0);
	Y_RAM: OUT std_logic_vector (3 DOWNTO 0));
end memRam;	

ARchitecture ARH_MEMRAM OF MEMRAM IS  
TYPE MEMORIE IS ARRAY (0 TO 7) OF std_logic_vector( 3 DOWNTO 0);
SIGnal  M: MEMORIE :=(X"0",X"1",X"2",X"3",X"4",X"5",X"6",X"7");

BEGIN 
	PROCESS (A_RaM,CS_RAM,WE_RAM, D_RAM)
	begin
	IF CS_RAM='0' THEN Y_RAM <=X"F";
	ELSE 
		IF	WE_RAM ='1' THEN 
			CASE A_RaM IS
		   		WHEN X"0" =>	M(0) <= D_RAM ;
				WHEN X"1" =>	M(0) <= D_RAM ;
				WHEN X"2" =>	M(0) <= D_RAM ;
				WHEN X"3" =>	M(0) <= D_RAM ;
				WHEN X"4" =>	M(0) <= D_RAM ;
				WHEN X"5" => 	M(0) <= D_RAM ;
				WHEN X"6" => 	M(0) <= D_RAM;	
				WHEN X"7" => 	M(0) <= D_RAM ;  
				WHEN OTHERS => 	M(0) <=X"F";
			END CASE;
			
		ELSE
	   		CASE A_RaM IS
		   		WHEN X"0" =>  y_RAM <=M(0) ;
				WHEN X"1" =>  y_RAM <=M(1) ;
				WHEN X"2" =>  y_RAM <=M(2) ;
				WHEN X"3" =>  y_RAM <=M(3) ;
				WHEN X"4" =>  y_RAM <=M(4) ;
				WHEN X"5" =>  y_RAM <=M(5) ;
				WHEN X"6" =>  y_RAM <=M(6) ;	
				WHEN X"7" =>  y_RAM <=M(7) ;  
				WHEN OTHERS => y_RAM <=X"F";
			END CASE;
		END IF;
		END IF;	
		end process;
		
	

END ARH_MEMRAM;