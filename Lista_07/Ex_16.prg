/*16.Ler uma matriz A do tipo vetor com 5 elementos. Construir uma
matriz B de mesmo tipo e dimensão, onde cada elemento da matriz
B deverá ser o valor inverso (sinal trocado) do elemento
correspondente da matriz A. Apresentar os elementos da matriz.
*/

function main()
    
    local  aVA:=ARRAY(1,5), aVB:=ARRAY(1,5)
    local nCont:=1, nCont2:=1

    for nCont:= 1 to 5
        aVA[nCont2,nCont] := hb_randomint(1,100) 
        Qout( "A [", alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] = A = ", alltrim(STR(aVA[nCont2,nCont])))
        aVB[nCont2,nCont]:= aVA[nCont2,nCont]*-1
        Qout( "B [",alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] = B = ", alltrim(STR(aVB[nCont2,nCont])))
     Qout()
    next

RETURN nil