-- Half-Adder
Entity HA is
	Port(a, b, cin: in Bit; s, cout: out Bit);
End HA;

Architecture dataflow of HA is
 	Begin
		s <= a xor b xor cin;
		cout <= (a and b) or (cin and a) or (cin and b);
	End dataflow;