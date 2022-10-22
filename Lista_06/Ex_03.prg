/*
3. Elaborar um programa que possua uma sub-rotina que efetue o
somatório dos N primeiros números naturais iniciando em 1. O
resultado deverá ser exibido no programa principal e não no
procedimento.
*/

Function Main()

    local nVal:=0, nNum:=0

    ACCEPT("Informe o valor de N: ") to nVal
    Qout()

    nNum:=CalcPres (nVal)

    Qout("O somatório de N é: ", Alltrim(STR(nNum)))
    
RETURN NIL

Function CalcPres (nVal)

    local nCont:=1, nAux:=0

    for nCont:=1 to Val(nVal)
        nAux+=nCont
    next
    
RETURN nAux