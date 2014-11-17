% 4.9. scramble (S, N):
% Checks whether in N sorting operations list S can be fully sorted in ascending order
% Sorting operation: S is split into three segments, middle segment may be moved to the start or to the end of the list.
% E.g. list [1,2,  3,4,   5] can be changed to [3,4,  1,2,  5] in one operation
%     E.g.: scramble ([3,4,  1,2,  5], 1).
%     true.

% scramble([3, 4, 1, 2, 5], 1). => True
% scramble([3, 7, 4, 1, 2, 5], 1). => False
% scramble([4, 5, 1, 2, 6, 3], 1). => False
% scramble([4, 5, 1, 2, 6, 3], 2). => True

% Checks whether list elements are sorted in ascending order
sorted_ascending_order([]).
sorted_ascending_order([_]).
sorted_ascending_order([E1 | [E2 | T]]) :-
    E1 =< E2,
    sorted_ascending_order([E2 | T]).

% Moves middle segment to the left and joins segments
move_to_left(Left_segment, Middle_segment, Right_segment, Joined) :-
    append(Middle_segment, Left_segment, S_left_part),
    append(S_left_part, Right_segment, Joined).

% Moves middle segment to hte right and joins segments
move_to_right(Left_segment, Middle_segment, Right_segment, Joined) :-
    append(Left_segment, Right_segment, S_left_part),
    append(S_left_part, Middle_segment, Joined).

% Number generator from `From` to `To`
between(From, To, From) :- From =< To.
between(From, To, Now) :-
    From_new is From + 1,
    From =< To,
    between(From_new, To, Now).

% Takes `Length` elements from list S
take(S, 0, [], S).
take([H | T], Length, [H | Taken], Left) :-
    Length > 0,
    Length2 is Length - 1,
    take(T, Length2, Taken, Left).

% Split list generator, where each segment is of length 0..Length
split_to_three(S, S1, S2, S3) :-
    length(S, Length),
    between(0, Length, Length1),
    between(0, Length, Length2),
    between(0, Length, Length3),
    Length_test is Length1 + Length2 + Length3,
    Length = Length_test, % Ensure all elements from the list get used
    take(S, Length1, S1, S_2_ir_3),
    take(S_2_ir_3, Length2, S2, S3).

% Checks whether after N scramble steps a sorted list can be reached
scramble(S, 0) :-
    sorted_ascending_order(S).
scramble(S, N) :-
    N > 0,
    split_to_three(S, S1, S2, S3),
    move_to_left(S1, S2, S3, Moved),
    N_minus_1 is N - 1,
    scramble(Moved, N_minus_1).
scramble(S, N) :-
    N > 0,
    split_to_three(S, S1, S2, S3),
    move_to_right(S1, S2, S3, Moved),
    N_minus_1 is N - 1,
    scramble(Moved, N_minus_1).
