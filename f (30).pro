% Створити предикат, який буде знаходити останню позицію
% входження символу в рядок

first_pos(S, I, _, A, P) :- string_length(S, L), L == I, number(A), A = P, !.
first_pos(S, I, _, _, _) :- string_length(S, L), L == I, fail, !.
first_pos(S, I, C, _, P) :- sub_string(S, I, 1, _, C_), C_ == C, I1 is I + 1, first_pos(S, I1, C, I, P), !.
first_pos(S, I, C, A, P) :- sub_string(S, I, 1, _, C_), not(C_ == C), I1 is I + 1, first_pos(S, I1, C, A, P).

solve(S, C, I) :- first_pos(S, 0, C, _, I).

% solve("aabcab", "a", X). -> X = 4
% solve("aabcab", "c", X). -> X = 3
% solve("aabcab", "d", X). -> false