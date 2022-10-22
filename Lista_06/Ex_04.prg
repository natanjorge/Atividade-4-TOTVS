/*
4. Lembra do exercício da troca de valores entre 2 variáveis?
Implementar um programa que leia 2 valores informados pelo usuário
e através de um procedimento chamado “troca”, realize a troca dos
valores entre as duas variáveis.
*/

Function Main()

    local nN1:=0, nN2:=0

    ACCEPT("Informe o primeiro valor: ") to nN1
    ACCEPT("Informe o segundo valor: ") to nN2

    Troca (@nN1, @nN2)

RETURN NIL

Function Troca (nN1, nN2)

    local aux:=0

    Qout()
    aux:=aux+Val(nN1)
    nN1:= Val(nN2)
    nN2 := aux
    Qout("O primeiro valor é:", Alltrim(STR(nN1)), "e o segundo valor é:", Alltrim(STR(nN2)))
   
RETURN NIL