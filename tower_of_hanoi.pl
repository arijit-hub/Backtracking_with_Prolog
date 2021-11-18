/* Tower of Hanoi problem */
/* If there is only one disc, the disc needs to be moved from the left to
% the right  */
move(1,X,Y,_):-
    write('Move top disk from '),
    write(X),
    write(' to '),
    write(Y),
    nl.

/* If there are more than one disc, then all the disc except the largest
one needs to be moved from the left rod to the center rod by using the
right rod. Finally after the movement from left to center rod, the
largest disc is moved to the right rod. */
move(N,X,Y,Z):-
    N > 1,
    M is N-1,
    move(M,X,Z,Y),
    move(1,X,Y,_),
    move(M,Z,Y,X).

/* Complexity class of the program
If the time required for n disks is T(n). There are two recursive calls for n-1 and a constant time k1 to move disk from one peg to other. Hence, T(n)=2T(n-1)+k1
for n=0, T(0)=k2 a constant.
for n=1, T(1)=2k2+k1
for n=2, T(2)=2T(1)+k1=4k2+2k1+k1
for n=3, T(3)=2T(2)+k1=8k2+4k1+2k1+k1

Thus, k1=2^n and k2=2^n-1. Time complexity is O(2^n) or O(a^n) which shows exponential class.

if we do 2nd recursive call, 1st recursive call is over. thus, space of 1st and 2nd call can be reused. T(n)=T(n-1)+k
T(0)=k, T(1)=2k, T(2)=3k , T(3)=4k. so space complexity is O(n). Thus, space complexity is linear.  */
