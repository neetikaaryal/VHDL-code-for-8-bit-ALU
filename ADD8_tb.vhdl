library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADD8_tb is

end entity ADD8_tb;

architecture ADD8_tb_df of ADD8_tb is
component ADD8 is
    port (
         A: in std_logic_vector(7 downto 0);
         B: in std_logic_vector(7 downto 0);
         cin: in std_logic;
         sum8: out std_logic_vector(7 downto 0);
         f_cry: out std_logic
    );
end component ADD8;

signal A,B,sum8 : std_logic_vector(7 downto 0);
signal f_cry,cin : std_logic;

begin
    adder8 : ADD8 port map (
        A => A, B=>B, sum8 => sum8 , f_cry => f_cry , cin => cin
    );

process begin

    A <= "XXXXXXXX";
    B <= "XXXXXXXX";
    cin <= '0';
    wait for 1 ns;

    A <= "00100011";
    B <= "01010101";
    cin <= '0';
    wait for 1 ns;

    A <= "00101011";
    B <= "00010101";
    wait for 1 ns;

    A <= "01101011";
    B <= "00110101";
    wait for 1 ns;

    A <= "10110111";
    B <= "01010101";
    cin <= '1';
    wait for 1 ns;

    A <= "00100011";
    B <= "01010101";
    wait for 1 ns;

    A <= "00100011";
    B <= "01111101";
    wait for 1 ns;

    assert (false) report "end of test" severity warning;
    wait;

end process;

end architecture ADD8_tb_df;
