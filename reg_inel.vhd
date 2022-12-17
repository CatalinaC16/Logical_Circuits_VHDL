library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_inel is
 Port ( Val: in std_logic_vector(3 downto 0);
         Q: out std_logic_vector(3 downto 0);
         SL,SR,clk,load: in std_logic
 );
end reg_inel;

architecture Behavioral of reg_inel is

begin
process(clk,val,sl,sr)
variable temp: std_logic_vector(3 downto 0);
variable aux: std_logic;
begin
if(rising_edge(clk)) then
   if(load='1') then temp:=val;
   elsif(Sl='1') then
    aux:=temp(3);
   temp(3):=temp(2);
   temp(2):=temp(1);
   temp(1):=temp(0);
   temp(0):=aux;

   elsif(Sr='1') then
    aux:=temp(0);
    temp(0):=temp(1);
    temp(1):=temp(2);
    temp(2):=temp(3);
    temp(3):=aux;

    end if;    
 end if;
   Q<=temp;
end process;
  
end Behavioral;
