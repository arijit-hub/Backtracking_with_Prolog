/* Defining Base Conditions for removeDuplicates */
/* Base Condition 1: Empty list don't have any element, so it's quite improbable to think of it as having repeatations. */
/* Base Condition 2: A list with one element don't have any repeatation and needs to be returned in its original form. */
removeDuplicates([],[]).
removeDuplicates([X],[X]).

/* If the list has more than one element we split the list into Heads and Tails and remove all occurance of Heads from Tail. It can also be thought of as the predicate which returns the Head and the no duplicate tails. */
removeDuplicates([H|T],[H|ModifiedT]):-
    del(H,T,R1),
    removeDuplicates(R1,ModifiedT).

/* Defining base conditions for the delete all occurance, del, predicate */
/* Base Condition 1: If the list has only one element, and that element is to be deleted then there should be an empty list as an output */
/* Base Condition 2: If the list is empty, no element can be deleted, hence, the output should also be empty */
del(X,[X],[]).
del(_,[],[]).

/* If the list has more than one element, and the element to be deleted matches with the Head, then the Head must be removed as well as all the occurance of the element in Tail. */
del(Value,[H|T],ModifiedT):-
    Value =:= H,
    del(Value,T,ModifiedT).

/* If the list has more than one element, and the element to be deleted is not the Head, then the Head must be kept intact and all the instances of the element from Tail must be deleted. */
del(Value,[H|T],[H|ModifiedT]):-
    Value \= H,
    del(Value,T,ModifiedT).
