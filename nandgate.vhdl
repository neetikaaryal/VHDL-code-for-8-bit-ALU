--8 bit NAND circuit
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NAND8 is
    port  (
        -- two 8 bit inputs and an 8 bit output
        -- F = A OR B
         A: in std_logic_vector(7 downto 0);
         B: in std_logic_vector(7 downto 0);
         F: out std_logic_vector(7 downto 0)
    );
end entity NAND8;

architecture NAND8_df of NAND8 is

begin
    NANDing_loop : for i in 0 to 7 generate
    F(i) <= A(i) XOR B(i);

    end generate ; -- NANDing_loop
end architecture NAND8_df;