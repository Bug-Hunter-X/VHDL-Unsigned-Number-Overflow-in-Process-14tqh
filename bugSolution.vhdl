```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity good_process is
  port (clk : in std_logic;
data : in std_logic_vector(7 downto 0);
       result : out std_logic_vector(7 downto 0);
       overflow : out std_logic); -- Added overflow signal
end entity good_process;

architecture behavioral of good_process is
  signal unsigned_data : unsigned(7 downto 0);
  signal unsigned_result : unsigned(7 downto 0);
begin
  unsigned_data <= unsigned(data);
  process (clk) begin
    if rising_edge(clk) then
      unsigned_result <= unsigned_data + 1;
      overflow <= '1' when unsigned_result(7) = '1' and unsigned_data(7)='0' else '0'; -- overflow detection
      result <= std_logic_vector(unsigned_result);
    end if;
  end process;
end architecture;
```