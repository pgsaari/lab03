library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity elevator_state_tb is
end entity elevator_state_tb;

architecture stimulus of elevator_state_tb is

    constant CLK_PER: time := 10 ns; -- clock period
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
            current_floor: out std_logic_vector(3 downto 0);
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
            input_array: in std_logic_vector(5 downto 0);--input from board which also goes to elevators
	        input_choose_elevator: in std_logic_vector(2 downto 0);--input from board used if destination is chosen to choose elevator
            enable_floor_control: out std_logic_vector(num_elevators-1 downto 0) := (others => '0');--enables for floor control
            elvator_current_floor: in std_logic_vector(4*num_elevators-1 downto 0) := (others => '0');
            direction_of_elevator: in std_logic_vector(num_elevators-1 downto 0) := (others => '0');
            floor_array_up: in std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0');
            floor_array_down: in std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0')

        ); 
    end component;

	 
	 CONSTANT number_floors: INTEGER := 10;
     CONSTANT number_elevators: INTEGER := 2;
	
    -- clock signal
    signal clk: std_logic := '0';
	 signal input_clk: std_logic := '0';

    -- signals for elevator state machine 1
    signal destination_array: std_logic_vector(number_floors-1 downto 0);

    -- signals for elevator state machine 2
    signal destination_array2: std_logic_vector(number_floors-1 downto 0);

    -- signals shared between elevators
    signal direction: std_logic_vector(number_elevators-1 downto 0) := (others=>'0');
    signal current_floor: std_logic_vector(4*number_elevators-1 downto 0) := (others=>'0');
    signal state_of_machine: std_logic_vector(3*number_elevators-1 downto 0) := (others=>'0');

    -- signals for master control
	signal floor_control_enable: std_logic_vector(number_elevators-1 downto 0) := (others => '0');
    signal enable: std_logic := '0';

    signal input_choose_elevator: std_logic_vector(2 downto 0);
    signal total_floor_call_up: std_logic_vector((number_floors)*number_elevators-1 downto 0);
    signal total_floor_call_down: std_logic_vector((number_floors)*number_elevators-1 downto 0);
    

    -- signals for floor control
    signal input_array: std_logic_vector(5 downto 0) := (others=>'0');

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
            direction_of_elevator => direction(number_elevators-1 downto 0), --directions of each elevator	
            floor_array_up => total_floor_call_up,
            floor_array_down => total_floor_call_down
        );

    elevator_state1: elevator_state
		  generic map(
				num_floors => number_floors
		  ) 
        port map(
            clk => clk,
            floor_call_array_up => total_floor_call_up(number_floors-1 downto 0), -- from floor control
			floor_call_array_down => total_floor_call_down(number_floors-1 downto 0), -- from floor control
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
            floor_call_array_up => total_floor_call_up(number_floors-1 downto 0), -- to state machine
			floor_call_array_down => total_floor_call_down(number_floors-1 downto 0), -- from floor control
            destination_array => destination_array -- to state machine
        );

        elevator_state2: elevator_state
		  generic map(
				num_floors => number_floors
		  ) 
        port map(
            clk => clk,
            floor_call_array_up => total_floor_call_up((number_elevators)*number_floors-1 downto number_floors), -- from floor control
			floor_call_array_down => total_floor_call_down((number_elevators)*number_floors-1 downto number_floors), -- from floor control
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
            floor_call_array_up => total_floor_call_up((number_elevators)*number_floors-1 downto number_floors), -- to state machine
			floor_call_array_down => total_floor_call_down((number_elevators)*number_floors-1 downto number_floors), -- from floor control
            destination_array => destination_array2 -- to state machine
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
        wait for 2*CLK_PER;

        -- Test Case 1: Only 1 elevator responds to  floor call down at floor 4
        input_array <= "000100"; -- floor call going down at floor 4
        -- wait for 1*CLK_PER; enable <= '1'; wait for 1*CLK_PER; enable <= '0'; -- enter input
        -- wait for 14*CLK_PER;
        -- input_array <= "100001"; -- destination is at floor 1 
        -- wait for 1*CLK_PER; enable <= '1'; wait for 1*CLK_PER; enable <= '0'; -- enter input
        -- wait for 15*CLK_PER;       
        -- report "End of simulation"
        -- severity FAILURE;

        -- Test Case 2: Picking up floor calls while heading up
        -- input_array <= "011000"; -- floor call going up at floor 8
        -- wait for (0.5)*CLK_PER; enable <= '1'; wait for (0.5)*CLK_PER; enable <= '0'; -- enter input
        -- wait for 3*CLK_PER;
        -- input_array <= "000110"; -- floor call going down at floor 6
        -- wait for (0.5)*CLK_PER; enable <= '1'; wait for (0.5)*CLK_PER; enable <= '0'; -- enter input
        -- wait for 3*CLK_PER;
        -- input_array <= "010111"; -- floor call going up at floor 5
        -- wait for (0.5)*CLK_PER; enable <= '1'; wait for (0.5)*CLK_PER; enable <= '0'; -- enter input
        -- wait for 30*CLK_PER;
        -- report "End of simulation"
        -- severity FAILURE;

        -- Test case 3: Picking up floor calls while heading down
        -- input_array <= "101001"; -- send up to floor 9
        -- wait for (0.5)*CLK_PER; enable <= '1'; wait for (0.5)*CLK_PER; enable <= '0'; wait for 3*CLK_PER; -- enter input
        -- input_array <= "001001"; -- send up to floor 9
        -- wait for (0.5)*CLK_PER; enable <= '1'; wait for (0.5)*CLK_PER; enable <= '0'; wait for 3*CLK_PER; -- enter input
        -- wait for 35*CLK_PER;
        -- input_array <= "000001"; -- floor call down at floor 1
        -- wait for (0.5)*CLK_PER; enable <= '1'; wait for (0.5)*CLK_PER; enable <= '0'; wait for 3*CLK_PER; -- enter input
        -- input_array <= "000011"; -- floor call down at floor 3
        -- wait for (0.5)*CLK_PER; enable <= '1'; wait for (0.5)*CLK_PER; enable <= '0'; wait for 3*CLK_PER; -- enter input
        -- input_array <= "000010"; -- floor call down at floor 2
        -- wait for (0.5)*CLK_PER; enable <= '1'; wait for (0.5)*CLK_PER; enable <= '0'; wait for 3*CLK_PER; -- enter input
        -- wait for 30*CLK_PER;
        -- report "End of simulation"
        -- severity FAILURE;

        -- Test Case 4:
        input_array <= "011000"; -- floor call up at floor 8
        wait for (0.5)*CLK_PER; enable <= '1'; wait for (0.5)*CLK_PER; enable <= '0'; wait for 3*CLK_PER; -- enter input
        input_array <= "010111"; -- floor call up at floor 7
        wait for (0.5)*CLK_PER; enable <= '1'; wait for (0.5)*CLK_PER; enable <= '0'; wait for 3*CLK_PER; -- enter input
        input_array <= "000110"; -- floor call down at floor 6
        wait for (0.5)*CLK_PER; enable <= '1'; wait for (0.5)*CLK_PER; enable <= '0'; wait for 3*CLK_PER; -- enter input
        wait for 30*CLK_PER;
        report "End of simulation"
        severity FAILURE;

    end process vectors;
end architecture stimulus;