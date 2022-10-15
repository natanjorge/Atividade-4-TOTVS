/*4. Calcular e apresentar o valor do volume de uma lata de óleo, utilizando a
fórmula: VOLUME = 3,14159 x R2 x ALTURA.
*/

Function Main()

    local nRai := 0, nAlt := 0, nVol:= 0

    ACCEPT "Digite o valor do Raio em metros: " TO nRai
    ACCEPT "Digite o valor da altura em metros: " TO nAlt
    
    nRai := Val(nRai)
    nAlt := Val(nAlt)

    nVol := ((3.1415 * nRai^2)*(nAlt))

    QOut("O volume é: ", round(nVol,3),"metros ^3")

RETURN nil