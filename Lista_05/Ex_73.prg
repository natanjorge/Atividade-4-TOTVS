/*73.Faça um programa que leia um conjunto de notas de alunos anotadas
em cartões, calcule e exiba a média das notas dos alunos, assim
como a maior e a menor nota da turma. Deverá funcionar para turma
com qualquer quantidade de alunos, que sempre corresponderá à
quantidade de notas armazenadas nos cartões. A tecla “ESC” indica o
encerramento da série de notas.

*/

#include "inkey.ch"

function main()

    local nNota
    local nTotal := 0
    local nCont := 0

    do while inkey(1) != K_ESC
        ACCEPT "Digite a nota do aluno ou insira '0' e aperte 'esc' para sair: " TO nNota

        QOUT("Inserindo nota...")
        millisec(500)
        nNota := Val(nNota)
        nTotal += nNota    
        nCont ++    
    end do

    QOUT("Número de alunos: " + Alltrim(Str(nCont)))
    QOUT("A média da sala é de: " + Alltrim(Str(nTotal/nCont)))

RETURN nil