boy(costya).
boy(foma).
boy(marat).
girl(olena).
girl(svitlana).
girl(marina).

sibling(costya, olena).
noSkiiing(svitlana).

unique([]):-!.
unique([Head|Tail]):-
   member(Head, Tail), !, fail;
   unique(Tail).

solve(R) :-
    R = [pair(XB, XG), pair(YB, YG), pair(ZB, ZG)],

    boy(XB), boy(YB), boy(ZB), unique([XB, YB, ZB]),
    girl(XG), girl(YG), girl(ZG), unique([XG, YG, ZG]),
    
    member(pair(costya, GCostya), R), not(noSkiiing(GCostya)),
    member(pair(foma, GFoma), R), sibling(costya, GFoma), 
    !.

start(Y) :- solve(R), R = [pair(costya, _), pair(foma, _), pair(marat, Y)].

% start(Y).