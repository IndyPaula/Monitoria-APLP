soma([], 0).
soma([_|Corpo], Total):- soma(Corpo, Total1), Total is (Total1 + X).

maior([Numero|[]], Numero).
maior([Numero|Corpo], Maior):- maior(Corpo, Maior1), Numero > Maior1, Maior is Numero.
maior([Numero|Corpo], Maior):- maior(Corpo, Maior1), Numero < Maior1, Maior is Maior1. 

menor([Numero|[]], Numero).
menor([Numero|Corpo], Maior):- menor(Corpo, Maior1), Numero < Maior1, Maior is Numero.
menor([Numero|Corpo], Maior):- menor(Corpo, Maior1), Numero > Maior1, Maior is Maior1.
 
resultado(Lista, Resultado):- maior(Lista, Maior), menor(Lista, Menor), soma(Lista, Soma), Resultado is ((Maior - Menor)+Soma).

main:-
	read(Lista), nl,
	resultado(Lista, Resultado),
	write(Resultado),nl,
	halt(0).