/*9. Ler dois valores para as variáveis A e B, efetuar a troca dos valores de
forma que a variável A passe a possuir o valor da variável B e que a
variável B passe a possuir o valor da variável A. Apresentar os valores
trocados. Os valores devem ser efetivamente trocados nas respectivas
variáveis.
*/

Function Main()

    local nV_A := 0, nV_B := 0, nAux:= 0

    ACCEPT "Digite o valor de A: " TO nV_A
    ACCEPT "Digite o valor de B: " TO nV_B
    
    nV_A := Val(nV_A)
    nV_B := Val(nV_B)

    nAux = nV_A
    nV_A = nV_B
    nV_B = nAux

    QOut("O valor de A é: " + str(nV_A))
    QOut("O valor de B é: " + str(nV_B))

RETURN nil