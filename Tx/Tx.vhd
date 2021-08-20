library IEEE;
Use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Tx is 
port(data_in : IN std_logic_vector(7 downto 0);
--     mode : IN std_logic_vector(2 downto 0);
     Tx : OUT std_logic;
     send: IN std_logic;
     clock_show: OUT std_logic;
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
signal ilatch,idone,ien: std_logic;
signal present,nxt : state;
begin
--probhai : proclock port map (clk,ilatch,mode,InternalClk);
InternalClk <= clk;
clock_show <= InternalClk;
done : Counter port map (ien,InternalClk,idone);
update_process: process 
begin
wait until (rising_edge(InternalClk));
present <= nxt;
end process;

Transmit_process: process (present,send,InternalClk)begin
case present is

	when stop =>
		if (send = '0') then nxt <= Load;
		else nxt <= Stop;
		ilatch<= '0';
		end if;
	when Load =>
		data <= data_in & '0';
		ilatch <='1';
		nxt <= Transmit;
	when Transmit =>
		--if(rising_edge(InternalClk)) then
		data <= '1' & data(8 downto 1);
		--end if;
		Tx <= data(0);
		ien <= '1'	;
-- this thing has ;errors please solve as this will work for ASCII but not for numbers
		if (idone  = '1' ) then nxt <= Whait; end if;
	when Whait =>
		ien <= '0';
		nxt <= Stop;
		Tx<='1';
	end case;
end process;
mode <= "010";
end Version2_transmit;
