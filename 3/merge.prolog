% 3.7. merge (S1,S2 ,R):
% S1 and S2 are lists ordered in ascending order
% R- is a merged list of S1 and S2, and R is also ordered in ascending order
%     E.g. query: merge ([1, 4,11], [2,5,7], R).
%     R = [1,2,4,5,7,11].

% merge([1, 4, 11], [2, 5, 7], R). => R=[1, 2, 4, 5, 7, 11]
% merge([], [2, 5, 7], R). => R=[2, 5, 7].
% merge([1, 4, 11, 12], [1], R). => R=[1, 1, 4, 11, 12]

merge([], [], []).
merge([E1 | T1], [], [E1 | R]) :- merge(T1, [], R).
merge([], [E2 | T2], [E2 | R]) :- merge([], T2, R).
merge([E1 | T1], [E2 | T2], [E1 | R]) :-
    E1 < E2,
    merge(T1, [E2 | T2], R).
merge([E1 | T1], [E2 | T2], [E2 | R]) :-
    E1 >= E2,
    merge([E1 | T1], T2, R).
