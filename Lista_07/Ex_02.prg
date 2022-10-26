/*2. Ler 10 elementos de uma matriz tipo vetor e apresentá-los depois de
todos serem lidos.
*/
function main ()

    local B:={}, nNum:=1, nFim:=1

    AADD(B, {10,20})
    AADD(B, {15,35})
    AADD(B, {53,25})
    AADD(B, {12,91})
    AADD(B, {40,42})

    for nNum:=1 to 5
        Qout(B[nNum,nFim], "   =   B", "[",alltrim(STR(nNum)),",",alltrim(STR(nFim)),"]")
    next

    nFim:=2
    for nNum:=1 to 5
        Qout(B[nNum,nFim], "   =   B","[",alltrim(STR(nNum)),",",alltrim(STR(nFim)),"]")
    next

return nil
