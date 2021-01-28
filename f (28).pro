sort_custom([], []) :- !.
sort_custom(L1, L2) :- max_list(L1, M), select(M, L1, L3), sort_custom(L3, L4), append(L4, [M], L2), !.
