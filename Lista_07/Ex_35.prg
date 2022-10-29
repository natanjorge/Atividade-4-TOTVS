/*35.Ler três vetores A, B e C com 10 elementos cada. A partir deles,
montar uma matriz M de 3 linhas por 10 colunas, onde cada linha
deverá receber os valores referentes a um dos vetores. Apresentar a
matriz resultante.*/

Function Main()

    local aA := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    local aB := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    local aC := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    local aM := {}

        aAdd(aM, aA)
        aAdd(aM, aB)
        aAdd(aM, aC)

    QOUT(hb_valtoexp(aM))

Return NIL