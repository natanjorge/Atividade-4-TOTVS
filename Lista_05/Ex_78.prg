/*78.Fazer um programa para determinar e exibir se um número informado
é primo.
*/

Function Main()

    Local nNum:=0, nVal:=1, div:=0

    ACCEPT("Informe um número ") to nNum
    nNum:=Val(nNum)
        
    if nNum > 0
        while nVal <= nNum    
            if nNum%nVal==0
                div++
            end if
            nVal++
        enddo

        if div == 2
            qout("O número",Alltrim(STR(nNum)),"é primo")
        else
             qout("O número",Alltrim(STR(nNum)),"não é primo")
        end if
    else
     qout("O valor informado é negativo ou igual a zero")
    end if

RETURN NIL