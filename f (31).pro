plates(X,Y,Mem,Num):-
    atom_chars(X,Xs),
    atom_chars(Y,Ys),
    inter(Xs,Ys,Mem),
    length(Mem,Num),!.

inter(_,[],[]).
inter([],_,[]).
inter([H|T],L,[H|T1]):-
          member(H,L),
          delete(H,L,L1),
          inter(T,L1,T1).
inter([H|T],L,List):- \+member(H,L),inter(T,L,List).          

delete(H,[H|T],T).
delete(H,[X|T1],[X|T]):-dif(H,X),delete(H,T1,T).