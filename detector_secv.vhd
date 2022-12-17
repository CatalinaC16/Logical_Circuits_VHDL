library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity detector_secv is
 Port ( val:in std_logic_vector(3 downto 0);
   x,R,clk,load: in std_logic;
   count: out std_logic_vector(3 downto 0);
   detect : out std_logic
);
end detector_secv;

architecture Behavioral of detector_secv is
signal reg: std_logic_vector(3 downto 0);
signal cnt: std_logic_vector(3 downto 0):="0000";
signal d: std_logic:='0';
begin

registru: process(x,clk,R,reg)
begin 

  if(R='1') then reg<="0000";
  elsif(load='1')then reg<=val;
  elsif(rising_edge(clk)) then
    reg(3)<=reg(2);
    reg(2)<=reg(1);
    reg(1)<=reg(0);
    reg(0)<=X;
    end if;
  
end process;


process(reg)
begin 
  if(reg="0110") then d<='1';
  else d<='0';
  end if;
end process;

numarator: process(r,d,clk,cnt)
begin
if(R='1') then cnt<="0000";
elsif( rising_edge(clk)) then 
   if(d='1') then cnt<=cnt+1;
   else cnt<=cnt;
   end if;
   end if;
end process;
 detect<=d;
 count<=cnt;
end Behavioral;
