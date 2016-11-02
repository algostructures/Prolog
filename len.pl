len([],0).
len([_|T],X):- len(T, Y), X is Y+1.
sum([],0).
sum([H|T], X):- sum(T,Y), X is Y+H.
append([],L,L).
append([H|T1], L2, [H|T3]):-append(T1,L2,T3).
rev([],[]).
rev([H|T],Y):-rev(T,Z), append(Z,[H],Y).
