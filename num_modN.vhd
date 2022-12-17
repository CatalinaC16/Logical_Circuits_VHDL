library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity num_modN is
generic(n: integer:=5);
 Port (clk,reset,load: in std_logic;
       val :in std_logic_vector(3 downto 0);
       Q: out std_logic_vector(3 downto 0);
       carry: out std_logic
   );
end num_modN;

architecture Behavioral of num_modN is
signal temp,inter: std_logic_vector(3 downto 0):="0000";
begin
process(clk)
begin
 case n is 
   when 0 => inter<="0000";
   when 1 => inter<="0001";
   when 2 => inter<="0010";
   when 3 => inter<="0011";
   when 4 => inter<="0100";
   when 5 => inter<="0101";
   when 6 => inter<="0110";
   when 7 => inter<="0111";
   when 8 => inter<="1000";
   when 9 => inter<="1001";
   when 10 => inter<="1010";
   when 11 => inter<="1011";
   when 12 => inter<="1100";
   when 13 => inter<="1101";   
   when 14 => inter<="1110";
   when 15 => inter<="1111";
   when others => inter<="0000";
 end case;
end process;

process(clk,reset,load,val)
 begin 
 if(reset='1')then temp<="0000";
 elsif(load='1')then temp<=val;
 elsif(rising_edge(clk)) then 
   if(temp=inter) then temp<="0000";carry<='1';
   else temp<=temp+1;
   end if;
   end if;
  end process;
  Q<=temp;
end Behavioral;
