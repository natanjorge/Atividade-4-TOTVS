/*37.A partir da matriz M e N criadas nos exercícios anteriores, construir a
matriz R de mesmo tamanho, onde cada elemento de R será a soma
dos elementos correspondentes de M e N. Apresentar a matriz
resultante.*/

Function Main()

    local aA := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    local aB := {2 , 3 , 4 , 5, 4 , 5 , 4 , 5 , 6 , 7}
    Local aC := ARRAY(10)
    Local nAux := 0, nCont := 0
  
    for nCont := 1 to 10
        nAux := aA[nCont] + aB[nCont]
        aC[nCont] := nAux
        QOUT(aC[nCont])
    next

RETURN NIL