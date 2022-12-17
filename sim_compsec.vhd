----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2022 16:22:49
-- Design Name: 
-- Module Name: sim_compsec - Behavioral
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

entity sim_compsec is
--  Port ( );
end sim_compsec;

architecture Behavioral of sim_compsec is
component comp_sec is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           secunde : out STD_LOGIC_VECTOR (7 downto 0);
           carry : out STD_LOGIC);
end component;
signal clk,rst,en,carry:std_logic;
signal secunde:std_logic_vector(7 downto 0);
begin
U1: comp_sec port map(clk=>clk,rst=>'0',en=>'1',secunde=>secunde,carry=>carry);

end Behavioral;
