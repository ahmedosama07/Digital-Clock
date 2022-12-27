library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DigitalClock is
	port(sec		:	out	integer	 	:=	 0;
		  min		:	out	integer	 	:=	 0;
		  hrs		:	out	integer	 	:=	 0;
		  inSec	:	in		integer	 	:=	 0;
		  inMin	:	in		integer	 	:=	 0;
		  inHrs	:	in		integer	 	:=	 0;
		  clk		:	in		std_logic 	:=	'0';
		  set		:	buffer std_logic	:=	'0');
end DigitalClock;

architecture Behavioural of DigitalClock is
signal counterSec : integer := 0;
signal counterMin : integer := 0;
signal counterHrs : integer := 0;
begin
	process(clk, set)
	begin
		if (set = '1') then
			counterSec <= inSec;
			counterMin <= inMin;
			counterHrs <= inHrs;
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