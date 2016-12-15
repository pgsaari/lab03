--This will simulate an elevator(s).

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


entity elevator_top is Port(
	
	 --//////////////////////// CLOCK ///////////////////////////////////
   CLOCK_50	:in		std_logic;						-- 50 MHz
	
	--////////////////////////	7-SEG Dispaly	///////////////////////////
	---------TIE ELEVATOR state to hex display variable----------
   Hex_Link :out std_logic_vector(41 DOWNTO 0) := (others => '1');
	
	-- ///////////////////////Push Buttons(Reset-Write)//////////////////////
	KEY		:in		std_logic;	--Pushbutton TO LATCH IN DATA
	
	--////////////////////////	DPDT Switch		////////////////////////
	--0-3: SPECIFY FLOOR, 4: DIRECTION (UP(1), DOWN(0)), 5: FLOOR CALL(0) OR DESTINATION CALL(1)
	--5-8: SECIFY THE ELEVATOR WHEN A DESTINATION WANTS TO BE SET.
	SW			:in		std_logic_vector(8 downto 0) -- 
	
); end entity elevator_top;

architecture struct of elevator_top is

--------USED TO SET THE NUMBER OF ELEVATORS (MAX IS 6) (MINIMUM IS 1)------------------
CONSTANT num_elevators : INTEGER:= 2;

--------USED TO SET THE NUMBER OF FLOORS (MAX IS 16) (MIN IS 1)------------------
CONSTANT number_floors : INTEGER:= 16;

---USED to link 1 sec counter tem and clock of devices to simulate 1 sec counter-----
signal sec_term	 :std_logic := '0';

--USED TO SEND STATE OF MACHINE TO HEX FILE----------
signal state_of_machine: std_logic_vector(3*num_elevators-1 downto 0) := (others => '0');

---USED TO SEND CURRENT FLOOR OF ELEVATOR TO HEX FILE
signal elvator_current_floor: std_logic_vector(4*num_elevators-1 downto 0) := (others => '0');

----USED TO SEND DIRECTION FROM STATE_MACHINE TO FLOOR_CONTROL------
signal direction_of_elevator: std_logic_vector(num_elevators-1 downto 0) := (others => '0');

----USED TO CONTROL ENABLE OF FLOOR_CONTROL------
signal floor_control_enable: std_logic_vector(num_elevators-1 downto 0) := (others => '0');

---USED TO LINK DESTINATION ARRAY FROM FLOOR_CONTROL TO ELEVATOR_STATE
signal des_array: std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0');

---USED TO LINK FLOOR CALL ARRAY UP FROM FLOOR_CONTROL TO ELEVATOR_STATE
signal floor_array_up: std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0');

---USED TO LINK FLOOR CALL ARRAY DOWN FROM FLOOR_CONTROL TO ELEVATOR_STATE
signal floor_array_down: std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0');

	------ seven_seg_display--------- 
COMPONENT seven_seg is Port(
	state: in std_logic_vector(2 downto 0); --STATE OF ELEVATOR
	floor: in std_logic_vector(3 downto 0); --CURRENT FLOOR OF ELEVATOR
	segs: out	std_logic_vector(6 downto 0) -- SEVEN SEG DISPLAY
); END COMPONENT;

-------- Counters-----------------------
component gen_counter is generic (
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
); end component;


---------State Machine----------------------
component elevator_state is
generic (
		num_floors: positive -- states how many floors
); 
port(
	 clk: in std_logic;

   -- each bit represents a floor: 0 = no call, 1 = up
    floor_call_array_up: in std_logic_vector(num_floors-1 downto 0) := (others => '0');
	 
	 -- each bit represents a floor: 0 = no call, 1 = down
    floor_call_array_down: in std_logic_vector(num_floors-1 downto 0) := (others => '0');

    -- buttons pressed inside of elevator
    destination_array: in std_logic_vector(num_floors-1 downto 0);
	 
    direction: out std_logic; --direction of elevator
    door: out std_logic; -- 1 for open, 0 for close
    current_floor: out std_logic_vector(3 downto 0) := (others => '0'); -- 16 floors max
    state_out: out std_logic_vector(2 downto 0) -- state of elevator
);end component;
	
