----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.03.2022 13:03:18
-- Design Name: 
-- Module Name: comp_1bit - Behavioral
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

entity comp_1bit is
    Port ( A : in bit;
           B : in bit;
           F1: out bit;
           F2 : out bit;
           F3 : out bit);
end comp_1bit;

architecture Behavioral of comp_1bit is

begin

 F1<=(not A) and B;
 F2<= A xnor B;
 F3<=A and (not B);
 
 end Behavioral;
