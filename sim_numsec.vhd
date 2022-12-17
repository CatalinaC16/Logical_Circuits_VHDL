----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2022 15:48:59
-- Design Name: 
-- Module Name: sim_numsec - Behavioral
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

entity sim_numsec is
--  Port ( );
end sim_numsec;

architecture Behavioral of sim_numsec is
component numarator_secunde is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           secunde : out STD_LOGIC_VECTOR (3 downto 0);
           ok : out STD_LOGIC);
end component;
signal clk,rst,en,ok: std_logic;
signal secunde :std_logic_vector(3 downto 0);
begin
N1: numarator_secunde port map( clk=>clk,rst=>rst,en=>en,secunde=>secunde,ok=>ok);

clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;


en<='1';
rst<='0';
 
end Behavioral;
