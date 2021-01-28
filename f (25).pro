replace_([], _, _, []):- !.
replace_([H|T], C1, C2, R) :- H == C1, replace_(T, C1, C2, RT), R = [C2 | RT], !.
replace_([H|T], C1, C2, R) :- replace_(T, C1, C2, RT), R = [H | RT].