Entity ffd is
	Port(
		clk, d, cl, e: in bit;
		q: out bit
	);
End ffd;

Architecture BE of ffd is
	 Begin
        process(r, d)

        begin
            if cl = '0' then q <= '0';
            elsif e = '1' then
                if (clk'event and clk = '1') then 
                    q <= d
                end if ;         
            end if ;
		end process
	End BE;