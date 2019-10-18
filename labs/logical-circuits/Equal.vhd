-- This program check that two value were equals or not
Entity Equal is
	port(a0, a1, a2, a3, b0, b1, b2, b3: in bit; eq: out Bit);
END Equal;

Architecture BE of Equal is
	Begin
	eq <= 
		(a0 xnor b0) AND 
		(a1 xnor b1) AND 
		(a2 xnor b2) AND 
		(a3 xnor b3);
	End BE;
