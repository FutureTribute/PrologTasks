swap2Elements(List, Index1, Index2, Result) :-
    same_length(List, Result),
    append(BeforeIndex1,[Value1|AfterIndex1],List),
    append(BeforeIndex1,[Value2|AfterIndex1],ListTemp),
    append(BeforeIndex2,[Value2|AfterIndex2],ListTemp),
    append(BeforeIndex2,[Value1|AfterIndex2],Result),
    Index1_1 is Index1-1, Index2_1 is Index2-1,
    length(BeforeIndex1, Index1_1),
    length(BeforeIndex2, Index2_1),
    !.

% swap2Elements([1, 2, 3, 4, 5], 1, 3, R). 