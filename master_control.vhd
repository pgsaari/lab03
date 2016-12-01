library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity master_control is 
generic (
		num_elevators: positive;
		number_floors: positive
);
port(

    clk: in std_logic; -- 50 MHz clock
	 enable: in std_logic; --enable for this component to latch data
    states: in std_logic_vector(3*num_elevators-1 downto 0);--states of elevators
    input_array: in std_logic_vector(5 downto 0);--input from board 
    enable_floor_control: out std_logic_vector(num_elevators-1 downto 0) := (others => '0');--enables for floor control
	 
	 --USED TO SEND STATE OF MACHINE TO HEX FILE----------
	 state_of_machine: in std_logic_vector(3*num_elevators-1 downto 0) := (others => '0');
    
	 ---USED TO SEND CURRENT FLOOR OF ELEVATOR TO HEX FILE
	 elvator_current_floor: in std_logic_vector(4*num_elevators-1 downto 0) := (others => '0');

----USED TO SEND DIRECTION FROM STATE_MACHINE TO FLOOR_CONTROL------
	 direction_of_elevator: in std_logic_vector(num_elevators-1 downto 0) := (others => '0');

---USED TO LINK DESTINATION ARRAY FROM FLOOR_CONTROL TO ELEVATOR_STATE
    des_array: in std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0');

---USED TO LINK FLOOR CALL ARRAY UP FROM FLOOR_CONTROL TO ELEVATOR_STATE
    floor_array_up: in std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0');

---USED TO LINK FLOOR CALL ARRAY DOWN FROM FLOOR_CONTROL TO ELEVATOR_STATE
    floor_array_down: in std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0')
); end entity;

architecture logic of master_control is
	
	signal which_array : std_logic:= '0'; -- '0' is write to i_floor_call_array & '1' is write to i_destination_array
	signal which_direction : std_logic:= '0'; -- '0' is direction down & '1' is direction up
	signal which_floor : unsigned(3 downto 0):= (others => '0'); -- This specifies the floor to write (swtich 0 = floor 0, switch 1 = floor 1 etc.)
   signal i_enable_floor_control: std_logic_vector(num_elevators-1 downto 0) := (others => '0');--enables for floor control
	 
begin

input:process(clk,enable) begin
	if rising_edge(clk) Then
		if enable = '1' Then
			for i in 1 to num_elevators loop 
				if (state_of_machine((3+(i-1)*3)-1 downto 3*(i-1)) = "000") Then --Check if there is an idle elevator
					i_enable_floor_control(i-1) <= '1'; -- set the designated elevators floor control enable to '1' to latch in data
					exit;
				end if;
			end loop;
		else
			for i in 0 to (i_enable_floor_control'Length-1) loop
				i_enable_floor_control(i) <= '0'; --Used to set enables back to zero after input array has been latched by floor_control
			end loop;
		end if;
	end if;
end process;

enable_floor_control <= i_enable_floor_control;
end architecture logic;