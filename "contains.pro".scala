contains(X,[X|_]).
contains(X,[_|X]) :- contains(X,Y).
