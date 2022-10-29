/* 9. Fazer uma função que apresente na tela todos os elementos de um
vetor que será passado como parâmetro para a função. Este
procedimento será útil para vários exercícios. Que tal colocá-lo numa
biblioteca?
*/

STATIC function ProjetaVetor(nCont,aV)

    for nCont := 1 TO Len(aV) 
        Qout(ALLTRIM(STR(aV[nCont])))
    next

RETURN nil