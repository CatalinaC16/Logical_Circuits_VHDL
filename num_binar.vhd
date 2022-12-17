library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;
--numarator sincron reversibil cu load,reset,carry si borrow
entity num_binar is
 Port ( load,reset,c_up,c_down,hold,clk: in std_logic;
        val: in std_logic_vector(3 downto 0);
       Q: out std_logic_vector(3 downto 0);
        carry,borrow: out std_logic
  );
end num_binar;

architecture Behavioral of num_binar is
signal temp:std_logic_vector(3 downto 0):="0000";
begin
process(load,reset,c_up,c_down,clk,val)

begin 
      if(reset='1')then temp<="0000";
      elsif(load='1')then temp<=val;
      elsif(hold='1') then temp<=temp;
      elsif(rising_edge(clk)) then 
         if(c_up='1')then 
              if(temp="1111")then temp<="0000";
              else temp<=temp+1;
              end if;
          elsif(c_down='1') then 
               if(temp="0000")then temp<="1111";
              else temp<=temp-1;
              end if;
     end if;
     end if;             
 end process;
  Q<=temp;
 
 process(temp)
     begin 
         if(c_up='1' and temp="1111") then 
             carry<='1'; borrow<='0';
         elsif(c_down='1' and temp="0000")then 
            borrow<='1';carry<='0';
         end if;
 end process;
end Behavioral;
