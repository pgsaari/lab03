library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity elevator_state_tb is
end entity elevator_state_tb;

architecture stimulus of elevator_state_tb is

    constant CLK_PER: time := 20 ns; -- clock period
    constant CLK_PER_FAST: time := 1 ns;

    component elevator_state is 
		  generic (
				num_floors: positive -- states how many floors
		  );
        port(
            clk: in std_logic;
            
            floor_call_array_up: in std_logic_vector(num_floors-1 downto 0) := (others => '0');
			floor_call_array_down: in std_logic_vector(num_floors-1 downto 0) := (others => '0');
            destination_array: in std_logic_vector(num_floors-1 downto 0);

            direction: out std_logic;
            door: out std_logic; -- 1 for open, 0 for close
            current_floor: out std_logic_vector(3 downto 0) := (others => '0'); -- 8 floors max
            state_out: out std_logic_vector(2 downto 0)
       ); 
    end component elevator_state;

    component floor_control is 
		  generic (
				num_floors: positive -- states how many floors
		  );
        port(
            clk: in std_logic; -- This is clock
			input_clock : in std_logic; -- This is 50Mhz clock for input
            direction: in std_logic; -- This is direction of elevator
            current_floor: in std_logic_vector(3 downto 0); -- This is current floor of the elevator
            enable: in std_logic; --Used to tell floor_control when to latch in data
            state: in std_logic_vector(2 downto 0);
            input_array: in std_logic_vector(5 downto 0); 
            
            -- each bit represents a floor: 1 = up, 0 = no call
            floor_call_array_up: out std_logic_vector(num_floors-1 downto 0);
				-- each bit represents a floor: 1 = down, 0 = no call
            floor_call_array_down: out std_logic_vector(num_floors-1 downto 0);
            -- buttons pressed inside of elevator
            destination_array: out std_logic_vector(num_floors-1 downto 0)
        ); 
    end component;
	
    component master_control is 
        generic (
                num_elevators: positive;
                number_floors: positive
        );
        port(
            clk: in std_logic; -- 50 MHz clock
            enable: in std_logic; --enable for this component to latch data
            states: in std_logic_vector(3*num_elevators-1 downto 0);--states of elevators
            input_array: in std_logic_vector(5 downto 0);--input from board 
            input_choose_elevator: in std_logic_vector(2 downto 0);--input from board used if destination is chosen to choose elevator
            enable_floor_control: out std_logic_vector(num_elevators-1 downto 0);--enables for floor control
            
            ---USED TO SEND CURRENT FLOOR OF ELEVATOR TO HEX FILE
            elvator_current_floor: in std_logic_vector(4*num_elevators-1 downto 0) := (others => '0');

        ----USED TO SEND DIRECTION FROM STATE_MACHINE TO FLOOR_CONTROL------
            direction_of_elevator: in std_logic_vector(num_elevators-1 downto 0) := (others => '0')
    ); end component;

	 
	 CONSTANT number_floors: INTEGER := 5;
     CONSTANT number_elevators: INTEGER := 2;
	
    -- clock signal
    signal clk: std_logic;
	 signal input_clk: std_logic;

    -- signals for elevator state machine 1
    signal floor_call_array_up: std_logic_vector(number_floors-1 downto 0);
	signal floor_call_array_down: std_logic_vector(number_floors-1 downto 0);
    signal destination_array: std_logic_vector(number_floors-1 downto 0);

    -- signals for elevator state machine 2
    signal floor_call_array_up2: std_logic_vector(number_floors-1 downto 0);
	signal floor_call_array_down2: std_logic_vector(number_floors-1 downto 0);
    signal destination_array2: std_logic_vector(number_floors-1 downto 0);

    -- signals shared between elevators
    signal direction: std_logic_vector(number_elevators-1 downto 0);
    signal current_floor: std_logic_vector(4*number_elevators-1 downto 0);
    signal state_of_machine: std_logic_vector(3*number_elevators-1 downto 0);

    -- signals for master control
	signal floor_control_enable: std_logic_vector(number_elevators-1 downto 0) := (others => '0');
    signal enable: std_logic := '0';
    signal input_choose_elevator: std_logic_vector(2 downto 0);

    -- signals for floor control
    signal input_array: std_logic_vector(5 downto 0);

