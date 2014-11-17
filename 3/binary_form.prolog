% 2.8. binary_form(List, Number):
% Number is a decimal form of a binary number in List.
%     Pvz. goal: binary_form ([1,0,0,1],Number).
%     Number =9.

% binary_form([1, 0, 0, 1], Number). => Number=9
% binary_form([0, 0, 0], Number). => Number=0
% binary_form([1, 1, 1, 1, 1, 1, 1, 1]). => Number=255

binary_form(List, Number) :- to_number(List, 0, Number).

% recursively sum each bit
to_number([], Sum, Sum).
to_number([Current | Rest], Sum, Number) :-
    New_sum is Sum * 2 + Current,
    to_number(Rest, New_sum, Number).
