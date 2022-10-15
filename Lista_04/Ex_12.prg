/*
12. Elaborar um programa que efetue a apresentação do valor da
conversão em real (R$) de um valor lido em dólar (US$). O programa
deverá solicitar o valor da cotação do dólar e, também, a quantidade de
dólares disponível com o usuário.*/

Function Main()

    local nCot := 0, nDol := 0

    ACCEPT "Digite o valor da cotação do dólar " TO nCot
    ACCEPT "Digite a quantidade de dólares disponível " TO nDol
    
    nCot := Val(nCot)
    nDol := Val(nDol)

    QOut("Valor em Reais: " + str(nDol*nCot))

RETURN nil