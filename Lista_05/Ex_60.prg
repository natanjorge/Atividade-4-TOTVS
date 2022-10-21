/*60.Faça um programa que calcule a somatória dos "n" primeiros números
naturais pares ou ímpares. O usuário informará através de digitação:
a quantidade de números desejada ("n") e escolhe entre par o ímpar.
*/

function main()
    
    local num:=0, nCont:=1, aux:=0, par:="", qtd:=0

    ACCEPT ("Entre com um número: ") to qtd
    ACCEPT ("Par ou impar? P/I ") to par

    qtd:=Val(qtd)

    for nCont:=1 to qtd
    
        num := (hb_randomint(1,99))

        if par == "P" .and. num %2==0
            aux:=aux+num
            Qout("A soma é: ",Alltrim(STR(num)))

        elseif par == "I" .and. num %2!=0
            aux:=aux+num
            Qout("A soma é: ",Alltrim(STR(num)))
        else
            nCont--
        end if

    next nCont

    Qout("A soma total é: ", Alltrim(STR(aux)))

RETURN nil
