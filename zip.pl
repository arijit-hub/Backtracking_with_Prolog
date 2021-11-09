/* Defining the Base Conditions for the zip predicate */
/* Base Condition 1: If the second list is empty then the output must be empty. */
/* Base Condition 2: If the first list is empty then the output must be empty. */

zip(_,[],[]).
zip([],_,[]).

/* If the first and second list has only one element each then the output would be a list of list containing both the elements. */
zip([X],[Y],[[X,Y]]).

/* If the first and the second list has more than one elements, then the the output must be a list of list of the first two head and the zipped of the Tails elements of both the list */
zip([H1|T1],[H2|T2],[[H1,H2]|ModifiedTail]):-
    zip(T1,T2,ModifiedTail).

