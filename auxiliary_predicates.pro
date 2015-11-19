/* sde project 1*/
/* Author: Emmanuel John */

/* succeeds if L is repeated in list RS */
repeated_in(L,[L|M]):- member(L,M), !, repeated_in(L,RS),!.


at_most_one(L,RS). /* Succeed if L is conatained at most once in the list RS */
at_least_one(L,RS). /* succeeds if L is cotained at least once in list RS */

/* succeeds if L is conatained exactly once in list RS */
exactly_one(L,[X|Y]):- memberchk(L,[X|_]),!,memberchk(L,[_|Y]),!,true.

