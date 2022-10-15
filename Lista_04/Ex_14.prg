/*14. Elaborar um programa que efetue a leitura de três valores. (A, B e C)
e apresente como resultado final a soma dos quadrados dos três valores
lidos.
*/

Function Main()

    local nV_A := 0, nV_B := 0, nV_C := 0

    ACCEPT "Digite o valor de A " TO nV_A
    ACCEPT "Digite o valor de B " TO nV_B
    ACCEPT "Digite o valor de C " TO nV_C
    
    nV_A := Val(nV_A)
    nV_B := Val(nV_B)
    nV_C := Val(nV_C)

    QOut("A soma dos quadrados dos três valores é: " + str(nV_A^2+ nV_B^2+ nV_C^2))

RETURN nil