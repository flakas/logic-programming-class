% 6. c) Compute division remainder only using + and - operations

% Query samples:
% remainder(-20, -15, Remainder). => -5
% remainder(-5, -15, Remainder). => -5
% remainder(5, -15, Remainder). => -10
% remainder(20, -15, Remainder). => -10
% remainder(-20, 15, Remainder). => 10
% remainder(-5, 15, Remainder). => 10
% remainder(5, 15, Remainder). => 5
% remainder(20, 15, Remainder). => 5

% Arithmetic
add(X, Y, Z) :- Z is X+Y.
subtract(X, Y, Z) :- Z is X-Y.

% Remainder, when divisor is positive
% 0 <= Number < Divisor  =>  Result is found
remainder(Number, Divisor, Remainder) :-
    >(Divisor, 0),
    >=(Number, 0),
    <(Number, Divisor),
    Remainder is Number.
% Number >= Divisor  =>  subtract divisor from number, continue searching
remainder(Number, Divisor, Remainder) :-
    >(Divisor, 0),
    >=(Number, Divisor),
    subtract(Number, Divisor, Number2),
    remainder(Number2, Divisor, Remainder).
% Number < 0  =>  add divisor to number, continue searching
remainder(Number, Divisor, Remainder) :-
    >(Divisor, 0),
    <(Number, 0),
    add(Number, Divisor, Number2),
    remainder(Number2, Divisor, Remainder).

% Remainder, when divisor is negative
% Divisor < Number =< 0  =>  result is found
remainder(Number, Divisor, Remainder) :-
    <(Divisor, 0),
    =<(Number, 0),
    >(Number, Divisor),
    Remainder is Number.
% Number =< Divisor  =>  subtract divisor from number, continue searching
remainder(Number, Divisor, Remainder) :-
    <(Divisor, 0),
    =<(Number, Divisor),
    subtract(Number, Divisor, Number2),
    remainder(Number2, Divisor, Remainder).
% Number > 0, add divisor to number, continue searching
remainder(Number, Divisor, Remainder) :-
    <(Divisor, 0),
    >(Number, 0),
    add(Number, Divisor, Number2),
    remainder(Number2, Divisor, Remainder).
