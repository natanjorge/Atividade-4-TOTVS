/*
11.Faça um algoritmo que calcule o reajuste de um salário. O usuário
informará o salário atual e o percentual de reajuste.
*/

Function Main()

    local nNum:=0, nRea:=0

    ACCEPT("Informe o valor do salário: ") to nNum
    ACCEPT("Informe o percentual do reajuste: ") to nRea

    nNum:=val(nNum)
    nRea:=val(nRea)

    REAJUSTE (nNum,nRea)

RETURN NIL

Function REAJUSTE (nNum,nRea)

    Qout()
    Qout("O salário com reajuste é R$" + Alltrim(STR(nNum*((1+nRea/100)))))

RETURN NIL