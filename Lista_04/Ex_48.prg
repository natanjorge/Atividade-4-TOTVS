/*48.Efetuar a leitura de três valores (variáveis A, B e C) e apresentar os
valores dispostos em ordem crescente.*/

function main()

    local ord := {}, A := 0, B := 0, C := 0

    ACCEPT "Digite o primeiro valor: " TO A
    ACCEPT "Digite o segundo valor: " TO B
    ACCEPT "Digite o terceiro valor: " TO C

    A:= Val(A)
    B:= Val(B)
    C:= Val(C)

    QOut("Os valores em ordem crescente são: ")

    ord := {A,B,C}
    Asort(ord)
    ? hb_ValToExp( ord )

    QOut(ord)

RETURN nil