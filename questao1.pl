ehVogal(_):- false.
ehVogal(a).
ehVogal(e).
ehVogal(i).
ehVogal(o).
ehVogal(u).

contaVogais(0, []).
contaVogais(Quant, [X|L]):- ehVogal(X), contaVogais(Quant1, L), Quant is (Quant1 + 1).
contaVogais(Quant, [_|L]):- contaVogais(Quant, L).

ehPalavraX(_):- false.
ehPalavraX(Palavra):- contaVogais(3, Palavra). 

:- initialization(main).
main:-
	read(Palavra), nl,
	contaVogais(Quant, Palavra),
	write(Quant),nl,
	halt(0).