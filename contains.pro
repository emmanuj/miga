contains(X,[X|_]).
contains(X,[_|Y]) :- contains(X,Y).
