/*2. Ler uma temperatura em graus Celsius e apresentá-la convertida em
graus Fahrenheit. A fórmula de conversão é: F (9* C + 160) / 5. Onde F
é a temperatura em Fahrenheit e C é a temperatura em Celsius.
*/

Function Main()

    local nC1 := 0, nFah := 0 
    
    ACCEPT "Digite a temperatura em Cº: " TO nC1
    
    nC1 := Val(nC1)

    nFah=((9*nC1+160)/5)

    QOut("A temperatura em Fahrenheit é: ", (nFah),"°F")

RETURN nil