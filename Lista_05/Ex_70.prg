/*70.Altere o algoritmo do programa anterior de forma a não utilizar a
função “exp”.

*/

function Main()
local nNum:=3, nCont:=0

    for nCont:=0 to 15
    QOUT("3 elevado a",Alltrim(STR(nCont)),"é", Alltrim(STR(nNum**nCont)))
    next

RETURN Nil
