library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR8_tb is
end entity OR8_tb;

architecture OR8_tb_df of OR8_tb is

component OR8 is
    port (
         A: in std_logic_vector(7 downto 0);
         B: in std_logic_vector(7 downto 0);
         F: out std_logic_vector(7 downto 0)
    );
end component OR8;

signal A: std_logic_vector(7 downto 0);
signal B: std_logic_vector(7 downto 0);
signal F: std_logic_vector(7 downto 0);

begin
-- map the OR circuit vectors to that of the testbench
orer : OR8 port map (
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

end architecture OR8_tb_df;
