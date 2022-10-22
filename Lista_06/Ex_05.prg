/*
5. Implementar um procedimento que dado o dividendo e o divisor de
uma divisão, calcule tanto o quociente como o resto da divisão inteira. O
resultado não deverá ser exibido pelo procedimento. Deverá ficar
disponível para ser exibido ou manipulado pelo programa principal.
*/

Function Main()

    local ndividendo:=0, ndivisor:=0, nprint:=0,nprint2:=0

    ACCEPT("Informe o dividendo: ") to ndividendo
    ACCEPT("Informe o divisor: ") to ndivisor

    nprint:=CalcQuo(ndividendo, ndivisor)
    nprint2:=CalcRes(ndividendo, ndivisor)

    Qout("O valor do quociente é: ", Alltrim(STR(nprint)),"O valor do resto é: ", Alltrim(STR(nprint2)))

RETURN NIL

Function CalcQuo (ndividendo, ndivisor)

    local nQuociente:=0

    nQuociente:=(Val(ndividendo)/Val(ndivisor))

RETURN nQuociente

Function CalcRes (ndividendo, ndivisor)

    local nResto:=0 

    nResto:=(Val(ndividendo)%Val(ndivisor))

RETURN nResto