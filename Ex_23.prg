/*23.Fazer um programa que trate de um vetor de 8 elementos numéricos.
Ele deverá apresentar um menu que permitirá as seguintes
operações: [ a até j ]*/

Function Main()

    local aOpc:="", aLet:="", nCar:=0
    local nNum:=0, nN1:=0, nN2:=0, nCont:=1, aux:=0 
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

    for nCont:=1 to 8
        aux:=round(Random()%99,0)
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

        ACCEPT("Informe um letra: ") to nCar
        nCar:=val(nCar)

        VetorCaracteres(nCar,aVa)

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

    function VetorCaracteres(nCar,Ava)

        local nCont:=1, aVB:={}

        for nCont:=1 to len(Ava)
            if nCar == aVA[nCont]
                Qout("O caracter",alltrim(nCar),"que foi informado está presente no vetor",alltrim(STR(nCont)))
            else
                Qout( nCont,"º = ", aVA[nCont])
            end if    
        next

    return nil
