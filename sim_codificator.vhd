----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2022 18:27:03
-- Design Name: 
-- Module Name: sim_codificator - Behavioral
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

entity sim_codificator is
--  Port ( );
end sim_codificator;

architecture Behavioral of sim_codificator is
component codificator is
    Port ( vector : in STD_LOGIC_VECTOR (9 downto 0);
           cod : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal vector: std_logic_vector(9 downto 0);
signal cod: std_logic_vector(3 downto 0);

begin
U1: codificator port map (vector,cod);
process
begin 
vector<="0000000010";
wait for 500 ns;
vector<="0000000111";
wait for 500 ns;
end process;

end Behavioral;
