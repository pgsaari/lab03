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
            floor_call_array_up: in std_logic_vector(7 downto 0) := (others => '0');
				floor_call_array_down: in std_logic_vector(7 downto 0) := (others => '0');
            destination_array: in std_logic_vector(7 downto 0);

            en1: out std_logic; -- timer to stay on a state
            direction: out std_logic;
            door: out std_logic; -- 1 for open, 0 for close
            current_floor: out std_logic_vector(3 downto 0) := (others => '0'); -- 8 floors max
            state_out: out std_logic_vector(2 downto 0)
       ); 
    end component elevator_state;

    component floor_control is 
        port(
            clk: in std_logic; -- This is clock
            direction: in std_logic; -- This is direction of elevator
            current_floor: in std_logic_vector(3 downto 0); -- This is current floor of the elevator
            enable: in std_logic; --Used to tell floor_control when to latch in data
            state: in std_logic_vector(2 downto 0);
            input_array: in std_logic_vector(4 downto 0); 
            
            -- each bit represents a floor: 1 = up, 0 = no call
            floor_call_array_up: out std_logic_vector(7 downto 0);
				-- each bit represents a floor: 1 = down, 0 = no call
            floor_call_array_down: out std_logic_vector(7 downto 0);
            -- buttons pressed inside of elevator
            destination_array: out std_logic_vector(7 downto 0)
        ); 
    end component;


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
    signal floor_call_array_up: std_logic_vector(7 downto 0)  := (others => '0');
	 signal floor_call_array_down: std_logic_vector(7 downto 0)  := (others => '0');
    signal destination_array: std_logic_vector(7 downto 0);-- := (others => '0');
    signal direction: std_logic;
    signal current_floor: std_logic_vector(3 downto 0);
    signal state: std_logic_vector(2 downto 0);

    -- signals for floor control
    signal enable: std_logic;
    signal input_array: std_logic_vector(4 downto 0);

begin

    elevator_state1: elevator_state
        port map(
            clk => clk,
            term1 => term,
            floor_call_array_up => floor_call_array_up, -- from floor control
				floor_call_array_down => floor_call_array_down, -- from floor control
            destination_array => destination_array, -- from floor control
            direction => direction, -- to floor control
            current_floor => current_floor, -- to floor control
            state_out => state
        );

    floor_control1: floor_control
        port map(
            clk => clk,
            direction => direction, -- from state machine
            current_floor => current_floor, -- from state machine
            enable => enable, -- from 'board'
            state => state,
            input_array => input_array, -- from 'board'
            floor_call_array_up => floor_call_array_up, -- to state machine
				floor_call_array_down => floor_call_array_down, -- from floor control
            destination_array => destination_array -- to state machine
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
        --floor_call_array <= (others => 'Z');
        --destination_array <= (others => '0');
        wait for 1*CLK_PER;

        -- Test Case 1: Elevator responds to floor call from idle state
        
        input_array <= "01101"; -- floor call going up at floor 5
        wait for 1*CLK_PER;
        enable <= '1';
        wait for 3*CLK_PER;
        enable <= '0';
        wait for 25*CLK_PER;
        report "End of Test Case 1" -- 560 ns
		severity WARNING;

        -- Test Case 2: Elevator takes pasenger to their destination
        input_array <= "10010"; -- destination on 2nd floor
        wait for 1*CLK_PER;
        enable <= '1';
        wait for 2*CLK_PER;
        enable <= '0';
        wait for 24*CLK_PER;
        report "End of Test Case 2" -- 1140 ns
		severity WARNING;

        input_array <= "01010"; -- floor call at floor 2
        wait for 1*CLK_PER;
        enable <= '1';
        wait for 2*CLK_PER;
        enable <= '0';
        wait for 24*CLK_PER;

        -- floor_call_array <= "ZZZZZZZ1";
        -- destination_array <= "00100000";
        -- wait for 4*CLK_PER;
        -- floor_call_array <= "ZZZZZZZZ";
        -- wait for 5*CLK_PER;
        -- floor_call_array <= "ZZZZ1ZZZ";
        -- destination_array <= "01100000";
        -- wait for 9*CLK_PER;
        -- floor_call_array <= "ZZZZZZZZ";
        -- wait for 12*CLK_PER;
        -- destination_array <= "01000000";
        -- wait for 8*CLK_PER;
        -- destination_array <= "00000000";
        -- wait for 5*CLK_PER;
        -- report "End of Test Case 2" -- 2000 ns
		-- severity WARNING;


        report "End of simulation"
        severity FAILURE;

    end process vectors;
end architecture stimulus;