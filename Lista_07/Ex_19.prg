/*19.Carregar um vetor com 50 caracteres gerados aleatoriamente
(randômicos). Serão válidos apenas caracteres que representem
letras maiúsculas de “A” até “Z”. A carga do vetor deverá ser feita
através de uma sub-rotina que é chamada automaticamente no
programa principal. Os caracteres podem se repetir.

*/

function main()
    
    local  aVA:=ARRAY(50)
    
    VetorCaracteres(aVA)


RETURN nil

function VetorCaracteres(aVA)

    local nCont:=1

    for nCont := 1 TO 50
        aVA[nCont] := CHR(hb_randomint(65,90))
        Qout( nCont,"º = ", aVA[nCont])
    next

RETURN nil