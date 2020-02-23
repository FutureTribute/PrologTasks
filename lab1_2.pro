% Засько Б., Б16_д/122А
% Лаб. 1, задача 2

% Три родинні пари – Петренки, Шевченки і Сидоренки купили
% путівки за 2 000 $, 3 000 $ і 5 000 $ в Туреччину, Італію та Іспанію.
% Петренки поїхали не в Туреччину, Шевченки – не в Італію. Ті, хто
% поїхав в Туреччину, не платили за путівку 5 000 $. Ті, хто поїхав в
% Італію, заплатили 3 000 $. Шевченки не платили за путівку 2 000 $.
% Визначити: яка пара в якій країні відпочивала і скільки заплатила
% за путівку

% petrenki   - 3k - Italy
% sidorenki  - 2k - Turkey
% shevchenki - 5k - Spain

family(petrenki).
family(shevchenki).
family(sidorenki).
country(turkey).
country(italy).
country(spain).
price(2000).
price(3000).
price(5000).

unique([]):-!.
unique([Head|Tail]):-
   member(Head, Tail), !, fail;
   unique(Tail).

solve(Trips):-
    Trips = [trip(XF, XP, XC), trip(YF, YP, YC), trip(ZF, ZP, ZC)],

    family(XF), family(YF), family(ZF), unique([XF, YF, ZF]),
    country(XC), country(YC), country(ZC), unique([XC, YC, ZC]),
    price(XP), price(YP), price(ZP), unique([XP, YP, ZP]),

    member(trip(_, 3000, italy), Trips),
    member(trip(petrenki, _, Cond1), Trips), \+(Cond1 = turkey),
    member(trip(shevchenki, _, Cond2), Trips), \+(Cond2 = italy),
    member(trip(_, Cond3, turkey), Trips), \+(Cond3 = 5000),
    member(trip(shevchenki, Cond4, _), Trips), \+(Cond4 = 2000).
    
start(Solve):-
   solve(Solve), Solve = [trip(petrenki, _, _), trip(sidorenki, _, _), trip(shevchenki, _, _) ].