/*
49.Efetuar a leitura de 4 valores (variáveis A, B, C e D) e apresentar os
valores dispostos em ordem crescente.*/

function main()

    local ord := {}, A := 0, B := 0, C := 0, D := 0

    ACCEPT "Digite o primeiro valor: " TO A
    ACCEPT "Digite o segundo valor: " TO B
    ACCEPT "Digite o terceiro valor: " TO C
    ACCEPT "Digite o quarto valor: " TO D

    A:= Val(A)
    B:= Val(B)
    C:= Val(C)
    D:= Val(D)

    QOut("Os valores em ordem crescente são: ")

    ord := {A,B,C,D}
    Asort(ord)
    ? hb_ValToExp( ord )

    QOut(Alltrim(ord))

RETURN nil
