Library IEEE;
USE IEEE.STD_logic_1164.all;
entity demo is end demo;
architecture one of demo is
component Tx is 
port(data_in : IN std_logic_vector(7 downto 0);
    Tx : OUT std_logic;
    send: IN std_logic;
    state_show: OUT std_logic_vector(1 downto 0);
    clock_show: OUT std_logic;
    clk: IN std_logic);
end component;
signal data_in : std_logic_vector(7 downto 0);
signal iTx : std_logic;
signal send: std_logic;
signal clock_show: std_logic;
signal state_show: std_logic_vector(1 downto 0);
signal clki: std_logic := '0';
begin
dut : Tx port map (data_in,iTx,send,State_show,Clock_show,clki);
clki <= not clki after 10 ns;
process begin
data_in <= "11111111";
send <= '1';
wait for 2000 us;
data_in <= "01000010";
wait for 10 us;
send <= '0';
wait for 1000 us;
send <= '1';
wait for 1 ms;
wait;
end process;
end one;

-- Testbench for Pro clock


