library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Counter_M_N is
 generic (
            M : integer := 15; 
            N : integer := 8   
    );
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Tick : out STD_LOGIC;
           Counting : out STD_LOGIC_VECTOR(N-1 downto 0)
           );
end Counter_M_N;
architecture Behavioral of Counter_M_N is
signal R_Register: std_logic_vector(N-1 downto 0);
signal R_Next: std_logic_vector(N-1 downto 0);
begin
   process(clk,reset)
   begin
      if (reset='1') then
         R_Register <= "00000110";
      elsif (clk'event and clk='1') then
         R_Register <= R_Next;
      end if;
   end process;
   R_next <= "00000110" when R_Register=(M-1) else
             R_Register + 1;
     Counting <= std_logic_vector(R_Register); 
    Tick <= '1' when R_Register = (M-1) else '0';
end Behavioral;
