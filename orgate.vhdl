-- 8 Bit OR Circuit
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR8 is
    port  (
        -- two 8 bit inputs and an 8 bit output
        -- F = A OR B
         A: in std_logic_vector(7 downto 0);
         B: in std_logic_vector(7 downto 0);
         F: out std_logic_vector(7 downto 0)
    );
end entity OR8;

architecture OR8_df of OR8 is

begin
    ORing_loop : for i in 0 to 7 generate
    F(i) <= A(i) OR B(i);

    end generate ; -- ORing_loop
end architecture OR8_df;
