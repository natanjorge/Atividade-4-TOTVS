/*8. Efetuar e apresentar o valor com desconto, dado o valor normal e a
porcentagem de desconto.
*/

Function Main()

    local nV_des := 0, nV_nor := 0, nDes:= 0

    ACCEPT "Digite o valor: " TO nV_nor
    ACCEPT "Digite o valor do desconto : " TO nDes 
    
    nV_nor := Val(nV_nor)
    nDes := Val(nDes)

    nV_des := ((1-(nDes / 100)) * nV_nor)

    QOut("O valor com desconto é: " + str(nV_des))

RETURN nil