/* Solution 1.2.2 */



/* Defining Base Conditions for the predicate count_leaves */
/* Base Condition 1: If the node has Left Subtree and Right Subtree are nil then it should be a leaf node and must me counted as 1 of the leaf nodes. */
/* Base Condition 2: If the tree has no nodes, then it doesn't have any node at all. */
count_leaves(t(_,nil,nil),1).
count_leaves(nil,0).

/* For counting number of leaf nodes we are not at all worried about our node label, but on the Left Subtree and the Right Subtree. Suppose N1 is the Left Subtree has N1 leaf nodes and the Right Subtree has N2 leaf nodes, then the total number of leaf nodes is N1 + N2. */
count_leaves(t(_,LS,RS),N):-
    count_leaves(LS,N1),
    count_leaves(RS,N2),
    N is N1 + N2.


/* Defining Base condition for calculating number of nodes */
/* Base Conditon 1: If the tree has no nodes then there are no nodes :D */
count_nodes(nil,0).

/* If the tree has some nodes, then we can count the number of nodes in Left Subtree and store it as N1, and also check the number of nodes in Right Subtree as N2. The total number of nodes in the tree as N1 + N2 + 1. */
count_nodes(t(_,LS,RS),N):-
    count_nodes(LS,N1),
    count_nodes(RS,N2),
    N is N1 + N2 + 1.


/* -------------------------------------------------------------------------------------------------------------------------------------------------*/












