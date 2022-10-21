/*69.Elaborar um programa que calcule e exiba as potências de 3 variando
de 0 até 15, ou seja, 30, 31, 32, ... , 314, 315. O Pascal não possui uma
função para cálculo de potência, mas possui uma para cálculo de
exponencial. Desta forma através de propriedade matemática dos
logaritmos, você pode resolver cálculo de potência e até de raízes n
ésimas da seguinte forma: exp( expoente * ln(base));

*/

function Main()
local nNum:=3, nCont:=0

    for nCont:=0 to 15
    QOUT("3 elevado a",Alltrim(STR(nCont)),"é",Alltrim(STR(3^nCont)))
    next

RETURN Nil