library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity fullspeed is
port (iclk : IN std_logic; clk : buffer std_logic := '0');
end fullspeed;

architecture fs of fullspeed is
signal count : integer range 0 to 650 ;
begin
process(iclk)
begin
if (rising_edge(iclk)) then
if (count = 650) then 
clk <= not(clk);
count <= 0;
else
count <= count + 1;
end if;
end if;
end process;
end fs;
--------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;--Numeric_Std
entity proclock is
port (inclk : in std_logic ; 
		latch : in std_logic ; 
		prescaler : IN std_logic_vector(2 downto 0);
--		testps: OUT std_logic_vector(7 downto 0);
		clk : buffer std_logic := '0');
end proclock;

architecture pro of proclock is
component fullspeed is
port (iclk : IN std_logic; clk : OUT std_logic);
end component;
signal presv : integer range 0 to 127;
signal internalclk : std_logic;
signal count : integer range 0 to 127;
signal latchedPre : std_logic_vector (2 downto 0); 
begin
fulsped : fullspeed port map (inclk ,internalclk);
--testps <= std_logic_vector(to_unsigned(presv,testps'length));
latchedPre <= prescaler when latch = '0';
process (latchedPre)
begin
case latchedPre is
	when "000" => presv <= 0;
	when "001" => presv <= 0;
	when "010" => presv <= 1;
	when "011" => presv <= 3;
	when "100" => presv <= 7;
	when "101" => presv <= 15;
	when "110" => presv <= 31;
	when "111" => presv <= 63;
	when others => presv <= 1;
end case;

end process;
process (latchedPre,internalclk)
begin
if (latchedPre = "000") then
clk <= internalclk;
else
if (rising_edge(internalclk)) then
if (count >= presv) then 
clk <= not(clk);
count <= 0;
else
count <= count + 1;
end if;
end if;
end if;
end process;
end pro;