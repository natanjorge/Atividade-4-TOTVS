/*26.Elaborar um programa que calcule a raiz real de uma equação de 1º
grau, informados os valores do coeficiente de x (a) e do elemento
neutro (b).
*/

Function Main()
    Local a :=0, b :=0, x

    ACCEPT "Digite o valor de a: " to a
    ACCEPT "Digite o valor de b: " to b

    x = -Val(b) / Val(a)

    QOUT("Oresultado da equação é de: " + ALLtrim(STR(x)))

RETURN NIL

RETURN nil