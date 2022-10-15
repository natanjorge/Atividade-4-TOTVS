/*1. Ler dois números positivos e apresentar a soma, diferença, produto e
quociente entre eles.
*/

Function Main()

    local nNum1 := 0, nNum2 := 0 
    
    ACCEPT "Digite o primeiro número: " TO nNum1
    ACCEPT "Digite o segundo número: " TO nNum2
    
    nNum1 := Val(nNum1)
    nNum2 := Val(nNum2)

    QOut("A soma dos números é ", (nNum1+nNum2))
    QOut("A diferença dos números é ", (nNum1-nNum2))
    QOut("O produto dos números é ", (nNum1*nNum2))
    QOut("O quociente é dos números ",(nNum1/nNum2))

RETURN nil