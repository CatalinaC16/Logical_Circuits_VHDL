library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity dmux_1_4 is
Port (
  selectii: in std_logic_vector(1 downto 0);
  intrare:in std_logic;
  iesiri:out std_logic_vector(3 downto 0)
);
end dmux_1_4;

architecture Behavioral of dmux_1_4 is

begin
process(selectii,intrare)
begin 
iesiri<="0000";
case selectii is
 when "00" => iesiri(0)<=intrare;
 when "01" => iesiri(1)<=intrare;
 when "10" => iesiri(2)<=intrare;
 when "11" => iesiri(3)<=intrare;
 when others => iesiri<="0000";
 end case;
end process;

end Behavioral;
