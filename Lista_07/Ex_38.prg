/*38.Ler uma matriz A de 3 linhas e 3 colunas. Calcular e exibir uma matriz
B de mesmo tamanho, sendo que a primeira linha de B receba a
primeira coluna de A, a segunda linha de B receba a segunda coluna
de A e a terceira linha de B receba a terceira coluna de A. Apresentar
a matriz resultante.*/

Function Main()

    local A := ARRAY(3,3),B := ARRAY(3,3)
    local nCont2:=0,nCont:=0

    A[1][1] := "A"
    A[1][2] := "B"
    A[1][3] := "C"
    A[2][1] := "D"
    A[2][2] := "E"
    A[2][3] := "F"
    A[3][1] := "G"
    A[3][2] := "H"
    A[3][3] := "I"

    for nCont2:=1 to 3
        for nCont:=1 to 3
            B[nCont][nCont2]:=A[nCont2][nCont]
        next
    next

    QOUT("A primeira matriz é: ",CHR(13))
    QOUT(hb_valtoexp(A)) 

    QOUT("*****************************")
    
    QOUT("A segunda matriz é: ",CHR(13))
    QOUT(hb_valtoexp(B))
RETURN NIL