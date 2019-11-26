-- simple two counters with clock puls.
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity cntr is
	Port(
		clk: in std_logic;
		ucount, dcount: out unsigned (3 downto 0)
	);
End cntr;

Architecture BE of cntr is
	 Begin
        process(r, s, q)
        variable ucnt, dcnt: unsigned (3 downto 0)

        begin

            if (clk'event and clk = '1') then 
                ucnt := ucnt+1;
                dcnt := ucnt-1;
            end if ;

            ucount <= ucnt;
            dcount <= dcnt;
            
		end process
	End BE;