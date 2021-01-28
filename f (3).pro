% Організувати введення і формування цілочисельного списку. Знайти мінімальний елемент списку. 
% Відняти його з усіх елементів списку. 
% Упорядкувати отриманий список за збільшенням.

decrease([], _, []).
decrease([H|T], V, Out) :- H_ is H - V, decrease(T, V, T_vremenniy), Out = [H_|T_vremenniy].

solve(L, R):- min_list(L, V), decrease(L, V, L_vremenniy), msort(L_vremenniy, R).


% solve([4, 1, 2], R). -> R = [0, 1, 3].