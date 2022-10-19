/*59.Faça um programa que calcule a somatória dos dez primeiros
números naturais pares.
*/

function main()
    
    local num:=0, nCont:=1, aux:=0

    for nCont:=1 to 10
        num := (hb_randomint(1,99))
        if num %2==0
            aux:=aux+num
            Qout("A soma é: ",Alltrim(STR(num)))
        else
            nCont--
        end if
    next nCont

    Qout("A soma total é: ", Alltrim(STR(aux)))
RETURN nil
