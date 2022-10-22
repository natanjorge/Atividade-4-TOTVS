/*
6. Faça uma função para calcular o dobro de um número qualquer. O
programa principal deverá chamar essa função passando um valor
informado pelo usuário e exibir o resultado na tela.
*/

Function Main()

    local nNum:=0

    ACCEPT("Informe o número: ") to nNum

    Troca (nNum)

RETURN NIL

Function Troca (nNum)

    Qout()
    Qout("O dobro de ",nNum, "é:", Alltrim(STR(Val(nNum)*2)))
    Qout()

RETURN NIL