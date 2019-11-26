Entity lrs is
	Port(
		r, s: in bit;
		q: inout bit
	);
End lrs;

Architecture BE of lrs is
	 Begin
        process(r, s, q)
        begin
            if r = '0' then 
                q <= '0';
            elsif s = '0' then
                q <= '1';
                else
                    q <= q
			end if ;
		end process
	End BE;