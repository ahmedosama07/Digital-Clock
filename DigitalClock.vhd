library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DigitalClock is
	port(sec		:	out	integer range 0 to 60	 	:=	 0;
		  min		:	out	integer range 0 to 60	 	:=	 0;
		  hrs		:	out	integer range 0 to 24	 	:=	 0;
		  inSec	:	in		integer range 0 to 60	 	:=	 0;
		  inMin	:	in		integer range 0 to 60	 	:=	 0;
		  inHrs	:	in		integer range 0 to 24	 	:=	 0;
		  clk		:	in		std_logic 	:=	'0';
		  set		:	buffer std_logic	:=	'0');
end DigitalClock;

architecture Behavioural of DigitalClock is
signal counterSec : integer range 0 to 60 := 0;
signal counterMin : integer range 0 to 60 := 0;
signal counterHrs : integer range 0 to 24 := 0;
begin
	process(clk, set)
	variable innercountSec : integer range 0 to 60 := 0;
	variable innercountMin : integer range 0 to 61 := 0;
	variable innercountHrs : integer range 0 to 25 := 0;
	begin
		if (set = '1') then
			innercountSec := inSec;
			innercountMin := inMin;
			innercountHrs := inHrs;
			if inSec >= 60 then
				innercountSec := inSec - 60;
				innercountMin := inMin + 1;
			end if;
			if innercountMin >= 60 then
				innercountMin := innercountMin - 60;
				innercountHrs := inHrs + 1;
			end if;
			if innercountHrs >= 24 then
				innercountHrs := innercountHrs - 24;
			end if;
			counterSec <= innercountSec;
			counterMin <= innercountMin;
			counterHrs <= innercountHrs;
			set <= '0';
		elsif clk 'event and clk = '1' then
			counterSec <= counterSec + 1;
			if counterSec >= 59 then
				counterMin <= counterMin + 1;
				counterSec <= 0;
				if counterMin >= 59 then
					counterHrs <= counterHrs + 1;
					counterMin <= 0;
					if counterHrs >= 23 then
						counterHrs <= 0;
						counterMin <= 0;
						counterSec <= 0;
					end if;
				end if;
			end if;
		end if;
	end process;
	sec <= counterSec;
	min <= counterMin;
	hrs <= counterHrs;
end Behavioural;