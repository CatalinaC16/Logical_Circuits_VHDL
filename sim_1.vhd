----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.03.2022 10:26:47
-- Design Name: 
-- Module Name: sim_1 - Behavioral
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

component PrimulEx is
    Port ( A : in  NATURAL := 1;
           B : inout  NATURAL := 1);
end component;

signal A:  natural;
signal B: natural;

begin
U1: PrimulEx port map(A, B);
Stimuli:
process
begin 
A<='0';
B<='0';
wait for 10 ns;
end process stimuli;

end Behavioral;
