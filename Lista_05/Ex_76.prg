/*76.Para cada uma das séries abaixo, elabore um programa que calcule o
valor de Z. O valor de n deverá ser informado pelo usuário:
*/

Function Main()

    Local soma:=0, nNum:=0, nCont:=0, nInv:=0, nCont2 := 30, nEx:=""

    While nEx <> "A" .And. nEx <>"B" .And. nEx <>"C"
        ACCEPT("Informe qual ex deseja (A/B/C): ") to nEx
        nEX:=UPPER(nEx)
    enddo

    if nEx == "A"
        QOUT("*****   EX a)  *****")
        ACCEPT("Informe o valor de n para 1/1+1/2+...+1/n: ") to nNum

        nNum:=Val(nNum)

        for nCont:=0 to nNum
            soma:=soma+(1/nCont)
        next

        qout("A somatória de 1/n é: ", Alltrim(STR(soma)))

    elseif nEx == "B"
        QOUT("*****   EX b)  *****")
        QOUT("********************")        
        soma :=0
        FOR nCont := 1 to 30
            soma += (nCont/nCont2--)
        NEXT
        QOUT("********************")  
        qout("Valor de 1/30 + 2/29 + ... + 29/2 + 30/1 é: ", Alltrim(STR(soma)))

    elseif nEx == "C"
        QOUT("********************")
        QOUT("Valor de 1/2 - 2/4 + 3/6 ... ")
        QOUT("********************")        

        ACCEPT("Informe a quantidade de fraçoes ") to nNum

        nNum:=Val(nNum)
        soma :=0
        FOR nCont := 1 to nNum
            if nNum%2 == 0
                soma := 0
            else
                soma := 0.5
            end if
        NEXT
        qout("O valor de z é: ", Alltrim(STR(soma)))

    ENDIF

RETURN NIL