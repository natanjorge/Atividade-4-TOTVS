/*58.Faça um programa que calcule a somatória dos dez primeiros
números naturais.
*/

function main()
    
    local num:=0, nCont:=1, aux:=0

    for nCont:=1 to 10
        ACCEPT ("Entre com um número: ") to num
        num:=Val(num)
        if num >= 0
            aux:=aux+num
            Qout("O número somado foi: ",num, "pos.nº", Alltrim(STR(nCont)))
        else
            Qout("Informe um número natural!")
            nCont--
        end if
    next nCont

    Qout("A soma total é: ", Alltrim(STR(aux)))

RETURN nil