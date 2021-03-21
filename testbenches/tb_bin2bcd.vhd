library ieee;
use ieee.std_logic_1164.all;
 
entity tb_bin2bcd is
end tb_bin2bcd;
 
architecture behavior of tb_bin2bcd is 
    component bin2bcd
        generic (
            BIN_IN_LENGTH : integer;
            NUM_BCD_DIGITS: integer
        );
        port ( 
            bin_in : in  std_logic_vector ((BIN_IN_LENGTH-1) downto 0);
            bcd_out: out std_logic_vector((NUM_BCD_DIGITS*4-1) downto 0)
        );      
    end component;

    constant BIN_IN_LENGTH : integer := 16;
    constant NUM_BCD_DIGITS: integer := 4;  

    --inputs
    signal bin_in : std_logic_vector((BIN_IN_LENGTH-1) downto 0) := (others => '0');
    signal clk : std_logic := '0';  -- can be omitted

    --outputs
    signal bcd_out : std_logic_vector((NUM_BCD_DIGITS*4-1) downto 0);

    -- clock period definitions
    constant CLK_PERIOD : time := 10 ns;  -- can be omitted

begin
 
    -- instantiate the unit under test (uut)
    uut: bin2bcd 
        generic map (
            BIN_IN_LENGTH => BIN_IN_LENGTH,
            NUM_BCD_DIGITS => NUM_BCD_DIGITS
        )
        
        port map (
            bin_in => bin_in,
            bcd_out => bcd_out
        );

   -- clock process definitions  
   -- the whole process could be omitted (not a sequential design)
  clk_process : process
  begin
    clk <= '0';
    wait for CLK_PERIOD/2;
    clk <= '1';
    wait for CLK_PERIOD/2;
  end process;
 
   -- stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 30 ns.
      wait for 30 ns;	

      wait for CLK_PERIOD*10;

      -- should return 4095
      bin_in <= x"0fff";
      wait for CLK_PERIOD*10;  assert bcd_out = x"4095" severity error; 

      -- should return 0
      bin_in <= x"0000";
      wait for CLK_PERIOD*10;  assert bcd_out = x"0000" severity error;

      -- should return 2748
      bin_in <= x"0abc";
      wait for CLK_PERIOD*10;  assert bcd_out = x"2748" severity error;

      -- should return 9999
      bin_in <= x"270F";
      wait for CLK_PERIOD*10;  assert bcd_out = x"9999" severity error;

      -- should return 312
      bin_in <= x"0138";
      wait for CLK_PERIOD*10;  assert bcd_out = x"0312" severity error;
		
      wait;
   end process;
end;