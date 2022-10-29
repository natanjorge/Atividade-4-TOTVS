/* 
8. Ler dois vetores A e B, de 20 elementos cada e calcular um terceiro,
C, onde cada elemento será a soma dos correspondentes em A e B.
Apresentar o vetor resultante.
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
