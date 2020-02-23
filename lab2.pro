% Засько Б., Б16_д/122А
% Лаб. 2

% Дано ціле число N > 0. Знайти квадрат і куб цього числа

power(N, 1, N) :- !.
power(N, M, R) :- M1 is M - 1, power(N, M1, X), R is N * X.
square(N, R) :- power(N, 2, R).
cube(N, R) :- power(N, 3, R).