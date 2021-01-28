sort_custom([], []) :- !.
sort_custom(List1, List2) :- max_list(List1, Max), select(Max, List1, List3),
                             sort_custom(List3, List4), append([Max], List4, List2), !.

% sort_custom([1, 5, 8, 3, 2, 10], R). -> R = [10, 8, 5, 3, 2, 1].