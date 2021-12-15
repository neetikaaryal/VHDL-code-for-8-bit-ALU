library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NAND8_tb is
end entity NAND8_tb;

architecture NAND8_tb_df of NAND8_tb is

component NAND8 is
    port (
         A: in std_logic_vector(7 downto 0);
         B: in std_logic_vector(7 downto 0);
         F: out std_logic_vector(7 downto 0)
    );
end component NAND8;

signal A: std_logic_vector(7 downto 0);
signal B: std_logic_vector(7 downto 0);
signal F: std_logic_vector(7 downto 0);

begin
-- map the NAND circuit vectors to that of the testbench
nander : NAND8 port map (
    A => A , B => B, F => F
);

    process begin
	
	A <= "XXXXXXXX";
	B <= "XXXXXXXX";
	wait for 1 ns;
	

    A <= "00100011";
    B <= "01010101";
    wait for 1 ns;

    A <= "00101011";
    B <= "00010101";
    wait for 1 ns;

    A <= "01101011";
    B <= "00110101";
    wait for 1 ns;

    A <= "10110111";
    B <= "01010101";
    wait for 1 ns;

    A <= "00100011";
    B <= "01010101";
    wait for 1 ns;

    A <= "00100011";
    B <= "01111101";
    wait for 1 ns;

    assert (false) report "Test completed" severity warning;
    wait;

    end process;

end architecture NAND8_tb_df;