begin

    M_control : master_control 
        generic map(
                num_elevators => number_elevators,
                number_floors => number_floors
        )
        port map(
            clk => input_clk,
            enable => enable, 
            states => state_of_machine(3*number_elevators-1 downto 0), -- array keeps track of states of each elevator
            input_array=> input_array, -- user enters inputs
            input_choose_elevator => input_choose_elevator,
            enable_floor_control => floor_control_enable(number_elevators-1 downto 0), --tells floor_control when to latch in data
            elvator_current_floor => current_floor(4*number_elevators-1 downto 0), --keeps track of current floor of each elevator
            direction_of_elevator => direction(number_elevators-1 downto 0) --directions of each elevator	 
        );

    elevator_state1: elevator_state
		  generic map(
				num_floors => number_floors
		  ) 
        port map(
            clk => clk,
            floor_call_array_up => floor_call_array_up, -- from floor control
			floor_call_array_down => floor_call_array_down, -- from floor control
            destination_array => destination_array, -- from floor control
            direction => direction(0), -- to floor control
            current_floor => current_floor(3 downto 0), -- to floor control
            state_out => state_of_machine(2 downto 0)
        );

    floor_control1: floor_control
		  generic map(
				num_floors => number_floors
        ) 
        port map(
            clk => clk,
			input_clock => input_clk,
            direction => direction(0), -- from state machine
            current_floor => current_floor(3 downto 0), -- from state machine
            enable => floor_control_enable(0), -- from master_control
            state => state_of_machine(2 downto 0),
            input_array => input_array, -- from 'board'
            floor_call_array_up => floor_call_array_up, -- to state machine
			floor_call_array_down => floor_call_array_down, -- from floor control
            destination_array => destination_array -- to state machine
        );

        elevator_state2: elevator_state
		  generic map(
				num_floors => number_floors
		  ) 
        port map(
            clk => clk,
            floor_call_array_up => floor_call_array_up2, -- from floor control
			floor_call_array_down => floor_call_array_down2, -- from floor control
            destination_array => destination_array2, -- from floor control
            direction => direction(1), -- to floor control
            current_floor => current_floor(4*number_elevators-1 downto 4), -- to floor control
            state_out => state_of_machine(3*number_elevators-1 downto 3)
        );

    floor_control2: floor_control
		  generic map(
				num_floors => number_floors
        ) 
        port map(
            clk => clk,
			input_clock => input_clk,
            direction => direction(1), -- from state machine
            current_floor => current_floor(4*number_elevators-1 downto 4), -- from state machine
            enable => floor_control_enable(1), -- from master_control
            state => state_of_machine(3*number_elevators-1 downto 3),
            input_array => input_array, -- from 'board'
            floor_call_array_up => floor_call_array_up2, -- to state machine
			floor_call_array_down => floor_call_array_down2, -- from floor control
            destination_array => destination_array2 -- to state machine
        );

------------clock process--------------------------
    clk_proc: process
    	begin
		    clk <= '0';
		    wait for CLK_PER * 3;
		    clk <= '1';
		    wait for CLK_PER * 3;
	    end process clk_proc;
----------------------------------------------------

------------clock process--------------------------
    input_clk_proc: process
    	begin
		    input_clk <= '0';
		    wait for CLK_PER_FAST;
		    input_clk <= '1';
		    wait for CLK_PER_FAST;
	    end process input_clk_proc;
----------------------------------------------------

    vectors: process begin

        wait for 1*CLK_PER;

        -- Test Case 1: Elevator responds to floor call from idle state
        
        input_array <= "010101"; -- floor call going up at floor 5
        wait for 1*CLK_PER;
        enable <= '1';
        wait for 3*CLK_PER;
        enable <= '0';
        wait for 25*CLK_PER;
        report "End of Test Case 1" -- 560 ns
		severity WARNING;

        -- Test Case 2: Elevator takes pasenger to their destination
        input_array <= "100010"; -- destination on 2nd floor
        wait for 1*CLK_PER;
        enable <= '1';
        wait for 2*CLK_PER;
        enable <= '0';
        wait for 24*CLK_PER;
        report "End of Test Case 2" -- 1140 ns
		severity WARNING;

        input_array <= "010010"; -- floor call at floor 2
        wait for 1*CLK_PER;
        enable <= '1';
        wait for 2*CLK_PER;
        enable <= '0';
        wait for 24*CLK_PER;

        report "End of simulation"
        severity FAILURE;

    end process vectors;
end architecture stimulus;