/*30.Elaborar um programa que efetue a leitura de um valor que esteja
entre a faixa de 1 a 9. Após a leitura do valor fornecido pelo usuário,
o programa deverá indicar uma de duas mensagens: "O valor está na
faixa permitida", caso o usuário forneça o valor nesta faixa ou a
mensagem "O valor está fora da faixa permitida", caso o usuário
forneça valores menores que 1 ou maiores que 9.
*/

Function Main()

    local nVal_1 := 0

    ACCEPT "Digite o valor " TO nVal_1
    
    nVal_1 := Val(nVal_1)

    if(nVal_1 >= 1 .And. nVal_1 <= 9)
        QOut("O valor está na faixa permitida")
    else
        QOut("O valor está fora da faixa permitida")
    end if

RETURN nil