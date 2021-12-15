--8 bit XOR circuit
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR8 is
    port  (
        -- two 8 bit inputs and an 8 bit output
        -- F = A OR B
         A: in std_logic_vector(7 downto 0);
         B: in std_logic_vector(7 downto 0);
         F: out std_logic_vector(7 downto 0)
    );
end entity XOR8;

architecture XOR8_df of XOR8 is

begin
    XORing_loop : for i in 0 to 7 generate
    F(i) <= A(i) XOR B(i);

    end generate ; -- XORing_loop
end architecture XOR8_df;