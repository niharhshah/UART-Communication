Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Counter is
port (En,clk :IN Std_logic;
	done : OUT std_logic);
end entity;

architecture one of counter is
signal count : Integer range 0 to 8;
begin
count_process: process(en,clk) begin
if (en = '1') then
	if(rising_edge(clk)) then
	count <= count + 1;
	end if;
	if (count = 8) then
	count <= 0;
	done <= '1';
	else
	done <= '0';
	end if;
else
	done <= '0';
	count <= 0;
end if;
end process;
end one;

