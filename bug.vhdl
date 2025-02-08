```vhdl
entity bad_process is
  port (clk : in std_logic;
data : in std_logic_vector(7 downto 0);
       result : out std_logic_vector(7 downto 0));
end entity bad_process;

architecture behavioral of bad_process is
begin
  process (clk) begin
    if rising_edge(clk) then
      result <= data + 1; -- This is incorrect if data is an unsigned number. 
    end if;
  end process;
end architecture;
```