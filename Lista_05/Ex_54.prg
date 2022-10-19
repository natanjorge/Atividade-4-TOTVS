/*54.Elaborar um programa que exiba, na tela, todos os caracteres visuais
da tabela ASCII (do 32 ao 126) no formato “código – caractere”.
Exemplo: “80 – P”. Fazer 2 versões desta solução: uma utilizando laço
com pré-teste (enquanto), outra usando laço finito (para).
*/

function main()

    local nI, nCont := 32

    QOUT("FOR ")
    for nI := 32  TO 126
        QOUT(Alltrim(StrZero(nI, 3) + " - "+ Chr(nI)))
        
    next nI

    QOUT(Chr(10) + "WHILE ")
    while nCont <= 126
        QOUT(Alltrim(StrZero(nCont, 3) + " - "+ Chr(nCont)))
        nCont ++
    end do

RETURN nil