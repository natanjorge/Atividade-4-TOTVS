/*
9. Escreva um algoritmo para mostrar o sucessor e o antecessor de um
número qualquer informado pelo usuário. Tanto o antecessor como o
sucessor deverão ser obtidos através de funções respectivas.
*/

Function Main()

    local nNum:=0

    ACCEPT("Informe um número: ") to nNum
    nNum:=val(nNum)

    ADICIONA (nNum)

RETURN NIL

Function ADICIONA (nNum)

    Qout()
    Qout("O valor de " + Alltrim(STR(nNum)) +"-1 é: " + Alltrim(STR(nNum-1)) + " e o valor de "+Alltrim(STR(nNum))+"+1 é: " + Alltrim(STR(nNum+1)))

RETURN NIL