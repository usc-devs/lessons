-- When/case conditional sample --

entity Else is 
    port(a, b, c, d: in bit_vector(3 downto 0); s: in bit_vector(1 downto 0); y: out bit_vector(3 downto 0));
    end;

Architecture BE of Else is 
    begin

    y <= a when s="00"
    b when s="01"
    c when s="10"
    d;

    end;