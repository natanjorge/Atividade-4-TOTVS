/*13. Elaborar um programa que efetue a apresentação do valor da
conversão em dólar (US$) de um valor lido em real (R$). O programa
deverá solicitar o valor da cotação do dólar e, também, a quantidade de
reais disponível com o usuário.
*/

Function Main()

    local nCot := 0, nRea := 0

    ACCEPT "Digite o valor da cotação do dólar " TO nCot
    ACCEPT "Digite a quantidade de reais disponível " TO nRea
    
    nCot := Val(nCot)
    nRea := Val(nRea)

    QOut("Valor em Reais é: " + "R$" + str(nRea/nCot))

RETURN nil