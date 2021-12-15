library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 8 bit AND circuit

entity AND8 is
    port  (
        -- two 8 bit inputs and an 8 bit output
        -- F = A AND B
         A: in std_logic_vector(7 downto 0);
         B: in std_logic_vector(7 downto 0);
         F: out std_logic_vector(7 downto 0)
    );
end entity AND8;

architecture AND8_df of AND8 is

begin
    anding_loop : for i in 0 to 7 generate
    F(i) <= A(i) AND B(i);

    end generate ; -- anding_loop
end architecture AND8_df;
