/*51.Elaborar um programa que exiba na tela automaticamente todos os
números naturais entre 100 e 0, em ordem decrescente. Fazer 3
versões desta solução: uma utilizando laço com pré-teste (enquanto),
outra usando laço com pós-teste (repita) e uma última usando laço
finito (para).
*/


Function Main()

    local num:=100

    while ( num >= 0)
        Qout ("100 a 0 usando enquanto: ", ALLtrim(STR(num)))
        num--
    enddo

        num:=100
    do while num>=0
        Qout ("100 a 0 usando repita: ", ALLtrim(STR(num)))
        num--
        if num < 0
            exit
        end if
    end do

    for num:= 100 to 0 STEP -1
       Qout ("100 a 0 usando for: ", ALLtrim(STR(num)))
    next num

RETURN nil