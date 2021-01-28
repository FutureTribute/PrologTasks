% Засько Б., Б16_д/122А
% Лаб. 4, задача 1

% Створити предикат, який збільшує елементи початкового списку
% на одиницю

increment([], []).
increment([H|T], Out) :- H_ is H + 1, increment(T, T1), Out = [H_ | T1].

% increment([1, 2, 3], X). -> X = [2, 3, 4]