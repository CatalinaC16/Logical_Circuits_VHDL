----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2022 16:27:30
-- Design Name: 
-- Module Name: mux4_1 - Behavioral
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

entity mux4_1 is
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           S : in std_logic_vector(1 downto 0);
           Y : out STD_LOGIC);
end mux4_1;

architecture Arh_mux of mux4_1 is

begin
if (S(1)='0' and S(0)='0')
         then Y<= A0;
elsif (S(1)='0' and S(0)='1')
         then Y<= A1;
elsif (S(1)='1' and S(0)='0')
         then Y<= A2;       
elsif (S(1)='1' and S(0)='1')
         then Y<= A3;

end Arh_mux;
