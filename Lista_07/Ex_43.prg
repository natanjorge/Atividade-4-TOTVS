/*43.Jogo da m�gica. Nesta m�gica as cartas de um baralho ser�o apresentadas na tela dispostas em 7 linhas e 3 colunas. 
O programa ser� capaz de adivinhar uma carta selecionada pelo usu�rio, que apenas indicar� em qual coluna a carta se encontra. 
[Solicitar demonstra��o ao professor]. Para implementar esse interessante jogo, implemente os seguintes passos:*/

Function Main()

    local nI:= 0, nJ:=1
    local nOpcao := 1
    local aCartas2 := {}
    local aMatriz7 := {}
    local a21 := {}
    local aCartas :={}, cNaipe:="", cNum:="",cCarta:=""
    
    for nI:=1 To 13
    for nJ:=1 to 4
        if nI == 1
            cNum:="A"
        elseif nI == 11
            cNum:="J"
        elseif nI == 12
            cNum:="Q"
        elseif nI == 13
            cNum:="K"
        else
            cNum:=AllTrim(str(nI))
        endif

        if nJ ==1
            cNaipe:= CHR(003)
        elseif nJ ==2
            cNaipe:= CHR(004)
        elseif nJ ==3
            cNaipe:= CHR(005)
        elseif nJ ==4
            cNaipe:= CHR(006)
        endif
        cCarta:= cNum+cNaipe
        AADD(aCartas, cCarta)
    next
next

    Embaralha(@aCartas)
    a21 := VETOR21(aCartas)
    ?
    QOUT("**")
    QOUT("Escolha uma carta")
    QOUT("**")
    a21 := MATRIZ7(a21)
    QOUT("")
    INPUT "Coloque aqui qual a coluna que sua carta está: " TO nOpcao
    a21 := MatrizVetor(a21 , nOpcao)
    a21 := MATRIZ7(a21)
    QOUT("")
    INPUT "Coloque aqui qual a coluna que sua carta está: " TO nOpcao
    a21 := MatrizVetor(a21 , nOpcao)
    a21 := MATRIZ7(a21)
    QOUT("")
    INPUT "Coloque aqui qual a coluna que sua carta está: " TO nOpcao

    a21 := MatrizVetor(a21 , nOpcao)
    QOUT("Sua carta escolhida foi: " , a21[11])


Return NIL
Function Embaralha(aCartas)

    local nAleatorio := 0
    local nI         := 0
    local nAux       := 0

    FOR nI := 1 TO len(aCartas)
        nAleatorio := INT(random() % len(aCartas) + 1)
        nAux := aCartas[nI]
        aCartas[nI] := aCartas[nAleatorio]
        aCartas[nAleatorio] := nAux
    NEXT nI 
Return aCartas

Function VETOR21(Cartas)

    local nI := 0
    local a21 := array(21)

    FOR nI := 1 TO 21

        a21[nI] := Cartas[nI]

    NEXT
    QOUT(hb_valtoexp(a21))
Return a21

Function MATRIZ7(Cartas)

    local nI   := 0
    local nJ   := 0
    local nAux := 21
    local aMatriz7 := ARRAY(7,3)

    FOR nJ := 1 TO 7
        FOR nI := 1 TO 3
            aMatriz7[nJ,nI] := Cartas[nAux]
            nAux--
        NEXT nI 
    NEXT nJ

    FOR nJ := 1 TO 7
    QOUT(hb_valtoexp(aMatriz7[nJ]))
    NEXT nJ
Return aMatriz7

Function MatrizVetor(aCartas7x3 , nOpcao)
    local aBaralho21 := array(21)
    local nI := 0

    IF nOpcao == 1 
        FOR nI := 1 to 7
            aBaralho21[ni] := aCartas7x3[nI][2]
            aBaralho21[ni+7] := aCartas7x3[nI][1]
            aBaralho21[ni+14] := aCartas7x3[nI][3]
        NEXT
    ELSEIF nOpcao == 3 
        FOR nI := 1 to 7
            aBaralho21[ni] := aCartas7x3[nI][1]
            aBaralho21[ni+7] := aCartas7x3[nI][3]
            aBaralho21[ni+14] := aCartas7x3[nI][2]
        NEXT
    ELSE
        FOR nI := 1 TO 7
            aBaralho21[ni] := aCartas7x3[nI][1]
            aBaralho21[ni+7] := aCartas7x3[nI][2]
            aBaralho21[ni+14] := aCartas7x3[nI][3]
        NEXT
    ENDIF

Return aBaralho21