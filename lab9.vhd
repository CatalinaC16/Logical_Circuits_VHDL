----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2022 10:35:21
-- Design Name: 
-- Module Name: lab9 - Behavioral
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

entity lab9 is
generic(n:natural:=8);
    Port ( EN : in STD_LOGIC;
           RESET : in STD_LOGIC;
          CLK : in STD_LOGIC;
           LED: out std_logic_vector(n-1 downto 0));    
end lab9;


architecture Behavioral of lab9 is
signal temp: std_logic_vector (n-1 downto 0);
component filtru is
    Port( 
        BTN,CLK: std_logic;
        enable: out std_logic
       );
end component;
signal t:std_logic;
begin
et1: filtru port map(en,clk,t);
 
 nr: process (RESET,CLK)
begin 
    if(RESET='1')then 
      temp<=(others=>'0');
    elsif (rising_edge(CLK))then
       if(t='1')then
       temp<= temp+1;
     end if;
     end if;
     end process;
     Led<=temp;
   

end Behavioral;
