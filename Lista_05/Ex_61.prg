/*61.Desenvolver uma máquina de soma (cálculo de somatório). O
programa deverá ler uma série indefinida de valores informados pelo
usuário. A leitura deverá prosseguir até que o valor zero seja
informado. Ao final apresentar na tela o total do somatório.
Implementar uma versão com cada uma das três estruturas de
repetição e mais uma utilizando o desvio incondicional.
*/

function main()
    
    local num:=1, aux:=0, nCont:=1

    ACCEPT ("Entre com um número: ") to num 

    num:=Val(num)

    while num != 0
        aux:=aux+num
        ACCEPT ("Entre com um número: ") to num
        num:=Val(num)
    enddo

    Qout("A soma total é: ", Alltrim(STR(aux)))

//Início do programa com for

    for nCont:=1 to 2
        ACCEPT ("Entre com um número: ") to num
        num:=Val(num)
        aux:=aux+num
        if num == 0 
            nCont := 2
        else 
            nCont := 1
        end if
    next

    Qout("A soma total é: ", Alltrim(STR(aux)))

RETURN nil