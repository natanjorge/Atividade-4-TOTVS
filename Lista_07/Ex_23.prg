/*23.Fazer um programa que trate de um vetor de 8 elementos numéricos.
Ele deverá apresentar um menu que permitirá as seguintes
operações: [ a até j ]*/

Function Main()

    local aOpc:="", aLet:=""
    local nNum:=0, nN1:=0, nN2:=0, nCont:=1, aux:=0, aVB:={}
    local aVA:={}

    Qout("[ a ] Carregar o vetor através da leitura dos valores. ")
    Qout("[ b ] Exibir o conteúdo do vetor.")
    Qout("[ c ] Classificar os valores em ordem crescente. Caso o vetor esteja vazio, informar. ")
    Qout("[ d ] Classificar os valores em ordem decrescente. Caso o vetor esteja vazio, informar.")
    Qout("[ e ] Pesquisar a existência de um valor no vetor. Caso o vetor esteja vazio, informar.")
    Qout("[ f ] Informar o somatório dos valores do vetor.")
    Qout("[ g ] Informar a média dos valores do vetor.")
    Qout("[ h ] Informar o maior e o menor valor do vetor.")
    Qout("[ i ] Embaralhar o conteúdo do vetor.")
    Qout("[ j ] Informar os valores que se repetem e a quantidade de repetições.")
    Qout()
    
    ACCEPT("Informe uma opção entre 'a' e 'j': " ) to aOpc
    aOpc:=lower(aOpc)

    for nCont:=1 to 90
        aux:=(hb_randomint(0,99))
        AADD(aVA, aux)
    next

    if aOpc == "a"  
        Qout("[ a ] Carregar o vetor através da leitura dos valores.")

        ? hb_ValToExp(aVA)

        while nNum != ASC("F")
            ACCEPT("Informe o valor para carregar o vetor: ") to nNum
            nNum:=val(nNum)
            AdicionaVetor(nNum,aVa)
            
            Qout("Insira uma letra ou '0' para encerrar ")
        enddo


    elseif aOpc == "b"
        Qout("[ b ] Exibir o conteúdo do vetor.")
        Qout()
        
        ? hb_ValToExp(aVA)


    elseif aOpc == "c"
        Qout("[ c ] Classificar os valores em ordem crescente. ")
        Qout()
        
        Asort(aVA)
        ? hb_ValToExp(aVA)

    elseif aOpc == "d"
        Qout("[ d ] Classificar os valores em ordem decrescente. ")
        Qout()

        OrdemDec(aVa)

    elseif aOpc == "e"
        
        Qout("[ e ] Pesquisar a existência de um valor no vetor. ")
        Qout()

        ACCEPT("Informe um número: ") to nNum
        nNum:=val(nNum)

        VetorCaracteres(nNum,aVa,nCont)
    
    elseif aOpc == "f"
        

        Qout("[ f ] Informar o somatório dos valores do vetor. ")
        Qout()

        SomaVetor(nCont,aVA,aux)


    elseif aOpc == "g"
        

        Qout("[ g ] Informar a média dos valores do vetor. ")
        Qout()

        MediaVetor(nCont,aVA,aux)
    
    elseif aOpc == "h"
        
        Qout("[ h ] Informar o maior e o menor valor do vetor.")
        Qout()

        MaiorAndMenor(aVA)
    elseif aOpc == "i"
    
        
        Qout("[ i ] Embaralhar o conteúdo do vetor. ")
        Qout()

        EmbaralharVetor(aVA,nCont,aux)

    elseif aOpc == "j"
        
        Qout("[ j ] Informar os valores que se repetem e a quantidade de repetições. ")
        Qout()

        VetorRepete(aVa,nCont)

    endif

return nil

    Function AdicionaVetor(nNum,aVa)

        Qout()
        if nNum ==0
            break
        endif

        AADD(aVA, nNum)

        ? hb_ValToExp(aVA)

    return nil

    Function OrdemDec(aVa)

        local nCont:=1, aux:={}
        
        Asort(aVA)
        Qout()

        for nCont:=len(aVA) to 1 step -1
            AADD(aux, aVa[nCont])
        next

        ? hb_ValToExp(aux)

    return nil

    function VetorCaracteres(nNum,Ava,nCont)

        for nCont:=1 to len(Ava)
            if nNum == aVA[nCont]
                Qout("O número",(nNum),"que foi informado está presente no vetor",alltrim(STR(nCont)))
            else
                Qout( nCont,"º = ", alltrim(STR(aVA[nCont])))
            end if    
        next
    return nil

    function SomaVetor(nCont,aVA,aux)

        ? hb_ValToExp(aVA)

        aux:=0

        for nCont:=1 to len(aVA)
            aux+=aVa[nCont]
        next
        Qout()
        Qout("A somatória do vetor é: ", aux)

    return nil

    function MediaVetor(nCont,aVA,aux)

        ? hb_ValToExp(aVA)

        aux:=0

        for nCont:=1 to len(aVA)
            aux+=aVa[nCont]
        next
        Qout()
        Qout("A média dos valores do vetor é: ", alltrim(STR(aux/len(aVA))))

    return nil

    function MaiorAndMenor(aVA)

        Asort(aVa)

        ? hb_ValToExp(aVA)

        Qout()
        Qout("O menor valor do vetor é: ", alltrim(STR(aVA[1])))
        Qout("O maior valor do vetor é: ", alltrim(STR(aVA[len(aVA)])))

    return nil

    function EmbaralharVetor(aVA,nCont,aux)

        local aVB:={}, aux2:=0
        
        aux:=0


        Do WHILE LEN(aVB) != LEN(aVa)
        aux := HB_RandomInt(LEN(aVa))
        aux2 := ASCAN(aVB, aVa[aux]) 
            IF aux2 = 0 
            AADD(aVB, aVa[aux])
            ENDIF
        ENDDO
        ?hb_ValToExp(aVB)
        ?""


    return nil

    function VetorRepete(aVa,nCont)

        local rep:=0

        Asort(aVa)

        ? hb_ValToExp(aVA)

        for nCont:=1 to len(aVa)-1
            if aVa[nCont] == (aVa[nCont+1])
                rep+=1
                if nCont == len(aVa)-1 .and. (rep+1) >= 2
                    Qout("O número: ", alltrim(STR(aVa[nCont])), "aparece", alltrim(STR(rep+1)), "vezes! ")
                    rep:=0
                end if

            elseif (rep+1) >= 2
                Qout("O número: ", alltrim(STR(aVa[nCont])), "aparece", alltrim(STR(rep+1)), "vezes! ")
                rep:=0
            end if
        next
    return nil
