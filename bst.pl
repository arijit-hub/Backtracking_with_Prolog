/* Solution 1.2.1 */


/* Defining the Base Conditions for bst */
/* Base Condition 1: If the node to be added is Root and the tree is empty then the tree must be updated with the node value as Root and the Left Subtree and the Right Subtree as empty */
/* Base Condition 2: If the node to be added is Value, and given tree has only root node, and if Value is less than Root , then the Left Subtree must be updated and the Right subtree must be kept constant. */
/* Base Condition 3: If the node to be added is Value, and given tree has only root node, and if Value is greater than Root , then the Right Subtree must be updated and the Left subtree must be kept constant. */
bst(Root,nil,t(Root,nil,nil)).
bst(Value,t(Root,L,R),t(Root,L1,R)) :-
    Value @< Root, bst(Value,L,L1).
bst(Value,t(Root,L,R),t(Root,L,R1)) :-
    Value @> Root, bst(Value,R,R1).

/* We are going to redefine construct with two atoms as three atoms, with the first atom being the List, the second atom being the Tree and the third atom being what added from the List made the tree T. */
construct(L,T) :-
    construct(L,T,nil).

/* Base Condition 1: If the List is empty but the tree is T, then there must have been a previous List with value T which had created the Tree T */
construct([],T,T).

/* If the List is not empty, then the Head must be added with previous Tree T0 to form an intermediate Tree T1. Then again, the Tail must be traversed and added with T1 to make the output tree. */
construct([Head|Tail],OutputTree,T0) :-
    bst(Head,T0,T1),
    construct(Tail,OutputTree,T1).

/* -------------------------------------------------------------------------------------------------------------------------------------------------*/


