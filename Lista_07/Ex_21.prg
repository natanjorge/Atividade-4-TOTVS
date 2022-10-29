/*21.Carregar um vetor com 12 caracteres gerados aleatoriamente
(randômicos). Se12rão válidos apenas caracteres que representem
letras minúsculas de “a” até “z”. A carga do vetor deverá ser feita
através de uma sub-rotina que é chamada automaticamente no 
programa principal. Os caracteres NÃO podem se repetir. Exibir no
final o vetor gerado. A exibição deverá ser feita via uma sub-rotina.

*/


FUNCTION MAIN()

    LOCAL aVetorA :={}, nN := 1, cElemento, cElementoB, cElementoS, nA

    Do WHILE nN <= 12 
        cElemento := HB_RandomInt(97,122)
        cElementoB := CHR(cElemento) 
        cElementoS := ASCAN(aVetorA, cElementoB) 
        IF cElementoS = 0 
            AADD(aVetorA, cElementoB)
        ENDIF
        nN++
    ENDDO

    ?hb_valtoexp(aVetorA)
    ?""

RETURN NIL