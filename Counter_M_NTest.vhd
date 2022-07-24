library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Counter_M_NTest is
end Counter_M_NTest;
architecture Behavioral of Counter_M_NTest is
constant N: integer := 8;
signal clk :std_logic;
signal reset :std_logic;
signal Tick:std_logic;
signal Counting:std_logic_vector(N-1 downto 0);
begin
p0:entity work.Counter_M_N(Behavioral) port map
(clk=>clk,reset=>reset,Tick=>Tick,Counting=>Counting);
clock_process :process
begin
     clk <= '0';
     wait for 50 ns;
     clk <= '1';
     wait for 50 ns;
end process;
stim_proc: process
begin
    reset <= '1';
    wait for 50 ns;    
    reset <= '0';
  wait;    
end process;
end Behavioral;
