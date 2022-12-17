LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY clock IS
    port(clk,start,M,S:in std_logic;
    min,sec:out std_logic_vector(7 downto 0));
end clock;
architecture behavioural of clock is
  
  
begin
process(clk,start,M,S)
    variable st,mt:std_logic;
    variable tempmin,tempsec:std_logic_vector(7  downto 0):=x"00";
    variable rst: std_logic;
   
    begin
     rst:=(M AND S);
     st:=S;
     mt:=M;
 
if(start='1'and st='1' and mt='0')then
tempsec:=tempsec+1;
    if(rising_edge(clk))then
    if(tempsec>0) then
    tempsec:=tempsec-1;
    elsif(tempsec=0 and tempmin>0)then
    tempsec:=x"3B";
    if(tempmin>0)then
    tempmin:=tempmin-1;
   elsif(tempmin=0)then
    mt:='1';
    end if;
    end if;
    end if;
elsif(start='1'and st='0' and mt='1')then
tempmin:=tempmin+1;
    if(rising_edge(clk))then
    if(tempsec>0) then
    tempsec:=tempsec-1;
    elsif(tempsec=0 and tempmin>0)then
    tempsec:=x"3B";
    if(tempmin>0)then
    tempmin:=tempmin-1;
   elsif(tempmin=0)then
    st:='1';
    end if;
    end if;
    end if;
elsif(rst='1')then
tempmin:=x"00";
tempsec:=x"00";   
elsif(start='1'and st='0'and mt='0')then
    if(rising_edge(clk))then
    tempsec:=tempsec+1;
    if(tempsec=60)then
    tempsec:=x"00";
    tempmin:=tempmin+1;
    if(tempmin=100)then
    tempmin:=x"00";
    end if;
    end if;
    end if;

elsif(start='0' and st='0'and mt='0')then
min<=tempmin;
sec<=tempsec;
    end if;
    
min<=tempmin;
sec<=tempsec;
end process;
end behavioural;