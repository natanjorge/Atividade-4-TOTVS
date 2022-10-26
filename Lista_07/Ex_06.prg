/* 6. Elaborar um programa que popule um vetor de 30 posições com
valores de 30 até 1. Exibir o conteúdo do vetor.
*/

function main()
    
    local nCont:=30, soma:= {}

    for nCont:=30 to 1 STEP -1
        aAdd(soma,nCont)
    next 

    Somatoria(soma)

RETURN nil

static function Somatoria(soma)

    local num:=0

    Qout()

    for num := 1 to Len(soma)
        Qout(soma[num]) 
    next
    
RETURN nil