/*
8. Sabendo que a área quadrada é dada pela multiplicação da medida de
2 lados, escreva um algoritmo que mostre a área quadrada de um
espaço qualquer cujos lados foram informados pelo usuário. O cálculo
da área deverá ser realizado por uma função.
*/

Function Main()

    local nLado:=0, nLado2:=0

    ACCEPT("Informe o primeiro lado: ") to nLado
    ACCEPT("Informe o segundo lado: ") to nLado2
    
    AREA (nLado,nLado2)

RETURN NIL

Function AREA (nLado,nLado2)

    Qout()
    Qout("O valor da área é: ", Alltrim(STR(val(nLado)*val(nLado2))))

RETURN NIL