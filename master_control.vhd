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
    input_array: in std_logic_vector(5 downto 0);--input from board which also goes to elevators
	 input_choose_elevator: in std_logic_vector(2 downto 0);--input from board used if destination is chosen to choose elevator
    enable_floor_control: out std_logic_vector(num_elevators-1 downto 0) := (others => '0');--enables for floor control
	 
	 ---CURRENT FLOOR OF ELEVATOR(s)
	 elvator_current_floor: in std_logic_vector(4*num_elevators-1 downto 0) := (others => '0');

----DIRECTION FROM ELEVATOR(S)------
	 direction_of_elevator: in std_logic_vector(num_elevators-1 downto 0) := (others => '0');
	 
---USED TO LINK FLOOR CALL ARRAY UP FROM FLOOR_CONTROL TO ELEVATOR_STATE
    floor_array_up: in std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0');

---USED TO LINK FLOOR CALL ARRAY DOWN FROM FLOOR_CONTROL TO ELEVATOR_STATE
    floor_array_down: in std_logic_vector((number_floors)*num_elevators-1 downto 0) := (others => '0')

); end entity;

architecture logic of master_control is
	
   signal i_enable_floor_control: std_logic_vector(num_elevators-1 downto 0) := (others => '0');--enables for floor control
	
	 
begin

input:process(clk) 
	variable check1 : std_logic := '0';
	variable check2 : std_logic := '0';
	variable check3 : std_logic := '0';
	variable check4 : std_logic := '0';
	variable check5 : std_logic := '0';
	variable individual_floor : std_logic_vector(number_floors-1 downto 0) := (others => '0');
	variable floor_call_dest: integer := 0; --floor of destination or floor call
