/*53.Elaborar um programa que exiba na tela, automaticamente, valores
gerados aleatoriamente, entre 10 e 99. Os valores deverão ser
gerados indefinidamente até que surja o valor 80, que ao surgir não
deve ser exibido na tela. Fazer 3 versões desta solução: uma
utilizando laço com pré-teste (enquanto), outra usando laço com
pós-teste (repita) e uma última usando laço finito (para).
*/


Function Main()

    local num:=0, nCont:=1,num1:=0,nCont1:=1, num2:=0, nCont2:=1

    while num!=80

        num := Random(10, 99)% 99 + 1
        if num == 80
            exit
        else
            Qout ("Nºs entre 10 e 99 até o nº 80, usando enquanto: ", ALLtrim(STR(num)))
        nCont++
        end if
    enddo



    do while num1!=80
        num1 := Random(10, 99)% 99 + 1
        if num1 == 80
            exit
        end if
        Qout ("Nºs entre 10 e 99 até o nº 80, usando repita: ", ALLtrim(STR(num1)))
        num1++
    end do



    for nCont2:=1 to 100
        num2 := Random(10, 99)% 99 + 1
        if num2 == 80

        else
           Qout ("Nºs entre 10 e 99 até o nº 80, usando for: ", ALLtrim(STR(num2)))
        nCont2++
        end if
    next num2

RETURN nil