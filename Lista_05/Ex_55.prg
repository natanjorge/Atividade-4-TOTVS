/*55.Elaborar um programa que exiba na tela automaticamente todos os
múltiplos de 3 existentes entre 1 e 100. Utilizar obrigatoriamente o
laço finito (para) para esta solução.
*/

function main()

    local nI

    for nI := 0  TO 100 STEP 3
        QOUT(Alltrim(StrZero(nI, 3)))
    next nI
    QOUT("Fim do programa! ")
RETURN nil