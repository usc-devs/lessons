-- multiplexer with process and if
Entity mux is
	Port(
		E: in bit;
		a, b, c, d: in bit_vector(3 downto 0);
		s: in bit_vector(1 downto 0);
		y: out bit_vector(3 downto 0)
	);
End mux;

Architecture BE of mux is
	 Begin
		process(E, a, b, c, d, s)
			if E = '1' then
				if s = "00" then
					y <= a;
				end if ;
				if s = "01" then
					y <= b;
				end if ;
				if s = "10" then
					y <= c;
				end if ;
				if s = "11" then
					y <= d;
				end if ;
			end if ;
		end process
	End BE;