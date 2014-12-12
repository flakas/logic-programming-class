% 13."Place signs".
% To a list of numbers add arithmetic operation signs (-, +) in such a way,
% that the end expression would result in a given number.
% E.g.: 12-3+45-67+8+9 = 4

% place_signs(Numbers, Target, Operations)

% place_signs([12, 3, 45, 67, 8, 9], 4, Operations). => Operations = [12, -3, 45, -67, 8, 9].
% place_signs([13, 5, 7], 40, Operations). => false
% place_signs([13, 5, 7], 11, Operations), pretty_print(Operations, 11). => 13 + 5 - 7 = 11

place_signs([H | T], Target, [H | Operations]) :-
    place(T, H, Target, Operations).

% place(Numbers_left, Current_sum, Target_number, Steps)
place([], Target, Target, []).
place([H | T], Sum, Target, [H | Operations]) :-
    S is H + Sum,
    place(T, S, Target, Operations).
place([H | T], Sum, Target, [H_minus | Operations]) :-
    H_minus is -1 * H,
    S is Sum + H_minus,
    place(T, S, Target, Operations).


% pretty_print(Operations, Target)
pretty_print([H|T], Target) :- write(H), pretty_print_others(T, Target).
pretty_print_others([], Target) :- writef(' = %w', [Target]).
pretty_print_others([H|T], Target) :- H >= 0, writef(' + %w', [H]), pretty_print_others(T, Target).
pretty_print_others([H|T], Target) :- H < 0, H_minus is -1 * H, writef(' - %w', [H_minus]), pretty_print_others(T, Target).
