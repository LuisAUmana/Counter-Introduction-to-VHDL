library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity MCounter is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           m : in STD_LOGIC_VECTOR(3 downto 0);
           q : out STD_LOGIC_VECTOR(3 downto 0)
           );
end MCounter;
architecture Behavioral of MCounter is
 signal R_Register: unsigned(3 downto 0);
 signal R_Next: unsigned(3 downto 0);
begin
   process(clk,reset)
   begin
      if (reset='1') then
         R_Register <= (others=>'0');
      elsif (clk'event and clk='1') then
         R_Register <= R_Next;
      end if;
   end process;
   R_next <= (others=>'0') when R_Register=(unsigned(m)-1) else
             R_Register + 1;
   q <= std_logic_vector(R_Register);
end Behavioral;
