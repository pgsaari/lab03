--This will simulate an elevator(s).

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


entity elevator_top is Port(
	
	 --//////////////////////// CLOCK ///////////////////////////////////
   CLOCK_50	:in		std_logic;						-- 50 MHz
	
	--////////////////////////	7-SEG Dispaly	///////////////////////////
	HEX0		:out	std_logic_vector( 6 downto 0);	-- DISPLAY STATUS OF ELVATOR NUMBER 0
	
	-- ///////////////////////Push Buttons(Reset-Write)//////////////////////
	KEY		:in		std_logic;	--Pushbutton TO LATCH IN DATA
	
	--////////////////////////	DPDT Switch		////////////////////////
	--0-3: SPECIFY FLOOR, 4: DIRECTION (UP(1), DOWN(0)), 5: FLOOR CALL(0) OR DESTINATION CALL(1)
	SW			:in		std_logic_vector(4 downto 0) -- 
	
); end entity elevator_top;

architecture struct of elevator_top is
	
---------TIE ELEVATOR state to hex display variable----------
SIGNAL Hex_Link : std_logic_vector(4 DOWNTO 0) := "00000";

---USED to link 1 sec counter tem and clock of devices to simulate 1 sec counter-----
signal sec_term	 :std_logic := '0';

--USED TO SEND STATE OF MACHINE TO HEX FILE----------
signal state_of_machine: std_logic_vector(2 downto 0) := (others => '0');

---USED TO SEND CURRENT FLOOR OF ELEVATOR TO HEX FILE
signal elvator_current_floor: std_logic_vector(3 downto 0) := (others => '0');

----USED TO SEND DIRECTION FROM STATE_MACHINE TO FLOOR_CONTROL------
signal direction_of_elevator: std_logic := '0';

---USED TO LINK DESTINATION ARRAY FROM FLOOR_CONTROL TO ELEVATOR_STATE
signal des_array: std_logic_vector(7 downto 0) := (others => '0');

---USED TO LINK FLOOR CALL ARRAY UP FROM FLOOR_CONTROL TO ELEVATOR_STATE
signal floor_array_up: std_logic_vector(7 downto 0) := (others => '0');

---USED TO LINK FLOOR CALL ARRAY DOWN FROM FLOOR_CONTROL TO ELEVATOR_STATE
signal floor_array_down: std_logic_vector(7 downto 0) := (others => '0');

	------ seven_seg_display--------- 
COMPONENT seven_seg is Port(
	state: in std_logic_vector(2 downto 0);
	floor: in std_logic_vector(3 downto 0);
	segs: out	std_logic_vector(6 downto 0)
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
component elevator_state is port(
	 clk: in std_logic;
    term1: in std_logic;

   -- each bit represents a floor: 0 = no call, 1 = up
    floor_call_array_up: in std_logic_vector(7 downto 0) := (others => '0');
	 
	 -- each bit represents a floor: 0 = no call, 1 = down
    floor_call_array_down: in std_logic_vector(7 downto 0) := (others => '0');

    -- buttons pressed inside of elevator
    destination_array: in std_logic_vector(7 downto 0);

    en1: out std_logic; -- timer to stay on a state
    direction: out std_logic;
    door: out std_logic; -- 1 for open, 0 for close
    current_floor: out std_logic_vector(3 downto 0) := (others => '0'); -- 8 floors max
    state_out: out std_logic_vector(2 downto 0)
);end component;
	
------ FLOOR CONTROL--------------------------
component floor_control is port(
   clk: in std_logic; -- This is clock
	direction: in std_logic; -- This is direction of elevator
	current_floor: in std_logic_vector(3 downto 0); -- This is current floor of the elevator
	enable: in std_logic; --Used to tell floor_control when to latch in data
	state: in std_logic_vector( 2 downto 0); -- state of state machine
	
	-- This is the input from top level which essentialy comes from board switches
	--Bit '5' specifies which array to write to
	--Bit '4' specifies what direction to specify when writing to array
	--Bit '3' downto '0' are used to specify the floor
	input_array: in std_logic_vector(4 downto 0); 
	
    -- each bit represents a floor: 1 = up , 0 = no call
    floor_call_array_up: out std_logic_vector(7 downto 0) := (others => '0');
	 
	  -- each bit represents a floor: 1 = down, 0 = no call
    floor_call_array_down: out std_logic_vector(7 downto 0) := (others => '0');

    -- buttons pressed inside of elevator
    destination_array: out std_logic_vector(7 downto 0):= (others => '0')
); end component;
	
----------Declarations and Signals ABOVE---------	
	
begin
	-- hook em up here

	--//////////// LCD /////////////////////--
hexF : seven_seg port map (
		state => state_of_machine,
		floor => elvator_current_floor,
		segs(6 downto 0) => HEX0
);
	
	--//////// 1 SEC COUNTER ///////////////--
count1 : gen_counter generic map(
		wide => 28,
		max => 50000000
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
state_mach : elevator_state port map(
	 clk => sec_term,
    term1 => '0',

    -- each bit represents a floor: 1 = up, 0 = no call
    floor_call_array_up => floor_array_up,
	 
	  -- each bit represents a floor: 1 = down, 0 = no call
    floor_call_array_down => floor_array_down,

    -- buttons pressed inside of elevator
    destination_array => des_array,

    en1 => open,-- timer to stay on a state
    direction => direction_of_elevator,
    door => open, -- 1 for open, 0 for close
    current_floor =>elvator_current_floor, -- 8 floors max

	 state_out => state_of_machine
);

--//////////////////FLOOR CONTROL////////////--
f_control : floor_control port map(
   clk => sec_term, -- This is clock
	direction => direction_of_elevator, -- This is direction of elevator
	current_floor => elvator_current_floor, -- This is current floor of the elevator
	enable => kEY, --Used to tell floor_control when to latch in data
	
	-- This is the input from top level which essentialy comes from board switches
	--Bit '5' specifies which array to write to
	--Bit '4' specifies what direction to specify when writing to array
	--Bit '3' downto '0' are used to specify the floor
	input_array => SW(4 downto 0),
	
   -- each bit represents a floor: 1 = up, 0 = no call
    floor_call_array_up => floor_array_up,
	 
	  -- each bit represents a floor: 1 = down, 0 = no call
    floor_call_array_down => floor_array_down,

	 --state of state machine
	 state => state_of_machine,
	 
    -- buttons pressed inside of elevator
    destination_array => des_array
);

end;