charRemoval("", _, ""):- !.
charRemoval(String, Char, Result) :-
    sub_string(String, 0, 1, _, FirstChar),
    string_length(String, Length),
    LCut is Length - 1,
    sub_string(String, 1, LCut, _, Rest),
    (Char = FirstChar), 
    charRemoval(Rest, Char, ReResult),
    string_concat("", ReResult, Result),
    !.
charRemoval(String, Char, Result) :-
    sub_string(String, 0, 1, _, FirstChar),
    string_length(String, Length),
    LCut is Length - 1,
    sub_string(String, 1, LCut, _, Rest),
    (Char \= FirstChar), 
    charRemoval(Rest, Char, ReResult),
    string_concat(FirstChar, ReResult, Result),
    !.

% charRemoval("apple", "p", R). -> R = "ale".