% Тимошенко, Савченко і Кужель – модельєр, менеджер і страховий
% агент. Одна з них водить машину марки «Форд», друга – марки
% «Рено», третя – марки «Ауді». Та, хто їздить на «Форді» – не
% менеджер. Савченко їздить не на «Рено». Тимошенко їздить не на
% «Форді». Страховий агент їздить на «Рено». Савченко – не
% модельєр. Визначити: у кого яка професія і який автомобіль

surname(tymoshenko).
surname(savchenko).
surname(kuzhel).
proffesion(modelier).
proffesion(manager).
proffesion(insurance_agent).
car(ford).
car(reno).
car(audi).

unique([]):-!.
unique([Head|Tail]):-
   member(Head, Tail), !, fail;
   unique(Tail).

solve(R) :-
    R = [person(XS, XP, XC), person(YS, YP, YC), person(ZS, ZP, ZC)],

    surname(XS), surname(YS), surname(ZS), unique([XS, YS, ZS]),
    proffesion(XP), proffesion(YP), proffesion(ZP), unique([XP, YP, ZP]),
    car(XC), car(YC), car(ZC), unique([XC, YC, ZC]),
    
    member(person(_, Condition1, ford), R), \+(Condition1 = manager),
    member(person(savchenko, _, Condition2), R), \+(Condition2 = reno),
    member(person(tymoshenko, _, Condition3), R), \+(Condition3 = ford),
    member(person(_, insurance_agent, reno), R),
    member(person(savchenko, Condition4, _), R), \+(Condition4 = modelier),
    !.

start(R) :- solve(R), R = [person(tymoshenko, _, _), person(savchenko, _, _), person(kuzhel, _, _)].

%  start(R).