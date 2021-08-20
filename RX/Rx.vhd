Library IEEE;
use IEEE.std_logic_1164.all;

entity ModuleRx is
  port (Rx : IN std_logic;
    clk: IN std_logic;
    --mode: IN std_logic_vector(2 downto 0);
    data_out : OUT std_logic_vector(7 downto 0);
    valid: OUT Std_logic
  ) ;
end ModuleRx;

architecture RxFSM of ModuleRx is

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
    

    type state is (whait,Reead,vallid);

    signal InternalClk : std_logic;
    signal mode : std_logic_vector(2 downto 0);
    signal InternalData : std_logic_vector(8 downto 0);
    signal ilatch : std_logic := '0';
--    signal idone,ien: std_logic;
    signal present,nxt : state;
    signal count : integer range 0 to 15 := 0;
begin
    probhaiRx : proclock port map (clk,ilatch,mode,InternalClk);


    Receive_process : process(InternalClk,present,Rx)
    begin
        -- if(rising_edge(InternalClk)) then 
        case present is
            when whait => 
                if(Rx = '0') then nxt <= reead; 
                   else nxt <= whait;
                end if;
                valid <= '0';
                data_out<=  InternalData(7 downto 0);
                count <= 0;
                ilatch <= '0';

            when reead =>
                if((InternalClk'event) and InternalClk = '1') then 
                    InternalData <= Rx&InternalData(8 downto 1);
                    count <= count+1;
                end if;
                    valid <= '0';
                    data_out<= "00000000";
                    if(count >= 8) then nxt <= vallid;
                        else nxt <= reead;
                        -- data_out <= InternalData;
                        -- valid <= '1'
                    end if;
                    ilatch <= '1';
                -- nxt <= vallid;

                when vallid =>
                valid <= '1';
                data_out <= InternalData(7 downto 0);
                nxt <= whait;
                count <= 0;
                ilatch <='1';
        end case;
        -- end if;        
    end process ;

    update_process: process 
    begin
        wait until (rising_edge(InternalClk));
        present <= nxt;
    end process;

    mode <= "010";
    end RxFSM ; -- RxFSM