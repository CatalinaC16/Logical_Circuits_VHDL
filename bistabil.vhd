----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.03.2022 10:26:53
-- Design Name: 
-- Module Name: bistabil - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bistabil is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           R : in STD_LOGIC;
           Q : out STD_LOGIC;
           QN : out STD_LOGIC);
end bistabil;

architecture comp of bistabil is
 SIGNAL temp: std_logic;
  
 begin
  process(R,CLK)
 
begin 
if(R = '0')THEN temp<='0';
elsif(CLK = '1' AND CLK'EVENT)THEN temp<=D;
end if;
end process;
Q <= temp;
QN <= not temp;
end comp;
