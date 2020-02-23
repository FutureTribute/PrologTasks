% Засько Б., Б16_д/122А
% Лаб. 3

% Реалізувати, використовуючи рекурсію і відсікання, цикл з
% лічильником (типу for i:=1 downto N do <оператор>)


downto(Low,High,_,High) :- Low =< High.
downto(Low,High,Step,I) :- Dec is High-Step, Dec >= Low, downto(Low, Dec, Step, I).
