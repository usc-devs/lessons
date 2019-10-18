-- This program check that two value were equals or not
-- with arrays(vector)
Entity Equal2 is
	port(a, b: in  bit_vector(3 downto 0);
		 eq:   out Bit);
END Equal2;

Architecture BE of Equal2 is
	Begin
	eq <= 
	(a(0) xnor b(0)) AND 
	(a(1) xnor b(1)) AND 
	(a(2) xnor b(2)) AND 
	(a(3) xnor b(3));
	End BE;
