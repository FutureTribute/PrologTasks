sumPower(A, 1, A):- !.
sumPower(A, N, R):- pow(A, N, ARaised), N1 is N - 1, sumPower(A, N1, RTemp), R is ARaised + RTemp.

% sumPower(2, 3, R). -> 2^3 + 2^2 + 2^1 = 8 + 4 + 2 = 14