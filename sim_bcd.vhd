----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2022 13:05:56
-- Design Name: 
-- Module Name: sim_bcd - Behavioral
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

entity sim_bcd is
--  Port ( );
end sim_bcd;

architecture Behavioral of sim_bcd is
component bcdToExcess3 is
  Port ( 
     cod_bcd: in std_logic_vector(3 downto 0);
     exces3:out std_logic_vector(3 downto 0) 
  );
end component;
signal bcd,ex: std_logic_vector(3 downto 0);
begin
S1: bcdToExcess3 port map(bcd,ex);

process
begin
bcd<="0101";
wait for 50 ns;
bcd<="0011";
wait for 50 ns;
bcd<="1001";
wait for 50 ns;
end process;

end Behavioral;
