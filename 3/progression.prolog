% 1.4. progression(S):
% Checks whether numbers in list S form an arithmetic progression
% E.g. query: progression([1,4,7,10]).
% true.

% List elements form an arithmetic progression if difference between two neighboring ones is constant for all pairs

% progression([1, 4, 7, 10]). => true
% progression([1, 3, 5, 6]). => false
% progression([1, 3]). => true

progression([E1 | [E2 | T]]) :-
    Difference is E2 - E1,
    check_progressionession([E2 | T], Difference).

check_progressionession([], _).
check_progressionession([_], _).
check_progressionession([E1 | [E2 | T]], Difference) :-
    Current_difference is E2 - E1,
    Difference == Current_difference,
    check_progressionession([E2 | T], Difference).