begin
	if rising_edge(clk) Then
		if enable = '1' Then
			check1 := '1';
			check2 := '0';
			check3 := '0';
			check4 := '0';
			check5 := '0';
			floor_call_dest := to_integer(unsigned(input_array(3 downto 0))); --floor of destination or floor call
			-- first check if this call is a destination call
			if input_array(5) = '1' Then 
				i_enable_floor_control((to_integer(unsigned(input_choose_elevator)))) <= '1'; -- set the designated elevators floor control enable to '1' to latch in data
			else
				-- Check if there has already been a floor call to the current floor goin up or down
				-- Skip call if call already exist
				if check1 = '1' Then
				
					report "inside of check 1";
					if input_array(4) = '1' Then
						report "inside of input_array(4)= 1";
						for i in 1 to num_elevators+1 loop 
							if i < num_elevators +1 Then
								report "inside for loop, this is i: " & integer'image(i);
								report "inside for loop, this is where the floor call is: " & integer'image(floor_call_dest);
								individual_floor := floor_array_up(((number_floors)+(i-1)*(number_floors))-1 downto (number_floors)*(i-1));
								report "this is individual floor calls: " & integer'image(to_integer(unsigned(individual_floor)));
								if individual_floor(floor_call_dest) = '1' Then
									report "this is insided to set check1 back to zero";
									check1 := '0';
									exit;
								end if;
							else
								report "inside of check 2 = '1'";
								check2 := '1';
							end if;
						end loop;
						
					else
						for i in 1 to num_elevators+1 loop 
							if i < num_elevators +1 Then
								individual_floor := floor_array_down(((number_floors)+(i-1)*(number_floors))-1 downto (number_floors)*(i-1));
								if individual_floor(floor_call_dest) = '1' Then
									check1 := '0';
									exit;
								end if;
							else
								check2 := '1';
							end if;
						end loop;
					end if;
				end if;
				-- Check if there is an idle elevator for a floor call
				if check2 ='1' Then
					report "inside of check 2";
					for i in 1 to num_elevators+1 loop 
						if i < num_elevators +1 Then
							if (states((3+(i-1)*3)-1 downto 3*(i-1)) = "000") Then 
								i_enable_floor_control(i-1) <= '1'; -- set the designated elevators floor control enable to '1' to latch in data
								check2 := '0';
								exit;
							end if;
						else
							check3 := '1';
						end if;
					end loop;
				end if;
				--Check if elevator is going up and floor call is above current elevator floor, and floor call is to go up
				if check3 = '1' Then
				report "inside of check 3";
					for i in 1 to num_elevators+1 loop 
						if i < num_elevators +1 Then
							if unsigned(elvator_current_floor((4+(i-1)*4)-1 downto 4*(i-1))) <= unsigned(input_array(3 downto 0)) AND direction_of_elevator(i-1) = '1' AND input_array(4) = '1' Then
								i_enable_floor_control(i-1) <= '1';
								check3 := '0';
								exit;
							end if;
						else
							check4 := '1';
						end if;
					end loop;
				end if;
				-- check if elevator is going down and floor call is under current elevator floor, and floor call is to go down
				if check4 = '1' Then
				report "inside of check 4";
					for i in 1 to num_elevators+1 loop
						if i < num_elevators +1 Then
							if unsigned(elvator_current_floor((4+(i-1)*4)-1 downto 4*(i-1))) >= unsigned(input_array(3 downto 0)) AND direction_of_elevator(i-1) = '0' AND input_array(4) = '0' Then
								i_enable_floor_control(i-1) <= '1';
								check4 := '0';
								exit;
							end if;
						else
							check5 := '1';
						end if;
					end loop;
				end if;
				-- There is a floor call, no idle elevators and no current elevator going in direction of floor call, just dump floor call to 1 st elevator
				if check5 = '1' Then
				report "inside of check 5";
					i_enable_floor_control(0) <= '1';
					check5 := '0';	
				end if;
			end if;
			-- Check if there has already been a floor call to the current floor goin up
			-- Skip call if call already exist
			-- Check if there has already been a floor call to the current floor goin up
			-- Skip call if call already exist
			--if found_elevator= '1' AND input_array(5) = '0' Then 
			--	if input_array(4) = '1' Then
			--		for i in 1 to num_elevators loop 
			--			double_floor_calls <= floor_array_up(((number_floors)+(i-1)*(number_floors))-1 downto (number_floors)*(i-1));
			--			if double_floor_calls(to_integer(unsigned(input_array(3 downto 0)))) = '1' Then
			--				found_elevator <= '0';
			--			end if;
			--		end loop;
			--	else
			--		for i in 1 to num_elevators loop 
			--			double_floor_calls <= floor_array_down(((number_floors)+(i-1)*(number_floors))-1 downto (number_floors)*(i-1));
			--			if double_floor_calls(to_integer(unsigned(input_array(3 downto 0)))) = '1' Then
			--				found_elevator <= '0';
			--			end if;
			--		end loop;
			--	end if;
		--	end if;
			-- Check if there is an idle elevator for a floor call
			
			
			--Check if elevator is going up and floor call is above current elevator floor, and floor call is to go up
			--if found_elevator = '1' AND input_array(5) = '0' Then 
			--	for i in 1 to num_elevators loop 
			--		if unsigned(elvator_current_floor((4+(i-1)*4)-1 downto 4*(i-1))) <= unsigned(input_array(3 downto 0)) AND direction_of_elevator(i-1) = '1' AND input_array(4) = '1' Then
			--			i_enable_floor_control(i-1) <= '1';
			--			found_elevator <= '0';
			--		end if;
			--	end loop;
			--end if;
			-- check if elevator is going down and floor call is under current elevator floor, and floor call is to go down
			--if found_elevator = '1' AND input_array(5) = '0' Then 
			--	for i in 1 to num_elevators loop 
			--		if unsigned(elvator_current_floor((4+(i-1)*4)-1 downto 4*(i-1))) >= unsigned(input_array(3 downto 0)) AND direction_of_elevator(i-1) = '0' AND input_array(4) = '0' Then
			--			i_enable_floor_control(i-1) <= '1';
			--			found_elevator <= '0';
			--		end if;
			--	end loop;
			--end if;
			-- There is a floor call, no idle elevators and no current elevator going in direction of floor call, just dump floor call to 1 st elevator
			--if input_array(5) = '0' Then 
			--	i_enable_floor_control(1) <= '1';
			--	found_elevator <= '0';	
			--end if;
		else
			for i in 0 to (i_enable_floor_control'Length-1) loop
				i_enable_floor_control(i) <= '0'; --Used to set enables back to zero after input array has been latched by floor_control
			end loop;
		end if;
	end if;
end process;

enable_floor_control <= i_enable_floor_control;
end architecture logic;