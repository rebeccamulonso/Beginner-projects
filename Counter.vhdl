library IEEE; 

use IEEE.STD_LOGIC_1164.ALL; 

  

-- Uncomment the following library declaration if using 

-- arithmetic functions with Signed or Unsigned values 

--use IEEE.NUMERIC_STD.ALL; 

  

-- Uncomment the following library declaration if instantiating 

-- any Xilinx leaf cells in this code. 

--library UNISIM; 

--use UNISIM.VComponents.all; 

  

entity counter_tb is 

    

end counter_tb; 

  

architecture Behavioral of counter_tb is 

COMPONENT counter 

PORT ( 

clk : IN std_logic; 

reset : IN std_logic; 

pause : IN std_logic;  

count_out : OUT std_logic_vector(3 downto 0) 

); 

END COMPONENT; 

  

--Inputs\ 

SIGNAL clk_in : std_logic := '0'; 

SIGNAL reset : std_logic := '0'; 

SIGNAL pause : std_logic := '0'; 

SIGNAL clk : std_logic := '0'; 

--Outputs\ 

SIGNAL count_out : std_logic_vector(3 downto 0); 

constant clk_period : time := 10 ns; 

  

begin 

  

-- Instantiate the Unit Under Test (UUT)\ 

uut: counter PORT MAP( 

clk => clk_in, 

reset => reset, 

pause => pause, 

count_out => count_out  

); 

  

  

clock :PROCESS 

  

BEGIN  

  

clk <= NOT clk; 

        wait for clk_period; 

      

END PROCESS; 

  

pause_test : PROCESS  

    BEGIN 

     

    pause <= '0'; 

        wait for clk_period*74;  

    pause <= '1'; 

        wait for clk_period*6; 

    END PROCESS; 

     

    reset_test : PROCESS 

BEGIN 

reset <= '0'; 

wait for clk_period*2; 

reset <= '1'; 

wait for clk_period*2; 

END PROCESS; 

  

end Behavioral; 
