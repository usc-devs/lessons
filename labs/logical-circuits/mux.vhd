-- multiplexer with variables
Entity mux is
	Port(
		a0, a1, a2, a3,
		b0, b1, b2, b3,
		c0, c1, c2, c3,
		d0, d1, d2, d3,
		s0, s1: in bit;
		y0, y1, y2, y3: out bit
	);
End mux;

Architecture BE of mux is

	Signal z0, z1, z2, z3: bit;
	
 	Begin
		z0 <= not s0 and not s1;
		z1 <= s0 and not s1;
		z2 <= not s0 and s1;
		z3 <= s0 and s1;
		
		y0 <= 
			(a0 and z0) or 
			(b0 and z1) or 
			(c0 and z2) or 
			(d0 and z3);
		
		y1 <= 
			(a1 and z0) or 
			(b1 and z1) or 
			(c1 and z2) or 
			(d1 and z3);
		
		y2 <= 
			(a2 and z0) or 
			(b2 and z1) or 
			(c2 and z2) or 
			(d2 and z3);
		
		y3 <= 
			(a3 and z0) or 
			(b3 and z1) or 
			(c3 and z2) or 
			(d3 and z3);
	End BE;