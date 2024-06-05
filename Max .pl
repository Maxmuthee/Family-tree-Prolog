/*
 * domains
name=symbol
predicates
parent(name,name)
female(name)
male (name)
mother(name,name)
father(name,name)
brother(name,name)
sister(name,name)
sibling(name,name)
clauses

*/

male(gitahi).
male(peter).
male(solomon).
male(edmund).
male(kenneth).
male(maxwell).
male(ian).
male(noah).
male(jabali).
male(jelani).
male(alfy).

female(wambui).
female(grace).
female(faith).
female(nelly).
female(tracy).
female(sarah).
female(esther).
female(nissy).
female(nadia).
female(carol).
female(neema).

parent(gitahi,peter).
parent(gitahi,solomon).
parent(wambui,peter).
parent(wambui,solomon).
parent(peter,edmund).
parent(peter,kenneth).
parent(grace,edmund).
parent(grace,kenneth).
parent(solomon,patrick).
parent(solomon,nelly).
parent(faith,patrick).
parent(faith,nelly).
parent(patrick,nissy).
parent(patrick,nadia).
parent(esther,nissy).
parent(esther,nadia).
parent(nelly,jabali).
parent(nelly,jelani).
parent(alfy,jabali).
parent(alfy,jelani).
parent(edmund,maxwell).
parent(edmund,ian).
parent(edmund,neema).
parent(sarah,maxwell).
parent(sarah,ian).
parent(sarah,neema).
parent(kenneth,tracy).
parent(kenneth,noah).
parent(carol,tracy).
parent(carol,noah).

mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).
sibling(X,Y):-parent(Z,X),parent(Z,Y),X\=Y.
spouse(X,Y):-parent(X,Z), parent(Y,Z),X\=Y.
grandparent(X,Y):-parent(X,A),parent(A,Y).