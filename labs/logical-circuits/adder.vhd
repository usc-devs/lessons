Entity Adder is
	Port(a, b: inout integer Range 0 to 7;
		 c :   out   integer Range 0 to 15);
End Adder;

Architecture BE of Adder is
 	Begin
		c <= a+b;
	End BE;