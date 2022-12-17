library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity proc is
Port(
x: in std_logic;
R: in std_logic;
EN: in std_logic;
CLK :in std_logic;
count: out std_logic_vector(3 downto 0);
detect : out std_logic);
end proc;

architecture arh_proc of proc is

signal reg, cnt: std_logic_vector(3 downto 0);
signal d:std_logic; 

begin

registru : 
process(x,CLK,R)
   begin 
   
   if(R = '1') then reg<="0000";
     elsif (rising_edge(CLK))then
     reg<= x & reg(3 downto 1);
   end if;
   
    if(reg = "0110")then d<='1';
       else d<='0';  
    end if;
end process; 

numarator: 
process(R,d,CLK)
begin 
  if( R= '1') then cnt <="0000";
    elsif (CLK='1' and CLK'event)
    then if(d='1') then cnt<=cnt+1;
         end if;
       end if;
 end process;
 detect<=d;
 count<=cnt;
 
end arh_proc;
