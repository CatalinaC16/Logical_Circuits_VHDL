----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2022 11:32:53
-- Design Name: 
-- Module Name: filtru - comp
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity filtru is
    Port( 
        BTN,CLK: std_logic;
        enable: out std_logic
       );
end filtru;

architecture comp of filtru is
  signal CNT: std_logic_vector(15 downto 0):=(others=>'0');
  signal  en, Q0,Q1,Q2: std_logic :='0';
  begin 
  nr: process (CLK)
      begin 
      if(rising_edge(CLK))then
         CNT<= CNT+1;
         end if;
  end process nr;
  
  en<='1' when CNT=x"FFFF" else '0';
  
 bist0: process(CLK)
     begin 
     if(rising_edge(CLK)) then
     if(en='1') then
      Q0<=BTN;
      end if;
    end if;
    end process bist0;
    
    
  bist1: process(CLK)
    begin 
    if(rising_edge(CLK))then
               Q1<=Q0;
    end if;
    end process bist1;
    
  bist2:
    process(CLK)
    begin 
    if(rising_edge(CLK))then
               Q2<=Q1;
    end if;
    end process bist2;
    enable<=Q1 AND (NOT Q2);
 end comp;
