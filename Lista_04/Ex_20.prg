/*20.Elaborar um programa que efetue a leitura de um determinado valor
e apresente-o caso este não seja maior que três.*/

Function Main()

    local nNum := 0

    ACCEPT "Informe um valor " TO nNum

    nNum := Val(nNum)
    
    if nNum <= 3
        QOut("O valor é: " + str(nNum))

    end if

RETURN nil