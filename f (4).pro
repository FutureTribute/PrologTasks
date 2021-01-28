% Створити предикат, що робить перестановку двох елементів списку с заданими номерами. 

%  !!! Індексація починається з нуля!

getByIndex([H|_], 0, H) :- !.
getByIndex([_|T], I, E) :- I_ is I-1, getByIndex(T, I_, E).

return_val(I, _, I, _, V, _, V):- !.
return_val(I, I, _, _, _, V, V):- !.
return_val(_, _, _, V, _, _, V):- !.

iter([], _, _, _, _, _, []) :- !.
iter([H|T], I, I1, I2, V1, V2, R) :- return_val(I, I1, I2, H, V1, V2, E), I_ is I + 1, iter(T, I_, I1, I2, V1, V2, R_), append([E], R_, R).


solve(L, I1, I2, R) :- getByIndex(L, I1, V1), getByIndex(L, I2, V2), iter(L, 0, I1, I2, V1, V2, R).

% solve([1, 2, 4, 8], 0, 2, R). -> R = [4, 2, 1, 8].