/* 9. Fazer uma função que apresente na tela todos os elementos de um
vetor que será passado como parâmetro para a função. Este
procedimento será útil para vários exercícios. Que tal colocá-lo numa
biblioteca?
*/

function main()
    
    local  aVA:=ARRAY(20),aVB:=ARRAY(20),aVC:=ARRAY(20)
    local nCont:=0

    for nCont := 1 TO 20
        aVA[nCont] := hb_randomint(1,1000)
        aVB[nCont] := hb_randomint(1,1000) 
        aVC[nCont] := aVA[nCont] + aVB[nCont]
        Qout( "C = A + B = ",ALLTRIM(STR(aVA[nCont])) + " + " + ALLTRIM(STR(aVB[nCont])) + " = " + ALLTRIM(STR(aVC[nCont])))
    next

RETURN nil
