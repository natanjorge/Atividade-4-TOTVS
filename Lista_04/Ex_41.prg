/*41.Efetuara leitura de três valores (variáveis A, B e C) e apresentar o
maior deles.
*/

function main()

    local A := 0, B := 0, C := 0, n_Mai:=0

    ACCEPT "Digite o primeiro valor: " TO A
    ACCEPT "Digite o segundo valor: " TO B
    ACCEPT "Digite o terceiro valor: " TO C

    A:= Val(A)
    B:= Val(B)
    C:= Val(C)

    if (A>B)

        if (A>C)
            n_Mai := A
        else 
            n_Mai := C
        end if

    else
        if (B>C)
            n_Mai := B
        else
            n_Mai := C
        
        end if
    end if

    QOUT("O maior valor é: ", n_Mai)

RETURN nil