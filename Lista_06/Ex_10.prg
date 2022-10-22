/*
10.Escreva uma função que calcule a média de 3 valores quaisquer. O
programa principal deverá ler os 3 valores informados pelo usuário e
apresentar a média.

*/

Function Main()

    local nNum:=0,nCont:=1, aux:=0

    Qout("Informe 3 valores para o calculo da média")
    Qout()
    for nCont:=1 to 3
        ACCEPT("Informe o valor: ") to nNum
        nNum:=val(nNum)
        aux+=nNum
    next

    MEDIA (aux)

RETURN NIL

Function MEDIA (aux)

    Qout()
    Qout("A média é " + Alltrim(STR(aux/3)))

RETURN NIL