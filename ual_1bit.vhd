library IEEE;
--UAL
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity ual_1bit is
 Port ( sel: in std_logic_vector(2 downto 0);
        A,B: in std_logic;
        cin:in std_logic;
        rez:out std_logic;
        temp: out integer;
        cout: out std_logic
  );
end ual_1bit;

architecture Behavioral of ual_1bit is	 

signal Aa,Bb: integer;	 

begin
process(sel,A,B,Cin)
begin 

if(sel="000")then 
  rez<= A xor B xor Cin;
  cout<= (B and Cin ) or (A and B) or (A and Cin);
  temp<=0;
elsif(sel="001")then 
  rez<= A xor B xor Cin;
  cout<= (B and Cin ) or((not A) and B) or ((not A )and Cin);
  temp<=0;
elsif(sel="010")then 
  Aa<= conv_integer(A);
  Bb<= conv_integer(B);
      temp<= Aa * Bb;
      rez<='0';
      cout<='0';
elsif(sel="011")then 
   Aa<= conv_integer(A);
   Bb<= conv_integer(B);
      temp<= Aa / Bb;
      rez<='0';
      cout<='0';
elsif(sel="100")then 
   rez<= A and B;
     cout<='0';
       temp<=0;
elsif(sel="101")then 
   rez<= (not A);
     cout<='0';
       temp<=0;
elsif(sel="110")then 
    rez<= A or B;
      cout<='0';
        temp<=0;
elsif(sel="111")then
   rez<= A xor B;
     cout<='0';
       temp<=0;
end if;
end process;

end Behavioral;
