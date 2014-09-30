% 6. c) Dalybos liekana, naudojant +,-

% Užklausų pvz:
% liekana(-20, -15, Liekana). => -5
% liekana(-5, -15, Liekana). => -5
% liekana(5, -15, Liekana). => -10
% liekana(20, -15, Liekana). => -10
% liekana(-20, 15, Liekana). => 10
% liekana(-5, 15, Liekana). => 10
% liekana(5, 15, Liekana). => 5
% liekana(20, 15, Liekana). => 5

% Aritmetika
sudėti(X, Y, Z) :- Z is X+Y.
atimti(X, Y, Z) :- Z is X-Y.

% Liekana, kai daliklis teigiamas
% 0 <= Skaičius < Daliklis  =>  Rezultatas rastas
liekana(Skaičius, Daliklis, Liekana) :-
    >(Daliklis, 0),
    >=(Skaičius, 0),
    <(Skaičius, Daliklis),
    Liekana is Skaičius.
% Skaičius >= Daliklis  =>  atimti daliklį iš skaičiaus, tęsti paiešką
liekana(Skaičius, Daliklis, Liekana) :-
    >(Daliklis, 0),
    >=(Skaičius, Daliklis),
    atimti(Skaičius, Daliklis, Skaičius2),
    liekana(Skaičius2, Daliklis, Liekana).
% Skaičius < 0  =>  pridėti daliklį prie skaičiaus, tęsti paiešką
liekana(Skaičius, Daliklis, Liekana) :-
    >(Daliklis, 0),
    <(Skaičius, 0),
    sudėti(Skaičius, Daliklis, Skaičius2),
    liekana(Skaičius2, Daliklis, Liekana).

% Liekana, kai daliklis neigiamas
% Daliklis < Skaičius =< 0  =>  rezultatas rastas
liekana(Skaičius, Daliklis, Liekana) :-
    <(Daliklis, 0),
    =<(Skaičius, 0),
    >(Skaičius, Daliklis),
    Liekana is Skaičius.
% Skaičius =< Daliklis  =>  atimti daliklį iš skaičiaus, tęsti paiešką
liekana(Skaičius, Daliklis, Liekana) :-
    <(Daliklis, 0),
    =<(Skaičius, Daliklis),
    atimti(Skaičius, Daliklis, Skaičius2),
    liekana(Skaičius2, Daliklis, Liekana).
% Skaičius > 0, pridėti daliklį prie skaičiaus, tęsti paiešką
liekana(Skaičius, Daliklis, Liekana) :-
    <(Daliklis, 0),
    >(Skaičius, 0),
    sudėti(Skaičius, Daliklis, Skaičius2),
    liekana(Skaičius2, Daliklis, Liekana).
