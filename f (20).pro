sum1N(1, 1):- !.
sum1N(N, R):- Ndiv1 is 1/N, N1 is N - 1, sum1N(N1, RTemp), R is Ndiv1 + RTemp.
