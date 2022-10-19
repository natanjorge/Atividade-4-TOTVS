/*52.Elaborar um programa que exiba na tela, automaticamente, 50
valores gerados aleatoriamente, entre 10 e 99. Fazer 3 versões desta
solução: uma utilizando laço com pré-teste (enquanto), outra usando
laço com pós-teste (repita) e uma última usando laço finito (para).

*/


Function Main()

    local num:=0, nCont:=1

    while nCont<=50
        Qout ("50 nºs entre 10 e 99, usando enquanto: ", ALLtrim(STR(num:= (hb_randomint(10,99)))))
        nCont++
    enddo

    nCont:=0
    
    do while nCont<=50
        Qout ("50 nºs entre 10 e 99, usando repita: ", ALLtrim(STR(num:= (hb_randomint(10,99)))))
        nCont++
        if nCont >4
            exit
        end if
    end do

    for nCont:= 1 to 50
        Qout ("50 nºs entre 10 e 99, usando for: ", ALLtrim(STR(num:= (hb_randomint(10,99)))))
    next num

RETURN nil