% Засько Б., Б16_д/122А
% Лаб. 1, задача 1

% clauses 
escaped(kolobok, grandpa).
escaped(kolobok, grandma).
escaped(kolobok, hare).
escaped(kolobok, wolf).
escaped(kolobok, bear).
not_escaped(kolobok, fox).

% clauses для отримання всіх персонажів
character(CHAR) :- escaped(CHAR, _).
character(CHAR) :- escaped(_, CHAR).
character(CHAR) :- not_escaped(CHAR, _).
character(CHAR) :- not_escaped(_, CHAR).
