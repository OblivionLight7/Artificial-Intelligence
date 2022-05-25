female(selena).
female(taylor).
female(deepika).
female(alia).
female(prinkya).
female(anushka).
male(ranbir).
male(justin).
male(jaden).
male(harry).
male(zayn).
male(messi).
parent(selena,jaden).
parent(harry,jaden).

parent(selena,ranbir).
parent(harry,ranbir).

parent(selena,anushka).
parent(harry,anushka).

parent(taylor,justin).
parent(zayn,justin).

parent(jaden,alia).

parent(prinkya,alia).
mother(X,Y) :- parent(X,Y), female(X).
father(X,Y) :- parent(X,Y), male(X).
haschild(X) :- parent(X,_).
sister(X,Y) :- parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y) :- parent(Z,X),parent(Z,Y),male(X),X\==Y.
grandfather(X,Y) :- male(X), parent(X,Z),parent(Z,Y).
grandmother(X,Y) :- female(X), parent(X,Z),parent(Z,Y).
aunt(X,Y) :- female(X),parent(Z,Y), sister(Z,X).
uncle(X,Y) :- male(X),parent(Z,Y), brother(Z,X).