------ FLOOR CONTROL--------------------------
component floor_control is 
generic (
		num_floors: positive -- states how many floors
);
port(
   clk: in std_logic; -- This is clock
	input_clock: in std_logic; -- 50mhz for input
	direction: in std_logic; -- This is direction of elevator
	current_floor: in std_logic_vector(3 downto 0); -- This is current floor of the elevator
	enable: in std_logic; --Used to tell floor_control when to latch in data
	state: in std_logic_vector( 2 downto 0); -- state of state machine
	
	--This is the input from top level which essentialy comes from board switches
	--Bit '5' specifies which array to write to
	--Bit '4' specifies what direction to specify when writing to array
	--Bit '3' downto '0' are used to specify the floor
	input_array: in std_logic_vector(5 downto 0); 
	
    -- each bit represents a floor: 1 = up , 0 = no call
    floor_call_array_up: out std_logic_vector(num_floors-1 downto 0) := (others => '0');
	 
	  -- each bit represents a floor: 1 = down, 0 = no call
    floor_call_array_down: out std_logic_vector(num_floors-1 downto 0) := (others => '0');

    -- buttons pressed inside of elevator
    destination_array: out std_logic_vector(num_floors-1 downto 0):= (others => '0')
); end component;
	
------------------MASTER CONTROL----------------------------------------	
component master_control is 
generic (
		num_elevators: positive; --number of elevators
		number_floors: positive --number of floors
);
port(

    clk: in std_logic; -- 50 MHz clock
	 enable: in std_logic; --enable for this component to latch data
    states: in std_logic_vector(3*num_elevators-1 downto 0);--states of elevators
    input_array: in std_logic_vector(5 downto 0);--input from board 
	 input_choose_elevator: in std_logic_vector(2 downto 0);
    enable_floor_control: out std_logic_vector(num_elevators-1 downto 0) := (others => '0');--enables for floor control
    
	 -- USED TO TELL THE CURRENT FLOOR OF ELEVAT(S)
	 elvator_current_floor: in std_logic_vector(4*num_elevators-1 downto 0) := (others => '0');

	 --USED TO TELL DIRECTION OF ELEVATOR(S)------
	 direction_of_elevator: in std_logic_vector(num_elevators-1 downto 0) := (others => '0');

    --USED TO KEEP TRACK OF FLOOR CALLS THAT WANT TO GO UP
    floor_array_up: in std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0');

	 --USED TO KEEP TRACK OF FLOOR CALLS THAT WANT TO GO DOWN
    floor_array_down: in std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0')
	 
); end component;
	
	
----------Declarations and Signals ABOVE---------	
	
begin
	-- hook em up here

	--//////////// LCD /////////////////////--
Gen_seven_seg: for i in 1 to num_elevators generate

hexF : seven_seg port map (
		state => state_of_machine((3+(i-1)*3)-1 downto 3*(i-1)), --STATES OF ELEVATOR(S)
		floor => elvator_current_floor((4+(i-1)*4)-1 downto 4*(i-1)), --CURRENT FLOOR OF ELEVATOR(S)
		segs(6 downto 0) => Hex_Link((7+(i-1)*7)-1 downto 7*(i-1)) --SEVEN SEG DISPLAY(S)
);

end generate Gen_seven_seg;
	
	--//////// 3 SEC COUNTER ///////////////--
count1 : gen_counter generic map(
		wide => 28,
		max => 150000000 --3 SEC COUNTER
) 
port map(
		clK => CLOCK_50,
		data	=> (others => '0'),
		load	=> '0',
		enable => '1',
		reset	=> '0',
		count	=> open,
		term	=> sec_term
);

	
--//////////////STATE MACHINE/////////////--
Gen_state_mach: for i in 1 to num_elevators generate

