-- counter on the flow!
-- plus-plus until 15 then minus-minus till 0 
-- and repeat
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity cntr2 is
	Port(
		clk: in std_logic;
		count: out unsigned (3 downto 0)
	);
End cntr2;

Architecture BE of cntr2 is
	 Begin
        process(r, s, q)
        variable isUp: bit;
        variable cnt: unsigned(3 downto 0);

        begin

            if cnt = 0 then
                isUp := '1'
            elsif cnt = 15 then
                isUp := '0'                
            end if ;

            if (clk'event and clk = '1') then 
                if isUp = '1' then
                    cnt := cnt + 1
                else
                    cnt := cnt -1
                end if ;
            end if ;

            count <= cnt;
            
		end process
	End BE;