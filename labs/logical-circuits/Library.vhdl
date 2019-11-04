-- making `three state NOT gate` with add and use library --

library ieee;
use ieee.std_logic1164.All;


entity buff is 
    port(a, b, c: in std_logic; y: out std_logic);
    end;

Architecture BE of buff is 
    signal x:std_logic;

    begin

    x <= a and b

    with c select 
    y <= x when '0'
        'Z' when others;

    end;