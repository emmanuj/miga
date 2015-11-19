/* smpl-unify1.pro */

goal1(X,Y):- first(X),!, second(Y),!.
goal2(X) :- first(X), second(X).

first(1).
first(2).
first(3).

second(2).
second(4).
second(6).

/* infinite recursion */
a:-a.

a.

/*Defining the not*/

not(V):-call(V),!,fail.
not(V).


