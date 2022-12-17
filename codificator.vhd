
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity codificator is
    Port ( vector : in STD_LOGIC_VECTOR (9 downto 0);
           cod : out STD_LOGIC_VECTOR (3 downto 0));
end codificator;

architecture behavioral of codificator is

begin
process(vector)
begin
  if(vector(0)='1') then cod<="0000";
  elsif (vector(1)='1')then cod<="0001";
   elsif (vector(2)='1')then cod<="0010";
    elsif (vector(3)='1')then cod<="0011";
     elsif (vector(4)='1')then cod<="0100";
      elsif (vector(5)='1')then cod<="0101";
       elsif (vector(6)='1')then cod<="0110";
        elsif (vector(7)='1')then cod<="0111";
         elsif (vector(8)='1')then cod<="1000";
          elsif (vector(9)='1')then cod<="1001";
          else cod<="1111";
     end if;
end process;

end behavioral;
