/*19. Fazer um programa que apresente o módulo de um valore informado
pelo usuário. O módulo é o número sempre positivo. Exemplo | 5 | = 5 e
| -5 | = 5 (módulo de 5 igual a cinco e módulo de -5 igual a cinco
também.*/

Function Main()

    local nNum := 0

    ACCEPT "Informe um valor " TO nNum

    nNum := ABS(Val(nNum))

    QOut("O número em módulo é: ", nNum)
RETURN nil