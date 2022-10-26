/*21.Carregar um vetor com 12 caracteres gerados aleatoriamente
(randômicos). Se12rão válidos apenas caracteres que representem
letras minúsculas de “a” até “z”. A carga do vetor deverá ser feita
através de uma sub-rotina que é chamada automaticamente no
*/

function main()
    
    local aVA:=ARRAY(12)

    VetorCaracteres(aVA)

RETURN nil

function VetorCaracteres(aVA)

    local nCont:=1

    for nCont := 1 TO 12
        aVA[nCont] := CHR(hb_randomint(97,122))
        Qout(alltrim(STR(nCont)),"º  -  ", alltrim(aVA[nCont]))
    next

RETURN nil