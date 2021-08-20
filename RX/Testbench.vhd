Library IEEE;
use IEEE.std_logic_1164.all;

entity demo is
end demo;

architecture one of demo is

component ModuleTx is 
port(data_in : IN std_logic_vector(7 downto 0);
     --mode : IN std_logic_vector(2 downto 0);
     Tx : OUT std_logic:= '1';
     send: IN std_logic;
     state_show: OUT std_logic_vector(1 downto 0);
     Clock_show: OUT std_logic;--
     clk: IN std_logic);
end component;

component  ModuleRx is
  port (Rx : IN std_logic;
    clk: IN std_logic;
    --mode: IN std_logic_vector(2 downto 0);
    data_out : OUT std_logic_vector(7 downto 0);
    valid: OUT Std_logic
  ) ;
end component;

signal Din,Dout : std_logic_vector(7 downto 0);
signal iclock : std_logic := '0';
signal wre,snd,clkSeen,welid : std_logic;

begin
Txmod: ModuleTx port map(Din,wre,snd,OPEN,clkseen,iclock);
RxMod: ModuleRx port map(wre,iclock,Dout,Welid);

iclock <= not iclock after 10 ns;

MainProcess : process
begin
  Din <= "11111111";
  snd <= '1';
  wait for 1000 us;
  Din <= "01010101";
  wait for 1000 us;
  snd <= '0';
  wait for 105 us;
  snd <= '1';
  wait for 10 ms;
  wait;  
end process ; -- MainProcess
end one ; -- one