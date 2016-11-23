-- oUTPUT TO MAP OUT THE SEVEN SEGMENTS DISPLAY CORRECTLY --

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity seven_seg is
port(
	state: in std_logic_vector(2 downto 0);
	floor: in std_logic_vector(3 downto 0);

	segs: out	std_logic_vector(6 downto 0)
	);
end entity;
	
architecture rtl of seven_seg is
	begin
	seven_seg: process(state, floor)
		begin
		
		if(state = "000") then -- idle state
			-- horizontal line
			segs(0) <= '1';
			segs(1) <= '1';
			segs(2) <= '1';
			segs(3) <= '1';
			segs(4) <= '1';
			segs(5) <= '1';
			segs(6) <= '0';	
		elsif(state = "011") then -- loading state
			-- display an 'L'
			segs(0) <= '1';
			segs(1) <= '1';
			segs(2) <= '1';
			segs(3) <= '0';
			segs(4) <= '0';
			segs(5) <= '0';
			segs(6) <= '1';							
		elsif(state = "001" OR state ="010") then -- if state is going up or down
			-- display current floor
			case unsigned(floor) is
				when "0000" => -- 0
					segs(0) <= '0';
					segs(1) <= '0';
					segs(2) <= '0';
					segs(3) <= '0';
					segs(4) <= '0';
					segs(5) <= '0';
					segs(6) <= '1';
					
				when "0001" =>	-- 1			
					segs(0) <= '1';
					segs(1) <= '0';
					segs(2) <= '0';
					segs(3) <= '1';
					segs(4) <= '1';
					segs(5) <= '1';
					segs(6) <= '1';				
					
				when "0010" =>	-- 2			
					segs(0) <= '0';
					segs(1) <= '0';
					segs(2) <= '1';
					segs(3) <= '0';
					segs(4) <= '0';
					segs(5) <= '1';
					segs(6) <= '0';
			
				when "0011" => -- 3				
					segs(0) <= '0';
					segs(1) <= '0';
					segs(2) <= '0';
					segs(3) <= '0';
					segs(4) <= '1';
					segs(5) <= '1';
					segs(6) <= '0';
					
				when "0100" => -- 4
					segs(0) <= '1'; 
					segs(1) <= '0'; 
					segs(2) <= '0'; 
					segs(3) <= '1';
					segs(4) <= '1';
					segs(5) <= '0';
					segs(6) <= '0';

				when "0101" => -- 5
					segs(0) <= '0'; 
					segs(1) <= '1'; 
					segs(2) <= '0'; 
					segs(3) <= '0'; 
					segs(4) <= '1';
					segs(5) <= '0'; 
					segs(6) <= '0'; 
					
				when "0110" => -- 6
					segs(0) <= '0'; 
					segs(1) <= '1';
					segs(2) <= '0'; 
					segs(3) <= '0';
					segs(4) <= '0'; 
					segs(5) <= '0'; 
					segs(6) <= '0'; 
					
				when "0111" => -- 7
					segs(0) <= '0'; 
					segs(1) <= '0';
					segs(2) <= '0'; 
					segs(3) <= '1';
					segs(4) <= '1';
					segs(5) <= '1';
					segs(6) <= '1';
					
				when "1000" => -- 8
					segs(0) <= '0';
					segs(1) <= '0';
					segs(2) <= '0';
					segs(3) <= '0';
					segs(4) <= '0';
					segs(5) <= '0';
					segs(6) <= '0';
					
				when "1001" => -- 9
					segs(0) <= '0';
					segs(1) <= '0';
					segs(2) <= '0';
					segs(3) <= '1';
					segs(4) <= '1';
					segs(5) <= '0';
					segs(6) <= '0';

				when "1010" => -- 10 or 'A'
					segs(0) <= '0';
					segs(1) <= '0';
					segs(2) <= '0';
					segs(3) <= '1';
					segs(4) <= '0';
					segs(5) <= '0';
					segs(6) <= '0';

				when "1011" => -- 11 or 'b'
					segs(0) <= '1';
					segs(1) <= '1';
					segs(2) <= '0';
					segs(3) <= '0';
					segs(4) <= '0';
					segs(5) <= '0';
					segs(6) <= '0';

				when "1100" => -- 12 or 'c'
					segs(0) <= '1';
					segs(1) <= '1';
					segs(2) <= '1';
					segs(3) <= '0';
					segs(4) <= '0';
					segs(5) <= '1';
					segs(6) <= '0';

				when "1101" => -- 13 or 'd'
					segs(0) <= '1';
					segs(1) <= '0';
					segs(2) <= '0';
					segs(3) <= '0';
					segs(4) <= '0';
					segs(5) <= '1';
					segs(6) <= '0';

				when "1110" => -- 14 or 'E'
					segs(0) <= '0';
					segs(1) <= '1';
					segs(2) <= '1';
					segs(3) <= '0';
					segs(4) <= '0';
					segs(5) <= '0';
					segs(6) <= '0';	

				when "1111" => -- 15 or 'F'
					segs(0) <= '0';
					segs(1) <= '1';
					segs(2) <= '1';
					segs(3) <= '1';
					segs(4) <= '0';
					segs(5) <= '0';
					segs(6) <= '0';	

				when others => --others display nothing
					segs(0) <= '1';
					segs(1) <= '1';
					segs(2) <= '1';
					segs(3) <= '1';
					segs(4) <= '1';
					segs(5) <= '1';
					segs(6) <= '1';
			end case;

		else -- error
			-- display a three horizontal lines
			segs(0) <= '0';
			segs(1) <= '1';
			segs(2) <= '1';
			segs(3) <= '0';
			segs(4) <= '1';
			segs(5) <= '1';
			segs(6) <= '0';	
		end if;
	end process seven_seg;
end rtl;