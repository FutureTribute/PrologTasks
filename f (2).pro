getByIndex([Head|_], 1, Head) :- !.
getByIndex([_|Tail], Index, Element) :-
    IndexTemp is Index-1,
    getByIndex(Tail, IndexTemp, Element).

minusValue([], _, []).
minusValue([Head|Tail], Value, Out) :- 
    HeadNew is Head - Value, 
    minusValue(Tail, Value, ListNew), 
    Out = [HeadNew|ListNew].

task(List, Index, Result):- 
    getByIndex(List, Index, Value), 
    minusValue(List, Value, ListNew), 
    sort(0, @>=, ListNew, Result).

% task([1, 2, 3], 1, R).
% task([4, 2, 4], 2, R).