library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity MCountetTest is
end MCountetTest;
architecture Behavioral of MCountetTest is
component MCounter is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           m : in STD_LOGIC_VECTOR(3 downto 0);
           q : out STD_LOGIC_VECTOR(3 downto 0)
           );
end component;
signal clk :std_logic;
signal reset :std_logic;
signal m:std_logic_vector(3 downto 0);
signal q:std_logic_vector(3 downto 0);
begin
uut:MCounter port map
(clk=>clk,reset=>reset,m=>m,q=>q);
clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;
stim_proc: process
begin
    reset <= '1';
    wait for 100 ns;    
    reset <= '0';
  wait;    
end process;
end Behavioral;
