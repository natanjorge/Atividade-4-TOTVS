/*71.Fazer um programa que dado um número inteiro positivo, informado
pelo usuário, calcule n e exiba o seu fatorial.
*/

local nFatorial := 0, nNum := 0

    ACCEPT "Digite um numero para saber o valor de seu fatorial: " to nNum

    WHILE ISDIGIT(nNum) = .F.
        ACCEPT "Voce nao digitou um numero, digite um NUMERO para saber o valor de seu fatorial: " to nNum
    ENDDO

    nFatorial := Fact(Val(nNum))
    QOUT("O fatorial de", Alltrim(nNum), "é: ", Alltrim(STR(nFatorial)))
