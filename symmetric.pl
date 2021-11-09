/* Solution 1.2.3 */


/* Defining the Base Condition of reflection predicate, which check if the two tree are mirror images of one another. */
/* Base Condition 1: If the two trees to be checked are empty then ofcourse they are smmetric. */
reflection(nil,nil).

/* If the two trees are not empty, then the Left Subtree of the first tree must match with the Right Subtree of the second tree. Also the Right Subtree of the first subtree must also match with the Left Subtree of the second tree.*/
reflection(t(_,L1,R1),t(_,L2,R2)):-
    reflection(L1,R2),
    reflection(R1,L2).

/* An empty tree is symmetric */
check_symmetry(nil).

/* A tree with Left Subtree and Right Subtree is symmetric if and only if they are reflective */
check_symmetry(t(_,LS,RS)):-
    reflection(LS,RS).

/* -------------------------------------------------------------------------------------------------------------------------------------------------*/

