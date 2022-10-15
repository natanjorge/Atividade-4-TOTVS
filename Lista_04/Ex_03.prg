/*3. Ler uma temperatura em graus Fahrenheit e apresentá-la convertida em
graus Celsius. A fórmula de conversão é: C (F - 32) * (5/9). Onde F é a
temperatura em Fahrenheit e C é a temperatura em Celsius.
*/

Function Main()

    local nC1 := 0, nFah := 0 
    
    ACCEPT "Digite a temperatura em Fahrenheit é: " TO nFah
    
    nFah := Val(nFah)

    nC1=((nFah-32) * (5/9))

    QOut("A temperatura em Celsius é: ", (nC1),"°C")

RETURN nil