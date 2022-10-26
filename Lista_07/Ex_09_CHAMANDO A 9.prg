/* 8. Ler dois vetores A e B, de 20 elementos cada e calcular um terceiro,
C, onde cada elemento será a soma dos correspondentes em A e B.
Apresentar o vetor resultante.
*/

SET PROCEDURE to Ex_09.prg 

function Main()
    
    local aV:=ARRAY(5)
    local nCont:=0

    for nCont := 1 TO 5
        aV[nCont] := hb_randomint(1,100)
    next

    ? ProjetaVetor(nCont,aV)

RETURN nil
