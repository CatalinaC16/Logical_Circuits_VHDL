library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity bcdToExcess3 is
  Port ( 
     cod_bcd: in std_logic_vector(3 downto 0);
     exces3:out std_logic_vector(3 downto 0) 
  );
end bcdToExcess3;

architecture Behavioral of bcdToExcess3 is
component add3_tovector is
    Port ( bcd_cod : in STD_LOGIC_VECTOR (3 downto 0);
           exces : out STD_LOGIC_VECTOR (3 downto 0));
end component;
begin
-- structural --
S: add3_tovector port map(cod_bcd,exces3);
--- comp ---
--process(cod_bcd)
--begin 
--exces3<=cod_bcd +"0011";
--end process;


-- flux de date --
--exces3<=cod_bcd+"0011";

end Behavioral;
