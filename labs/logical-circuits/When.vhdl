-- When/case conditional sample --

entity When is 
    port(a, b, c, d: in bit_vector(3 downto 0); s: in bit_vector(1 downto 0); y: out bit_vector(3 downto 0));
    end;

Architecture BE of When is 
    begin

    with c select 
    y <= a when "00"
    b when "01"
    c when "10"
    d when others;

    end;