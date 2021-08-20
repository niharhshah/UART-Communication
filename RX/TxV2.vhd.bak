library IEEE;
Use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Tx is 
port(data_in : IN std_logic_vector(7 downto 0);
     --mode : IN std_logic_vector(2 downto 0);
     Tx : OUT std_logic:= '1';
     send: IN std_logic;
     state_show: OUT std_logic_vector(1 downto 0);
     Clock_show: OUT std_logic;--
     clk: IN std_logic);
end Tx;

Architecture Version2_transmit of Tx is

component proclock is
port (inclk : in std_logic ; 
		latch : in std_logic ; 
		prescaler : IN std_logic_vector(2 downto 0);
		clk : buffer std_logic);
end component;

component Counter is
port (En,clk :IN Std_logic;
	done : OUT std_logic);
end component;

type state is (Stop,Load,Transmit,Whait);

signal InternalClk : std_logic;
signal mode : std_logic_vector(2 downto 0);
signal data : std_logic_vector(8 downto 0);
signal ilatch : std_logic := '0';
signal idone,ien: std_logic;
signal present,nxt : state;


begin

probhai : proclock port map (clk,ilatch,mode,InternalClk);
-- InternalClk <= clk;
clock_show <= InternalClk;

done : Counter port map (ien,InternalClk,idone);

update_process: process 
begin
	wait until (rising_edge(InternalClk));
	present <= nxt;
end process;

Transmit_process: process (present,send,InternalClk)begin
if(rising_edge(InternalClk)) then 
case present is
	when stop =>
		ilatch<= '0';
		if (send = '0') then nxt <= Load;
		else nxt <= Stop;
		end if;
	when Load =>
		data <= data_in & '0';
		ilatch <='1';
		ien <= '1';
		nxt <= Transmit;
	when Transmit =>
		data <= '1' & data(8 downto 1);
		Tx <= data(0);
		ien <= '1'	;
		if (idone  = '1' ) then nxt <= Whait; end if;
	when Whait =>
		ien <= '0';
		nxt <= Stop;
		Tx<='1';
	end case;
end if;
end process;

State_show_process: process(present) begin
case present is
	when Stop => state_show <= "00";
	when Load => state_show <= "01";
	when Transmit => state_show <= "10";
	when  Whait => state_show <= "11";
end case;
end process;

mode <= "011";
-- clock_show <= InternalClk;
end Version2_transmit;
