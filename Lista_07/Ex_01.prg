/*1. Fazer um programa que dados um número de 1 até 7, apresente o
nome do dia da semana correspondente. Considere 1 como
“Domingo”. Utilize vetor.

*/
function main ()

local nDia_int:=0

    ACCEPT("Digite o número do dia da semana: [1 a 7] ") to nDia_int
    nDia_int:=Val(nDia_int)

    Semana(nDia_int)

return nil

function Semana(nDia_int)

    local aDia:={}

    Qout()
    if nDia_int >= 1 .and. nDia_int <= 7
        aDia:={"Domingo","Segunda","Terça","Quarta","Quinta","Sexta","Sábado"}

        Qout(aDia[nDia_int])
    else
        Qout("Valor inválido! ")
    endif
    
return nil
