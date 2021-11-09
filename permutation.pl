/* Defining Base Condition for takeout predicate. To be honest, the takeout predicate is nothing but deletion of an element from the list */
/* Base Condition 1: If the element to be deleted is equal to Head of the list, then after deletion or takeout the resultant must be the Tail. */
takeout(H,[H|T],T).

/* If the element to be deleted doesn't matches with the Head, then the element must be deleted from the Tail. Hence for the output the Head must be kept intact and the Tail must be modified with the element X deleted from it. */
takeout(X,[H|T],[H|ModifiedT]):-
    takeout(X,T,ModifiedT).

/* Defining Base condition for myPermutations predicate. */
/* Base Condition 1: If the list to be permutted is empty, there would be no permutation, hence an empty list must be returned */
myPermutations([],[]).

/* If the list to be permutted is L, then the output permutations can be thought of as taking out the Head, and permutting between the Tail elements and inserting the Head element at different positions of Tail. */
myPermutations(L,[H|T]):-
    takeout(H,L,ModifiedList),
    myPermutations(ModifiedList,T).
