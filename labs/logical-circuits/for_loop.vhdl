-- implement an Adder with for --

entity for_loop is port(
    a, b: in bit_vector(7 downto 0);
    cin: in bit;
    cout: out bit;
    s: out bit_vector(7 downto 0)
    );
end;

Architecture BE of for_loop is 
    signal c: bit_vector(8 downto 0);
    begin
        cout <= c(8);
        c(0) <= cin;

        GE: for i in 0 to 7 generate
            s(i) <= a(i) xor b(i) xor c(i);
            c(i+1) <= (a(i) and b(i)) or
                    (a(i) and c(i)) or
                    (b(i) and c(i));
        end generate;
    end;