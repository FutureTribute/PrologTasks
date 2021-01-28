doubler([], []).
doubler([H|T], Out) :- DoubledH is H*2, doubler(T, T1), Out = [DoubledH| T1].

% doubler([1, 2, 3, 4, 5], R). -> R = [2, 4, 6, 8, 10].