library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity num_zecimal is
 Port ( Load,Reset,C_up,C_down,clk: in std_logic;
        carry,borrow: out std_logic;
        val:in  std_logic_vector(3 downto 0);
         Q: out std_logic_vector(3 downto 0)
 );
end num_zecimal;

architecture Behavioral of num_zecimal is
signal temp: std_logic_vector(3 downto 0):="0000";
begin
process(load,reset,c_up,C_down,clk)
begin 
if(Reset='1')then temp<="0000";
elsif(load='1')then temp<=val;
elsif(rising_edge(clk)) then 
   if(C_up='1')then 
     if(temp="1001")then temp<="0000";
     else temp<=temp+1;
     end if;
   elsif(C_down='1')then 
    if(temp<="0000")then temp<="1001";
    else temp<=temp-1;
    end if;
  end if;
end if;
end process;
Q<=temp;

process(temp)
begin 
  if(temp="1001" and c_up='1') then 
   carry<='1'; borrow<='0';
  elsif( temp="0000" and C_down='1')then 
    carry<='0'; borrow<='1';
  end if;
end process;
end Behavioral;