state_mach : elevator_state 
generic map(
		num_floors => number_floors --NUMBER OF FLOOR(S)
) 
port map(
	 clk => sec_term,

    -- each bit represents a floor: 1 = up, 0 = no call
    floor_call_array_up => floor_array_up(((number_floors)+(i-1)*(number_floors))-1 downto (number_floors)*(i-1)),
	 
	  -- each bit represents a floor: 1 = down, 0 = no call
    floor_call_array_down => floor_array_down(((number_floors)+(i-1)*(number_floors))-1 downto (number_floors)*(i-1)),

    -- buttons pressed inside of elevator
    destination_array => des_array(((number_floors)+(i-1)*(number_floors))-1 downto (number_floors)*(i-1)),

	 --direction of elevators
    direction => direction_of_elevator(i-1),
    door => open, -- 1 for open, 0 for close
    current_floor =>elvator_current_floor((4+(i-1)*4)-1 downto 4*(i-1)), -- 16 floors max

	 state_out => state_of_machine((3+(i-1)*3)-1 downto 3*(i-1)) --State of elevators
);

end generate Gen_state_mach;

--//////////////////FLOOR CONTROL////////////--
Gen_floor_control: for i in 1 to num_elevators generate

f_control : floor_control 
generic map(
		num_floors =>number_floors --number of floors
) 
port map(
   clk => sec_term, -- This is 3 second clock
	input_clock => CLOCK_50, --This is 50 Mhz clock
	direction => direction_of_elevator(i-1), -- This is direction of elevator
	current_floor => elvator_current_floor((4+(i-1)*4)-1 downto 4*(i-1)), -- This is current floor of the elevator
	enable => floor_control_enable(i-1), --Used to tell floor_control when to latch in data
	
	--This is the input from top level which essentialy comes from board switches
	--Bit '5' specifies which array to write to
	--Bit '4' specifies what direction to specify when writing to array
	--Bit '3' downto '0' are used to specify the floor
	input_array => SW(5 downto 0),
	
   -- each bit represents a floor: 1 = up, 0 = no call
    floor_call_array_up => floor_array_up(((number_floors)+(i-1)*(number_floors))-1 downto (number_floors)*(i-1)),
	 
	  -- each bit represents a floor: 1 = down, 0 = no call
    floor_call_array_down => floor_array_down(((number_floors)+(i-1)*(number_floors))-1 downto (number_floors)*(i-1)),

	 --state of state machine
	 state => state_of_machine((3+(i-1)*3)-1 downto 3*(i-1)),
	 
    -- buttons pressed inside of elevator
    destination_array => des_array(((number_floors)+(i-1)*(number_floors))-1 downto (number_floors)*(i-1))
);

end generate Gen_floor_control;

--/////////////////////MASTER CONTROL////////////////////
M_control : master_control 
generic map(
		num_elevators => num_elevators, -- NUMBER OF ELEVATORS (1 TO 6)
		number_floors => number_floors -- NUMBER OF FLOORS (1 TO 16)
)
port map(

    clk => CLOCK_50, -- 50 Mhz clock
	 enable => (not KEY), --enable which is button on the DE1-SOC board
    states => state_of_machine(3*num_elevators-1 downto 0), -- states of elevator(s)
    input_array=> SW(5 downto 0), -- switch input which represent the input array
	 input_choose_elevator => SW(8 downto 6), --used to tell whitin what elevator the destination call came from
    enable_floor_control => floor_control_enable(num_elevators-1 downto 0), --Used to tell floor_control when to latch in data
    
    --USED TO TELL THE CURRENT FLOOR OF ELEVAT(S)
	 elvator_current_floor => elvator_current_floor(4*num_elevators-1 downto 0),
	 
	 --USED TO TELL DIRECTION OF ELEVATOR(S)------
	 direction_of_elevator => direction_of_elevator(num_elevators-1 downto 0),

	 --USED TO KEEP TRACK OF FLOOR CALLS THAT WANT TO GO UP
    floor_array_up => floor_array_up((number_floors)*num_elevators-1 downto 0),

	 --USED TO KEEP TRACK OF FLOOR CALLS THAT WANT TO GO DOWN
    floor_array_down => floor_array_down((number_floors)*num_elevators-1 downto 0)
	 
);
end;