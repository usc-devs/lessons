-- is 2 params same toghether? --

entity isSame is 
    port(a, b: in bit_vector(3 downto 0); eq: out bit);
    end;

Architecture BE of isSame is 
    begin

    -- 1 --
    with a=b select
    eq <= '1' when true,
          '0' when others;


    -- 2 --
    with a xnor b select
    eq <= '1' when "1111",
          '0' when others;

    end;