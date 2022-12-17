----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.03.2022 21:18:58
-- Design Name: 
-- Module Name: sum_2bit - Behavioral
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

entity sum_2bit is
    Port ( A : in bit_vector(1 downto 0);
           B : in bit_vector(1 downto 0);
           Cin : in bit;
           S0 : out bit;
           S1 : out bit;
           Cout : out bit);
end sum_2bit;

architecture Behavioral of sum_2bit is

component sum_1bit is
    Port ( A : in bit;
           B : in bit;
           Cin : in bit;
           Cout : out bit;
           S : out bit);
end component;

signal t1 : bit;

begin

U1:  sum_1bit port map ( A(1),B(1),Cin,t1,S1);
U2:  sum_1bit port map ( A(0),B(0),t1,Cout,S0);

end Behavioral;
