/* Defining the custom_append predicate. I can't name it append since its an in-built function and it was giving error. */
/* Defining Base Conditions */
/* Base Condition 1: If the list is empty and we want to add element L, the output list will have only one element L*/
custom_append([],L,L).

/* If the list is not empty and we want to append an element to the end, the Head of the list will remain constant. The Tail part needs to be altered with one element being added at the end of the tail of the list */
custom_append([ListH|ListT],Value,[ListH|ChangedListT]):-
    custom_append(ListT,Value,ChangedListT).

/* Defining Base Conditions */
/* Base Condition 1: If there is only 1 element in the list the reverse will be that element only */
/* Base Condition 2: If there list is empty the reverse will be empty too */
myReverse([X],[X]).
myReverse([],[]).

/* If the list has more than one element, the reverse of the list can be considered as the reverse of the tail of the list with the head appended at the end of this reversed list. This is done in the next part */
myReverse([Head|Tail],ReversedList):-
    myReverse(Tail,TailReversed),
    custom_append(TailReversed,[Head],ReversedList).


