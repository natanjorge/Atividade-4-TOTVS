/*29.Efetuar a leitura de quatro números inteiros e apresentar os números
que são divisíveis por 2 ou 3.
*/

Function Main()

    local nVal_1 := 0, nVal_2 := 0, nVal_3 := 0, nVal_4 := 0

    ACCEPT "Digite o primeiro valor " TO nVal_1
    ACCEPT "Digite o segundo valor " TO nVal_2
    ACCEPT "Digite o terceiro valor " TO nVal_3
    ACCEPT "Digite o quarto valor " TO nVal_4

    
    nVal_1 := Val(nVal_1)
    nVal_2 := Val(nVal_2)
    nVal_3 := Val(nVal_3)
    nVal_4 := Val(nVal_4)

    if(nVal_1 %2 == 0 .Or. nVal_1 %3 == 0)
        QOut("O primeiro valor: ", nVal_1," é divisível por 2 ou por 3")
    end if

    if(nVal_2 %2 == 0 .Or. nVal_2 %3 == 0)
            QOut("O segundo valor: ", nVal_2," é divisível por 2 ou por 3")
        end if

    if(nVal_3 %2 == 0 .Or. nVal_3 %3 == 0)
        QOut("O terceiro valor: ", nVal_3, " é divisível por 2 ou por 3")
    end if

    if(nVal_4 %2 == 0 .Or. nVal_4 %3 == 0)
        QOut("O quarto valor: ", nVal_4," é divisível por 2 ou por 3")
    end if

RETURN nil

