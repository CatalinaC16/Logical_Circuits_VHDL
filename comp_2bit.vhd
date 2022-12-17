----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.03.2022 17:53:52
-- Design Name: 
-- Module Name: comp_2bit - Behavioral
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

entity comp_2bit is
    Port ( A : in bit_vector(1 downto 0);
           B : in bit_vector(1 downto 0);
           F1 : out  bit;
           F2 : out bit;
           F3 : out bit);
end comp_2bit;

architecture Behavioral of comp_2bit is

component comp_1bit is
    Port ( A : in bit;
           B : in bit;
           F1: out  bit;
           F2 : out  bit;
           F3 : out  bit);
end component;

signal t1,t2,t3,z1,z2,z3: bit;

begin

U1: comp_1bit port map (A(1),B(1),t1,t2,t3);
U2: comp_1bit port map(A(0),B(0),z1,z2,z3);

F1 <= t3 or( t2 and z3);
F2 <= t2 and z2;
F3 <= t1 or ( t2 and z1);

end Behavioral;
