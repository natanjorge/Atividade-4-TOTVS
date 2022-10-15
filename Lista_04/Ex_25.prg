/*25.Desenvolva um programa que dado um número, calcule e exiba se ele
é par ou ímpar.
*/

Function Main()

    local nNum_1 := 0

    ACCEPT "Informe um número: " TO nNum_1

    nNum_1 := Val(nNum_1)
    
    if nNum_1 % 2 == 1
        QOut("O número " + str(nNum_1) + " é impar")
    else 
       QOut("O número " + str(nNum_1) + " é par")
    end if

RETURN nil