/*21.Efetuar a leitura de um valor inteiro positivo ou negativo e apresentar
o número lido como sendo um valor negativo. Lembre-se de verificar se o número fornecido é maior que zero, sendo multiplique-o por -1.
Usar apenas o desvio condicional simples. Não poderá utilizar o
“senão”.*/

Function Main()

    local nNum := 0

    ACCEPT "Informe um valor " TO nNum

    nNum := Val(nNum)
    
    if nNum >= 0
        nNum = nNum * -1
    end if

    QOut("O valor é: " + str(nNum))
RETURN nil