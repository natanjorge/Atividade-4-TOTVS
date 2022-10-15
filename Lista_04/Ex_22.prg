/*22.Ler dois valores numéricos e apresentar a diferença do maior pelo
menor. Usar apenas o desvio condicional simples. Não poderá utilizar
o “senão”.*/

Function Main()

    local nNum_1 := 0, nNum_2 := 0, nNum:= 0

    ACCEPT "Informe o primeiro valor " TO nNum_1
    ACCEPT "Informe o segundo valor " TO nNum_2

    nNum_1 := Val(nNum_1)
    nNum_2 := Val(nNum_2)
    
    if nNum_2 >= nNum_1
        nNum = nNum_2-nNum_1
    end if

    if nNum_1 >= nNum_2
        nNum = nNum_1-nNum_2
    end if

    QOut("O valor é: " + str(nNum))
RETURN nil