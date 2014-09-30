% X = 4, => 1.4
% Y = 8, => 2.8
% Z = 7, => 3.7
% W = 9. => 4.9

var(UNR,X,Y,Z,W):-
    X is UNR mod  7  + 1,
    Y is UNR mod  8  + 1,
    Z is UNR mod 11  + 1,
    W is UNR mod  9  + 1.
