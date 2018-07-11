male(ahmed).
male(amir).
male(ali).
male(hamza).
male(nasir).

female(saira).
female(amina).
female(sara).
female(sadia).
female(alia).

parent(ahmed, amir).
parent(saira, amir).
parent(amir, ali).
parent(ahmed,hamza).
parent(hamza,alia).
parent(hamza, nasir).
parent(amina, ali).
parent(ahmed,sara).
parent(sara,sadia).

grandParent(X,Y):- parent(X,Z), parent(Z,Y).
grandFather(X,Y):- male(X), parent(X,Z), parent(Z,Y).
grandMother(X,Y):- female(X), parent(X,Z), parent(Z,Y).
brother(X,Y):- male(X), parent(Z,X), parent(Z,Y), not(X=Y).
sibling(X,Y):- parent(Z,X), parent(Z,Y), not(X=Y).
sister(X,Y):- female(X), parent(Z,X), parent(Z,Y), not(X=Y).
cousin(X,Y):- parent(Z,X), parent(A,Y), sibling(Z,A), not(Z=A).
uncle(X,Y):- male(X), parent(Z,Y), sibling(Z,X).
aunt(X,Y):- female(X), parent(Y,Z), sibling(Z,X).
spouse(X,Y):- parent(X,Z), parent(Y,Z), not(X=Y).
husband(X,Y):- male(X), female(Y), parent(X,Z), parent(Y,Z).
wife(X,Y):- female(X), male(Y), parent(X,Z), parent(Y,Z).