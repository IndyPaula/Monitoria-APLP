ehPoetica([X|[]], [X|[]]).
ehPoetica([X|[]], [Y|[]]):- false.
ehPoetica([X|[]], [_|Palavra2]):-ehPoetica([X|[]], Palavra2).
ehPoetica([_|Palavra1], [Y|[]]):-ehPoetica(Palavra1, [Y|[]]).
ehPoetica([_|Palavra1], [_|Palavra2]):- ehPoetica(Palavra1, Palavra2).

invertePalavra([], []).
invertePalavra([X|Palavra], Inversa):-invertePalavra(Palavra, Concatenada),  concatena(Concatenada, [X], Inversa).

concatena([],L,L).
concatena([X|L1],L2,[X|L3]):- concatena(L1,L2,L3). 

ehCombinacaoPoetica(Palavra1, Palavra2, Saida):- ehPoetica(Palavra1, Palavra2), 
										invertePalavra(Palavra1, Inversa1), invertePalavra(Palavra2, Inversa2), 
										ehPoetica(Inversa1, Inversa2), Saida = "Eh Combinacao Poetica".
ehCombinacaoPoetica(_, _, Saida):- Saida = "Nao eh Combinacao Poetica".

:- initialization(main).
main:-
	read(Palavra1), nl,
	read(Palavra2), nl,
	ehCombinacaoPoetica(Palavra1, Palavra2, Saida), 
	write(Saida), nl,
	halt(0).