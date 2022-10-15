/*7. Efetuar o cálculo e a apresentação do valor de uma prestação em atraso,
utilizando a fórmula, PRESTAÇÃO = VALOR + (VALOR x (TAXA / 100) x
TEMPO).
*/

Function Main()

    local nPre := 0, nVal := 0, nTax:= 0, nTem:= 0

    ACCEPT "Digite o valor: " TO nVal
    ACCEPT "Digite a Taxa : " TO nTax
    ACCEPT "Digite o tempo : " TO nTem   
    
    nVal := Val(nVal)
    nTax := Val(nTax)
    nTem := Val(nTem)

    nPre := (((nTax / 100)* nTem * nVal) + nVal)

    QOut("O valor da prestação em atraso é: " + str(nPre))

RETURN nil