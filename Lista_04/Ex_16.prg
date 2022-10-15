/*16. Elaborar um programa que apresente o produto da soma pela
diferença do quadrado de dois valores lidos.*/

Function Main()

    local nV_A := 0, nV_B := 0

    ACCEPT "Digite o valor de A " TO nV_A
    ACCEPT "Digite o valor de B " TO nV_B
    
    nV_A := Val(nV_A)
    nV_B := Val(nV_B)

    QOut("O produto da soma pela diferença é: " + str(nV_A^2 - nV_B^2 ))

RETURN nil