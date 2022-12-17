----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.03.2022 11:44:55
-- Design Name: 
-- Module Name: sim_proc - Behavioral
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

entity sim_proc is
end sim_proc;

architecture Behavioral of sim_proc is

component proc is
Port(
x: in std_logic;
R: in std_logic;
EN: in std_logic;
CLK :in std_logic;
count: out std_logic_vector(3 downto 0);
detect : out std_logic);
end component;

signal x:='1'; 

process(R, CLK,x)

end process


end Behavioral;
