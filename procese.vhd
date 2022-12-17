-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:13:36 03/31/2022 
-- Design Name: 
-- Module Name:    PrimulEx - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PrimulEx is
    Port ( A : in  NATURAL := 1;
           B : inout  NATURAL := 1);
end PrimulEx;

architecture Behavioral of PrimulEx is

begin
P1: process(A)
	begin
	B <= A + 2;
	B <= B + 3;
	B <= B * 2;
	B <= B + 1; -- Numai aceast? ultim? asignare are loc
end process P1;

end Behavioral;
