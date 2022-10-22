/*
7. Como sabemos, o Harbour/ADVPL não possui uma função para cálculo
de potência. Crie uma função “POT”, que receba como parâmetros a
base e o expoente e retorne o valor da potência.
*/

Function Main()

    local nNum:=0, nExp:=0

    ACCEPT("Informe o base: ") to nNum
    ACCEPT("Informe o expoente: ") to nExp    
    
    POT (nNum,nExp)

RETURN NIL

Function POT (nNum,nExp)

    Qout()
    Qout("O valor da potência é: ", Alltrim(STR(val(nNum)^val(nExp))))

RETURN NIL