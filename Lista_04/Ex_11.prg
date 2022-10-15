/*11. Ler dois inteiros (variáveis A e B) e imprimir o resultado do quadrado
da diferença do primeiro valor pelo segundo.*/

Function Main()

    local nVar_A := 0, nVar_B := 0

    ACCEPT "Digite o valor de A " TO nVar_A
    ACCEPT "Digite  o valor de B " TO nVar_B
    
    nVar_A := Val(nVar_A)
    nVar_B := Val(nVar_B)

    QOut("O valor de A é: " + str((nVar_A-nVar_B)^2))

RETURN nil