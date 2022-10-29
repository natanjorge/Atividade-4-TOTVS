/*13.Ler 8 elementos em uma matriz A tipo vetor. Construir uma matriz B
de mesma dimensão onde cada elemento é o triplo do elemento
correspondente da mátria A.*/



function main()
    
    local  aVA:=ARRAY(2,4),aVB:=ARRAY(2,4)
    local nCont:=1,nCont2:=1

    for nCont2:=1 to 2
        for nCont := 1 TO 4
            aVA[nCont2,nCont] := hb_randomint(1,100) 
            Qout( "A  = ", "[",alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] = ", ALLTRIM(STR(aVA[nCont2,nCont])))
            aVB[nCont2,nCont] := (aVA[nCont2,nCont]*3)
            Qout( "C = A [",alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] * 3 = C [",alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] = ", ALLTRIM(STR(aVB[nCont2,nCont])))
            Qout()
        next
    next

RETURN nil

