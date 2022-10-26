/*12.Fazer um programa que carregue um vetor de 8 elementos e que
inverta a ordem do seu conteúdo. Apresente no final o vetor invertido.
Usar apenas uma variável composta.*/

function main()
    
    local  aVA:=ARRAY(8)
    local nCont:=0,nCont2:=8
    
    for nCont := 1 TO 8
        aVA[nCont] := hb_randomint(1,100) 
        Qout( "A  = ", ALLTRIM(STR(aVA[nCont])))
    next

    for nCont2:=8 to 1 step -1
        aVA[nCont2] := aVA[nCont2]
        Qout( "B  = ", ALLTRIM(STR(aVA[nCont2])))
    next
RETURN nil