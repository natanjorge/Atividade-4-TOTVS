/*3. Ler 10 elementos de uma matriz tipo vetor e apresentá-los na ordem
inversa em que foram lidos e armazenados.
*/
function main ()

    local B:={}, nNum:=5, nFim:=2

    AADD(B, {10,20})
    AADD(B, {15,35})
    AADD(B, {53,25})
    AADD(B, {12,91})
    AADD(B, {40,42})

    for nNum:=5 to 1 STEP -1
        Qout(B[nNum,nFim], "   =   B", "[",alltrim(STR(nNum)),",",alltrim(STR(nFim)),"]")
    next

    nFim:=1
    for nNum:=5 to 1 STEP -1
        Qout(B[nNum,nFim], "   =   B","[",alltrim(STR(nNum)),",",alltrim(STR(nFim)),"]")
    next

return nil
