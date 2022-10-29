/*14.Ler duas matrizes A e B do tipo vetor com 20 elementos. Construir
uma matriz C, onde cada elemento de C é a subtração do elemento correspondente de A com B. Apresentar a matriz C.*/



function main()
    
    local  aVA:=ARRAY(4,5), aVB:=ARRAY(4,5), aVC:=ARRAY(4,5)
    local nCont:=1, nCont2:=1

    for nCont := 1 TO 5
        for nCont2:=1 to 4
            aVA[nCont2,nCont] := hb_randomint(1,100) 
            aVB[nCont2,nCont] := hb_randomint(1,100) 
            Qout( "C = A - B = A [",alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] - B [",alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] = ", ALLTRIM(STR(aVA[nCont2,nCont])), "-", ALLTRIM(STR(aVB[nCont2,nCont])))
            aVC[nCont2,nCont] := aVA[nCont2,nCont] - aVB[nCont2,nCont]

            Qout( "C [",alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] = ", ALLTRIM(STR(aVC[nCont2,nCont])))
            Qout()
        next
    next


RETURN nil

