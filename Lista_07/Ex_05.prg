/* 5. Elaborar um programa que popule um vetor de 30 posições com
valores de 1 até 30. Exibir o conteúdo do vetor.
*/

function main()
    
    local nCont:=1, soma:= {}

    for nCont:=1 to 30
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