listlen([],0).
listlen([_|T], X) :- listlen(T,Y),X is Y+1.

appendList([], L, L).
appendList([H|L1], L2, [H|L3]):- appendList(L1, L2,L3).

coprime(1,0).
coprime(X,Y):- Y > 0, Z is mod(X,Y), coprime(Y,Z).

addOne([],[]).
addOne([X|Xs],[Y|Ys]):-  Y is X+1, addOne(Xs, Ys).

addScalar([], [], _).
addScalar([X|Xs], [Y|Ys], N):- Y is X+N, addScalar(Xs, Ys, N).

multScalar([], [], _).
multScalar([X|Xs], [Y|Ys], N):- Y is X*N, multScalar(Xs,Ys,N).

pow(_,0,1).
pow(X,Y,Z):- Y1 is Y-1, pow(X,Y1,Z1), Z is Z1*X.

pre(P,L) :- appendList(P,_,L).

suff(S,L) :- appendList(_,S,L).

subList(S,L):- suff(Suffix, L), pre(S,Suffix).

naiverev([],[]).
naiverev([H|T],R) :- naiverev(T,RT), appendList(RT,[H],R).

accRev([H|T], A, R) :- accRev(T,[H|A],R).
accRev([],A,A).

rev(L,R) :- accRev(L,[],R).

doubled(L):-appendList(X,X,L).

palindrome(L):- rev(L,L).

second(X,L):-second(X,[_,X|_]).

swap(L1,L2) :-swap([X,Y | T], [Y,X | T]).

topTail([_|XS], Out):- appendList(Out, [_], XS).

combine1([],[],[]).
combine1([X|Xs],[Y|Ys],[X,Y|Zs]):- combine1(Xs,Ys,Zs).
