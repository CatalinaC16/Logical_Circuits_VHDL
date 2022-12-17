library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;
entity dmux_1_n is
generic(nr_selectii: integer:=3);
 Port (
 
 intrare:in std_logic;
 selectii:in std_logic_vector(nr_selectii-1 downto 0);
 iesiri :out std_logic_vector(2** nr_selectii-1 downto 0)
 
  );
end dmux_1_n;

architecture Behavioral of dmux_1_n is


begin
process(intrare,selectii)

begin
--iesiri<=(iesiri'range=>'0');
iesiri<="00000000";
iesiri(CONV_INTEGER(selectii))<=intrare;

end process;
end Behavioral;
