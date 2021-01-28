% Задана база знань «Робота»:
% Оксана працює в денну зміну.
% Петро працює в денну зміну.
% Степан працює в вечірню зміну.
% Олеся працює в вечірню зміну.
% Два робітники знають один одного, якщо вони працюють в одну
% зміну. Написати програму на Prolog і відповісти на питання: Чи
% знає Петро Степана? Кого знає Олеся? Хто знає Оксану? Хто
% працює в денну зміну?

dayWork(oksana).
dayWork(petro).
eveningWork(stepan).
eveningWork(olesia).

knowEachOther(Worker1, Worker2) :- dayWork(Worker1), dayWork(Worker2), not(Worker1 = Worker2).
knowEachOther(Worker1, Worker2) :- eveningWork(Worker1), eveningWork(Worker2), not(Worker1 = Worker2).

% knowEachOther(petro, stepan).
% knowEachOther(olesia, X).
% knowEachOther(X, oksana).
% dayWork(X).