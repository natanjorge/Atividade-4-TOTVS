/* 9. Fazer uma função que apresente na tela todos os elementos de um
vetor que será passado como parâmetro para a função. Este
procedimento será útil para vários exercícios. Que tal colocá-lo numa
biblioteca?
*/

SET PROCEDURE to Ex_09.prg 

function Main()
    
    local aV:=ARRAY(5)
    local nCont:=0

    for nCont := 1 TO 5
        aV[nCont] := hb_randomint(1,100)
    next

    ? ProjetaVetor(nCont,aV)

RETURN nil
