arc(a,b).
arc(a,c).
arc(a,d).
arc(b,e).
arc(c,e).
arc(c,f).
arc(d,f).
arc(f,g).
arc(g,e).
path(X,Y,[arc(X,Y)]):- arc(X,Y).
path(X,Y,[arc(X,Z)|P]):- arc(X,Z), path(Z,Y,P). 
