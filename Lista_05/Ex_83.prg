/*
83.Altera o algoritmo anterior, para que faça o mesmo para 10.000
valores.
*/

Function Main()

    Local nValor := 0, nCont  := 1, nI := 10000
    Local aNum   := {}
    Local cMsg   := ""

    while nCont <= 10000

    ACCEPT "Digite um numero: " to nValor
    Aadd(aNum, nValor)
    nCont++

    ENDDO

    for nCont :=10000 to 1 STEP -1
        cMsg := cMsg + aNum[nI]
        nI--

    NEXT nCont
    QOUT(CHR(10) + "Ordem inversa " +CHR(10))
    QOUT(cMsg )
RETURN NIL