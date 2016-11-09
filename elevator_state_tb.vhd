library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity elevator_state_tb is
end entity elevator_state_tb;

architecture stimulus of elevator_state_tb is

    constant CLK_PER: time := 20 ns; -- clock period

    component elevator_state is 
        port(
            clk: in std_logic;
            term1: in std_logic;
            floor_call_array: in std_logic_vector(7 downto 0) := (others => 'Z');
            destination_array: in std_logic_vector(7 downto 0);

            en1: out std_logic; -- timer to stay on a state
            direction: out std_logic;
            door: out std_logic; -- 1 for open, 0 for close
            current_floor: out unsigned(3 downto 0) := (others => '0'); -- 8 floors max
            state_out: out std_logic_vector(2 downto 0)
       ); 
    end component elevator_state;

    -- not used yet
    component gen_counter is
        generic (
		    wide :positive; -- how many bits is the counter
		    max :positive   -- what is the max value of the counter ( modulus )
		);
        port (
		    clk		:in	std_logic; -- system clock
		    data	:in std_logic_vector( wide-1 downto 0 ); -- data in for parallel load, use unsigned(data) to cast to unsigned
		    load	:in std_logic; -- signal to load data into i_count i_count <= unsigned(data);
		    enable	:in std_logic; -- clock enable
		    reset	:in std_logic; -- reset to zeros use i_count <= (others => '0' ) since size depends on generic
		    count	:out std_logic_vector( wide-1 downto 0 ); -- count out
		    term	:out std_logic -- maximum count is reached
		);
    end component gen_counter;

    -- clock signal
    signal clk: std_logic;
    signal term: std_logic := '0';

    -- signals for state machine
    signal floor_call_array: std_logic_vector(7 downto 0);
    signal destination_array: std_logic_vector(7 downto 0);

begin

    elevator_state1: elevator_state
        port map(
            clk => clk,
            term1 => term,
            floor_call_array => floor_call_array,
            destination_array => destination_array
        );

------------clock process--------------------------
    clk_proc: process
    	begin
		    clk <= '0';
		    wait for CLK_PER;
		    clk <= '1';
		    wait for CLK_PER;
	    end process clk_proc;
----------------------------------------------------

    vectors: process begin

        -- start off with no floor calls or destinations
        floor_call_array <= (others => 'Z');
        destination_array <= (others => '0');
        wait for (3*CLK_PER);

        -- Test Case 1: Elevator responds to floor call from idle state
        floor_call_array <= "ZZ1ZZZZZ";
        wait for 20*CLK_PER;
        floor_call_array <= "ZZZZZZZZ";
        wait for 5*CLK_PER;
        report "End of Test Case 1" -- 560 ns
		severity WARNING;

        -- Test Case 2: Elevator takes pasenger to their destination
        destination_array <= "00000001";
        wait for 24*CLK_PER;
        destination_array <= "00000000";
        wait for 5 * CLK_PER;
        report "End of Test Case 2" -- 1140 ns
		severity WARNING;

        floor_call_array <= "ZZZZZZZ1";
        destination_array <= "00100000";
        wait for 4*CLK_PER;
        floor_call_array <= "ZZZZZZZZ";
        wait for 5*CLK_PER;
        floor_call_array <= "ZZZZ1ZZZ";
        destination_array <= "01100000";
        wait for 9*CLK_PER;
        floor_call_array <= "ZZZZZZZZ";
        wait for 12*CLK_PER;
        destination_array <= "01000000";
        wait for 8*CLK_PER;
        destination_array <= "00000000";
        wait for 5*CLK_PER;
        report "End of Test Case 2" -- 2000 ns
		severity WARNING;


        report "End of simulation"
        severity FAILURE;

    end process vectors;
end architecture stimulus;