/* 7. Elaborar um programa que popule um vetor de 10 posições com
valores pares a partir de 2 até o 20. Exibir o conteúdo do vetor.
*/

function main()
    
    local nCont:=30, soma:= {}

    for nCont:=2 to 20 STEP 2
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