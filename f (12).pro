% Засько Б., Б16_д/122А
% Лаб. 3

% Створити предикат, що знаходить в початковому рядку слово, в
% якому найбільша кількість латинських літер

check_s(_, L, L, _, _) :- !.
check_s(S, L, L, [S]) :- !.
check_s(S, L, I, R) :- 
    sub_string(S, I, 1, _, Sub), not(is_alpha(Sub)),
    I1 is I+1, L_I is L-I1,
    sub_string(S, 0, I, _, R1), sub_string(S, I1, L_I, _, S_),
    string_length(S_, LS),
    check_s(S_, LS, 0, R2),
    append([R1], R2, R), !.
check_s(S, L, I, R) :- 
    sub_string(S, I, 1, _, Sub), is_alpha(Sub), 
    I1 is I+1, 
    check_s(S, L, I1, R).

find_longest([], _, E, E) :- !.
find_longest([H|T], MLen, _, Longest) :- string_length(H, Len), Len >  MLen, find_longest(T, Len,  H, Longest), !.
find_longest([H|T], MLen, E, Longest) :- string_length(H, Len), Len =< MLen, find_longest(T, MLen, E, Longest).

solve(S, R) :- string_length(S, Len), check_s(S, Len, 0, L), find_longest(L, 0, _, R).

% solve("apple.plot1professional)portable", R). -> R = proffesional
% solve("ab.pol1ye", R). -> R = pol