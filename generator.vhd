library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity generator is
 Port (data:in std_logic_vector(3 downto 0);
       vec: out std_logic_vector(3 downto 0);
       sel: in  std_logic_vector(1 downto 0);
       Sl,Sr,clk,Load:in std_logic
  );
end generator;

architecture Behavioral of generator is
signal temp: std_logic_vector(3 downto 0);
begin
process(clk,data,sl,sr,load)
begin 
if(load='1')then temp<=data;
elsif(rising_edge(clk)) then
  case sel is 
  when "00" => temp<=data;
  when "01" => 
  temp(3 downto 1)<=temp(2 downto 0);
  temp(0)<=sl;
  when "10" =>
    temp(2 downto 0)<= temp(3 downto 1);
    temp(3)<=sr;
   when "11"=> temp<=temp;
   when others => temp<="1111";
 end case;
end if;
 end process; 
vec<=temp;
end Behavioral;
