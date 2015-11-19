/* sde project 1*/
/* Author: Emmanuel John */

repeated_in(L,RS)./* succeeds if L is repeated in list RS */
at_most_one(L,RS). /* Succeed if L is conatained at most once in the list RS */
at_least_one(L,RS). /* succeeds if L is cotained at least once in list RS */
exactly_one(L,RS). /* succeeds if L is conatained exactly once in list RS */

adj-to(red, blue).
adj-to(road, grass).
adj-to(road, trees).
adj-to(sky, trees).
adj-to(grass, trees).

adjacent-to(X,Y):- adj-to(X,Y).
adjacent-to(X,Y):- adj-to(Y,X).
highest(sky) 
moving(car)

/* observation of adjacency */

goal([R1,R2,R3,R4,R5,R6]):-
highest(R1)
moving(R5)
adjacent-to(R1,R2),
adjacent-to(R2,R6),
adjacent-to(R2,R3),
adjacent-to(R3,R4),
adjacent-to(R2,R4),
adjacent-to(R4,R6),
adjacent-to(R4,R5),nl,
/* print solutions found thus far */
write('R1	R2	R3	R4	R5	R6'), nl,
write(R1), write('	'),write(R2), write('	'),
write(R3), write('	'),write(R4), write('	'),
write(R5), write('	'),write(R6), write('	'),nl,nl,
fail. /* force backtracking to print all solutions */
