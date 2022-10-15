/*10. Efetuar a leitura de um número inteiro e apresentar o resultado do
quadrado deste número.
*/

Function Main()

    local nNum := 0

    ACCEPT "Digite o valor de um número inteiro " TO nNum
    
    nNum := Val(nNum)

    QOut("O valor do número ao quadrado é: " + str(nNum^2))

RETURN nil