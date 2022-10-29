/*17.Ler uma matriz A do tipo vetor com 10 elementos. Construir uma
matriz B de mesmo tipo, sendo que cada elemento de B seja o
somatório do primeiro até o elemento correspondente de A.
Apresentar os elementos da matriz B.
*/

function main()
    
    local  aVA:=ARRAY(2,5), aVB:=ARRAY(2,5)
    local nCont:=1, nCont2:=1, aux:=0

    for nCont2:=1 to 2
        for nCont:= 1 to 5
        aVA[nCont2,nCont] := hb_randomint(1,100) 
            Qout( "A [", alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] = A = ", alltrim(STR(aVA[nCont2,nCont])))
        aux+=aVA[nCont2,nCont] //aux faz a somatória de aVa
        aVB[nCont2,nCont]:=aux //aVB recebe o valor de aux
            Qout( "B [",alltrim(STR(nCont2)),",",alltrim(STR(nCont)),"] = B = ", alltrim(STR(aVB[(nCont2),nCont])))
            Qout()
        next
    next

RETURN nil