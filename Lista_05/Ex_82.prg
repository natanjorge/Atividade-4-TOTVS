/*82.Fazer um programa que leia 10 valores e apresente-os na ordem
inversa em que foram digitados.
*/

Function Main()

    Local nValor := 0, nCont  := 1, nI     := 10
    Local aNum   := {}
    Local cMsg   := ""

    while nCont <= 10
        ACCEPT ("Digite um numero: ") to nValor
        Aadd(aNum, nValor)
        nCont++

    ENDDO

    for nCont :=10 to 1 STEP -1
        cMsg := cMsg + aNum[nI]
        nI--

    NEXT nCont
    QOUT(CHR(10) + "Ordem inversa " +CHR(10))
    QOUT(cMsg)
RETURN NIL