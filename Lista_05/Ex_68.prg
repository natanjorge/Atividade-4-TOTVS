/*68.[Refactoring do CS 02]: Faça um programa que leia um conjunto de
notas de alunos de uma determinada turma, anotadas em cartões,
calcule e exiba a média das notas dos alunos. Sabe-se que a classe
possui 15 alunos.

*/

function Main()
local nNota:=0, nCont:=1, aux:=0, nMedia:=0

    for nCont:=1 to 15
    ACCEPT("Informe a nota dos alunos: ") to nNota
    nNota:=Val(nNota)
    QOUT("A nº da nota informada é: ", Alltrim(STR(nCont)))
    aux:=(aux+nNota)
    next

    nMedia:= (aux/15)

    QOUT("A média é: ", Alltrim(STR(nMedia)))

RETURN Nil