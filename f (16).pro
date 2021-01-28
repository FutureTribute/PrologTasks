% В одному театрі працюють чотири актори: Петренко, Яценюк,
% Ющенко і Ляшко. Один з них грає роль Отелло, другий – короля
% Ліра, третій – Ромео, четвертий – Гамлета. Петренко – не Отелло і
% не Гамлет. Ющенко – не Ромео і не Отелло. Ляшко – не Гамлет, не
% Отелло. Яценюк не грає ні Гамлета, ні Ромео. Якщо Ющенко грає
% Гамлета, то Петренко не грає короля Ліра. Визначити: хто з акторів
% кого грає

actor(petrenko).
actor(yacenyuk).
actor(yuschenko).
actor(lyashko).
role(otello).
role(king_lir).
role(romeo).
role(hamlet).

unique([]):-!.
unique([Head|Tail]):-
   member(Head, Tail), !, fail;
   unique(Tail).

solve(Acting) :-
    Acting = [acting(WA, WR), acting(XA, XR), acting(YA, YR), acting(ZA, ZR)],

    actor(WA), actor(XA), actor(YA), actor(ZA), unique([WA, XA, YA, ZA]),
    role(WR), role(XR), role(YR), role(ZR), unique([WR, XR, YR, ZR]),
    
    member(acting(petrenko, Cond1), Acting), \+(Cond1 = otello),
    member(acting(petrenko, Cond2), Acting), \+(Cond2 = hamlet),
    member(acting(yuschenko, Cond3), Acting), \+(Cond3 = romeo),
    member(acting(yuschenko, Cond4), Acting), \+(Cond4 = otello),
    member(acting(lyashko, Cond5), Acting), \+(Cond5 = hamlet),
    member(acting(lyashko, Cond6), Acting), \+(Cond6 = otello),
    member(acting(yacenyuk, Cond7), Acting), \+(Cond7 = hamlet),
    member(acting(yacenyuk, Cond8), Acting), \+(Cond8 = romeo),

    member(acting(yuschenko, hamlet), Acting),
    member(acting(petrenko, Cond9), Acting), \+(Cond9 = king_lir), !.

start(Solve) :- solve(Solve), Solve = [acting(petrenko, _), acting(yacenyuk, _), acting(yuschenko, _), acting(lyashko, _)].

% start(X). -> petrenko - romeo, yacenyuk - otello, yuschenko - hamlet, lyashko - king_lir