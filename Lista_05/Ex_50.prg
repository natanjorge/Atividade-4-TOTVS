/*50.Elaborar um programa que exiba na tela automaticamente todos os
números naturais entre 0 e 100, em ordem crescente. Fazer 3 versões
desta solução: uma utilizando laço com pré-teste (enquanto), outra
usando laço com pós-teste (repita) e uma última usando laço finito
(para).
*/


Function Main()

    local num:=0

    while ( num <= 100)
        Qout ("0 a 100 usando enquanto: ", ALLtrim(STR(num)))
        num++
    enddo

    num:=0
    do while num<=100
        Qout ("0 a 100 usando repita: ", ALLtrim(STR(num)))
        num++
        if num > 100
            exit
        end if
    end do
 
    for num:= 0 to 100
       Qout ("0 a 100 usando for: ", ALLtrim(STR(num)))
    next num
RETURN nil