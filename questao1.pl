eVogal(_):- false.
eVogal(a).
eVogal(e).
eVogal(i).
eVogal(o).
eVogal(u).

tresVogais(0, []).
tresVogais(X, [Y|P]):- eVogal(Y), X is (X1 + 1), tresVogais(X1, P).
tresVogais(X, [_|P]):- tresVogais(X, P).



main:-
read(Palavra), 
tresVogais(X, Palavra), 
write(X), nl, halt(0).