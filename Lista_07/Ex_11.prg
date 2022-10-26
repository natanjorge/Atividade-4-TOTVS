/*11.Ler um vetor A de 15 elementos e a partir dele construir um vetor B
de mesmo tamanho, sendo o inverso de A, ou seja, o primeiro
elemento de B deverá receber o último de A o segundo de B deverá
receber o penúltimo de A e assim por diante.*/

function main()
    
    local  aVA:=ARRAY(15),aVB:=ARRAY(15)
    local nCont:=0,nCont2:=15
    
    for nCont := 1 TO 15
        aVA[nCont] := hb_randomint(1,100) 
        Qout( "A  = ", ALLTRIM(STR(aVA[nCont])))
    next

    for nCont2 := 15 TO 1 STEP -1
        aVB[nCont2] := aVA[nCont2]
        Qout( "B  = ", ALLTRIM(STR(aVB[nCont2])))
    next

RETURN nil