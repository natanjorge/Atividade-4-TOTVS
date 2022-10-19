/*57.Elaborar um programa que gere, automaticamente, valores
aleatórios, entre 0 e 99 e exiba na tela apenas àqueles que são
múltiplos de um número informado pelo usuário. A quantidade de
valores a serem gerados, também deve ser informado pelo usuário. Fazer duas
versões da solução utilizando diferentes estruturas de repetição, a
sua escolha.
*/

function main()
    
    local num:=0, div:=0, ab, nCont:=1, nCont2:=0, num2:=0

    ACCEPT("Insira um valor para realizar a divisão (while) ")to div
    ACCEPT("Insira a quantidade de valores a serem gerados (while) ")to nCont2
    div:=Val(div)
    nCont2:=Val(nCont2)

    while nCont <= nCont2
        
        num := (hb_randomint(1,99))
        ab:= (num % div)

        if ab == 0
            Qout ("Valor gerado: ", ALLtrim(STR(num)), "nº: ", ALLtrim(STR(nCont)))
            nCont++
        end if
    enddo

    ACCEPT("Insira um valor para realizar a divisão (for) ")to div
    ACCEPT("Insira a quantidade de valores a serem gerados (for) ")to nCont2
    div:=Val(div)
    nCont2:=Val(nCont2)

    for nCont:=1 to nCont2 STEP 1

        num2 := (hb_randomint(1,99))
        ab:= (num2 % div)

        if ab == 0
            Qout ("Valor gerado com for: ", ALLtrim(STR(num2)), "nº: ", ALLtrim(STR(nCont)))
        else
            nCont--
        end if
    
    next nCont == nCont2

RETURN nil

