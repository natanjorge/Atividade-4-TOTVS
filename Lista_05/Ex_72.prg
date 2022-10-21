/*72.Fazer um programa para calcular e exibir os "n" primeiros números da
série de Fibonacci. O usuário informará o valor de n.
*/


Function Main()

    local nNum    := 0
        ACCEPT "Insira quantos números da serie Fibonacci quer ver: " TO nNum
            nNum := val(nNum)
    CalcFib (nNum)
    
Return NIL

function CalcFib (nNum)

    local nA      := 0
    local nB      := 1
    local nC      := 0
    local nCont   := 1

    if nNum = 0
        QOUT(nA)
    elseif nNum = 1
        QOUT(nB)
    else
        QOUT()
        QOUT("A sequencia Fibonacci é: ")
        QOUT()
        QOUT(StrZero(nCont,4) , ":" , AllTrim(str(nB)))
        while (nCont < nNum)
            nC := nA + nB
            nA := nB
            nB := nC
                nCont++
            QOUT(StrZero(nCont,4) , ":" , AllTrim(str(nC)))
       enddo   
    endif

RETURN NIL