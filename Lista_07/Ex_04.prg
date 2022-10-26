/* 4. Dado um número de 1 até 12, apresentar o número de dias do mês
correspondente. Se o número escolhido for 2 (fevereiro), considere 28
dias. Usar vetor.

*/
function main ()

    local nNum_mes:=0

    ACCEPT("Digite o nº do mês para saber nº de dias correspondente: [1 a 12] ") to nNum_mes

    Semana(nNum_mes)

return nil

function Semana(nNum_mes)

    local aMes:={}

    nNum_mes:=Val(nNum_mes)
    
    Qout()
    if nNum_mes >= 1 .and. nNum_mes <= 12
        aMes:={"31","28","31","30","31","30","31","31","30","31","30","31"}

        Qout(aMes[nNum_mes])
    else
        Qout("Valor inválido! ")
    endif
    
return nil
