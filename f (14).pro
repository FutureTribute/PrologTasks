woman(meri).
man(john).

rich(testPerson).

beautiful(meri).
kind(john).
manly(john).
strong(john).

happy(Man) :- rich(Man), !.
happy(Man) :- likesWoman(_, Man).
likesMen(Man, Woman) :- woman(Woman), man(Man), beautiful(Woman).
likesWoman(Woman, Man) :- woman(Woman), man(Man), likesMen(Man, Woman), kind(Man), !.
likesWoman(Woman, Man) :- woman(Woman), man(Man), kind(Man), strong(Man).

% happy(John).
% likesWoman(_, X).