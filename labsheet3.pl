go :-
    write('What is the name of Patient?'),
    read(Patient),nl,
    hypo(Patient, Disease),
    write(Patient),write(' probably has '),write(Disease),nl,again.
go:-
    write('Sorry I am unable to diagnose the Disease.'),nl,again.

hypo(Patient,flu):-
    sym(Patient,fever),
    sym(Patient,cough).
hypo(Patient,headche):-
    sym(Patient,bodypain).

sym(Patient,fever):-
    write(' Does '),write(Patient),write(' has fever (y/n)?'),res(R),R='y'.
sym(Patient,cough):-
    write('Does '),write(Patient),write(' has cough (y/n)?'),res(R),R='y'.
sym(Patient,bodypain):-
    write('Does '),write(Patient),write(' has bodypain (y/n)?'),res(R),R='y'.

res(R):-
    read(R),nl.

again:-
    write('Do you want to continue? (Y/ N)'),nl, read(X),nl, (X='Y';X='y'),go.
again:-
    break.