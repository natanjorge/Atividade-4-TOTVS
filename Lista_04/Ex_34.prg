/*34.Ler um valor e escrever se é positivo, negativo ou zero.
*/

Function Main()

    
    Local n_val := 0
 
    ACCEPT "Informe o valor: " to n_val

    n_val := val(n_val)

    If n_val > 0
        QOUT ("O valor:", n_val, "é positivo")

    elseif (n_val < 0)
        QOUT ("O valo:", n_val, " é negativo")

    Else
        QOUT ("O valo:", n_val, " é nulo")
    endif

Return NIL