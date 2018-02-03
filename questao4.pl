pegaLetra([], _, _, _).
pegaLetra([Cabeca|Corpo], IndParada, Ind, Cabeca):- IndParada =:= Ind.
pegaLetra([Cabeca|Corpo], IndParada, Ind, Letra):- Ind1 is (Ind+1), pegaLetra(Corpo, IndParada, Ind1, Letra).

concatena([], Letra, Letra). 
concatena([X|Lista], Letra, [X|Saida]):- concatena(Lista, Letra, Saida). 

formaPalavra(_, 5, []).
formaPalavra(Lista, Ind, Saida):-  Ind1 is (Ind+1), formaPalavra(Lista, Ind1, Saida1), IndP is (Ind*2), pegaLetra(Lista, IndP, 1, Letra), concatena(Saida1, [Letra], Saida).

invertePalavra([], []).
invertePalavra([X|Palavra], Inversa):-invertePalavra(Palavra, Concatenada),  concatena(Concatenada, [X], Inversa).

main:-
	read(Lista), nl,
	formaPalavra(Lista, 1, Resultado),
	invertePalavra(Resultado, Inversa),
	write(Inversa).
