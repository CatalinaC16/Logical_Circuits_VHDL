----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.04.2022 11:02:30
-- Design Name: 
-- Module Name: sim_semafor - Behavioral
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

entity sim_semafor is
--  Port ( );
end sim_semafor;

architecture S1 of sim_semafor is
component SEMAFOR is port(
  
  CLOCK: in STD_LOGIC;
  RESET: in STD_LOGIC;
  SENZOR1: in STD_LOGIC;
  SENZOR2: in STD_LOGIC;
  ROSU1, ROSU2, GALBEN1, GALBEN2, VERDE1, VERDE2: out STD_LOGIC
);
end component Semafor;

signal CLOCK,RESET,SENZOR1,SENZOR2:STD_LOGIC := '0';
signal ROSU1, ROSU2, GALBEN1, GALBEN2, VERDE1, VERDE2: STD_LOGIC;
begin
 U1: SEMAFOR port map (CLOCK,RESET,SENZOR1,SENZOR2,ROSU1,ROSU2,GALBEN1,GALBEN2,VERDE1,VERDE2);
 generare_clk:
 process
  begin 
    CLOCK<='0';
    wait for 5 ns;
    CLOCK<='1';
    wait for 5 ns;
  end process generare_clk;
 stimuli:
  process 
  begin
  RESET<='0';
  SENZOR1<='0';
  SENZOR2<='0';
  wait for 50 ns;
   
   RESET<='0';
   SENZOR1<='0';
   SENZOR2<='1';
   wait for 50 ns;
   
   RESET<='0';
   SENZOR1<='1';
   SENZOR2<='0';
   wait for 50 ns;
   
   RESET<='0';
   SENZOR1<='1';
   SENZOR2<='1';
   wait for 50 ns;
   
  wait;
  
  end process;
    
    
end S1;
