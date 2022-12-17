
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SEMAFOR is port(
  
  CLOCK: in STD_LOGIC;
  RESET: in STD_LOGIC;
  SENZOR1: in STD_LOGIC;
  SENZOR2: in STD_LOGIC;
  ROSU1, ROSU2, GALBEN1, GALBEN2, VERDE1, VERDE2: out STD_LOGIC
);
end SEMAFOR;

architecture Behavioral of SEMAFOR is

   type STARE_T is (ST0, ST1, ST2, ST3, ST4, ST5, ST6, ST7);
   signal STARE, NXSTARE: STARE_T;
   
 begin
ACTUALIZEAZA_STARE:
   process (RESET, CLOCK)
       begin
         if (RESET = '1') then
                STARE <= ST0;
         elsif CLOCK'EVENT and CLOCK ='1' then
                STARE <= NXSTARE;
         end if;
end process ACTUALIZEAZA_STARE;

TRANSITIONS: 
    process (STARE, SENZOR1, SENZOR2)
      begin
-- ini?ializ?ri
   ROSU1 <= '0'; GALBEN1 <= '0'; VERDE1 <= '0';
   ROSU2 <= '0'; GALBEN2 <= '0'; VERDE2 <= '0';
   
  case STARE is
     when ST0 => VERDE1 <= '1'; ROSU2 <= '1';
            if SENZOR2 = SENZOR1 then NXSTARE <= ST1;
            elsif (SENZOR1 = '0' and SENZOR2 = '1') then
                 NXSTARE <= ST2;
            else NXSTARE <= ST0;
            end if;
            
      when ST1 => VERDE1 <= '1'; ROSU2 <= '1';
            NXSTARE<=ST2;
            
      when ST2 => VERDE1 <= '1'; ROSU2 <= '1';
            NXSTARE <= ST3;
            
      when ST3 => GALBEN1 <= '1'; ROSU2 <= '1';
            NXSTARE <= ST4;
            
      when ST4 => ROSU1 <= '1'; VERDE2 <= '1';
            if (SENZOR1 = '0' and SENZOR2 = '0') then
                       NXSTARE <= ST5;
            elsif (SENZOR1 = '1' and SENZOR2 = '0') then
                       NXSTARE <= ST6;
            else NXSTARE <= ST4;
            end if;
            
     when ST5 => ROSU1 <= '1'; VERDE2 <= '1';
           NXSTARE <= ST6;
           
     when ST6 => ROSU1 <= '1'; VERDE2 <= '1';
            NXSTARE <= ST7;

     when ST7 => ROSU1 <= '1'; GALBEN2 <= '1';
             NXSTARE <= ST0;
  end case;
end process TRANSITIONS;
end architecture Behavioral;