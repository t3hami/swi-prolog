:- dynamic((=)/2).

A = [1,2,3,4,5].
B = [apples,grapes,bananas,oranges].

C=[a,b].

print_list([A,B|C]):-write(A),write(B),write(C).