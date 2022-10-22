/*
15.Crie uma função chamada “ehPositivo” que descubra se um valor é
positivo ou negativo (considere o valor zero como positivo) e retorne
Verdadeiro ou Falso. Use essa função em um programa que calcula o
módulo de um número informado pelo usuário.
*/

Function Main()

    local nNum:=0

    ACCEPT("Informe um valor: ") to nNum

    nNum:=val(nNum)

    ehPositivo (nNum)

RETURN NIL

Function ehPositivo (nNum)

    Qout()
    
    if nNum >= 0
        Qout("Verdadeiro! O número",nNum, "é positivo.")
    else
        Qout("Falso! O número",nNum, "é negativo.")
    end if

RETURN NIL