----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.03.2022 10:43:19
-- Design Name: 
-- Module Name: sim_bistabil - Behavioral
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

entity sim_bistabil is
end sim_bistabil;

architecture Behavioral of sim_bistabil is

component bistabil is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           R : in STD_LOGIC;
           Q : out STD_LOGIC;
           QN : out STD_LOGIC);
end component;

signal R,D,CLK: std_logic := '0';

signal Q,QN: std_logic;

constant clk_period: TIME:= 10 ns;

begin
U1: bistabil port map(D,CLK,R,Q,QN);

generare_clk: process
   begin
     CLK<='0';
  wait for clk_period/2;
      CLK<='1';
  wait for clk_period/2;
 end process;
 
stimuli:
  process 
begin
wait for 100 ns;
R<='0';
D<='1';
wait for clk_period;
R<='1';
D<='1';
wait for clk_period;

D<='0';
wait for clk_period;
D<='1';
wait for 20 ns;
R<='0';
wait for 10 ns;
wait;
end process;
end Behavioral;
