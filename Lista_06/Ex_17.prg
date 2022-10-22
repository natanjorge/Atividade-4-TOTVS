/*
17.Criar um programa de funções com literais e nela disponibilizar as funções:
a. iTroca(a, b): troca os valores entre as variáveis a e b.
b. isPar(x): informa se o inteiro enviado é um número par.
c. isImPar(x): informa se o inteiro enviado é um número ímpar.
d. Inverte(x): retorna o número com sinal invertido.
e. isDiv(a, b): retorna se a é divisível por b.

*/

Function Main()

    local aOpc:="", aLet:="" 
    local nNum:=0, nN1:=0, nN2:=0

    Qout("[ a ] iTroca(a, b): troca os valores entre as variáveis a e b. ")
    Qout("[ b ] isPar(x): informa se o inteiro enviado é um número par.")
    Qout("[ c ] isImPar(x): informa se o inteiro enviado é um número ímpar. ")
    Qout("[ d ] Inverte(x): retorna o número com sinal invertido.")
    Qout("[ e ] isDiv(a, b): retorna se a é divisível por b.")
    Qout()
    
    ACCEPT("Informe uma opção entre 'a' e 'e': " ) to aOpc
    aOpc:=lower(aOpc)

    if aOpc == "a"  
        Qout("[ a ] iTroca(a, b): troca os valores entre as variáveis a e b.")
        
        ACCEPT("Informe o primeiro valor: ") to nN1
        ACCEPT("Informe o segundo valor: ") to nN2

        iTroca (@nN1, @nN2)

    elseif aOpc == "b"
        Qout("[ b ] isPar(x): informa se o inteiro enviado é um número par.")
        ACCEPT("Escreva um valor: ") to nNum
        isPar (nNum)

    elseif aOpc == "c"
        Qout("[ c ] isImPar(x): informa se o inteiro enviado é um número ímpar.")
        ACCEPT("Escreva um valor: ") to nNum
        isImPar (nNum)

    elseif aOpc == "d"
        Qout("[ d ] Inverte(x): retorna o número com sinal invertido.")
        ACCEPT("Escreva um valor: ") to nNum
        Inverte (nNum)

    elseif aOpc == "e"  
        Qout("[ e ] isDiv(a, b): retorna se a é divisível por b.")
        
        ACCEPT("Informe o valor de a: ") to nN1
        ACCEPT("Informe o valor de b: ") to nN2

        isDiv (nN1, nN2)
    endif

RETURN NIL

Function iTroca (nN1, nN2)

    local aux:=0

    Qout()
    aux:=aux+Val(nN1)
    nN1:= Val(nN2)
    nN2 := aux
    Qout("O primeiro valor é:", Alltrim(STR(nN1)), "e o segundo valor é:", Alltrim(STR(nN2)))

RETURN NIL

Function isPar (nNum)

    nNum:= Val(nNum)
    if nNum%2 == 0
        Qout(nNum, "é um número par!")
    else
        Qout(nNum, "não é um número par!")
    end if

RETURN NIL

Function isImPar (nNum)
    nNum:= Val(nNum)
    if nNum%2 != 0
        Qout(nNum, "é um número ímpar!")
    else
        Qout(nNum, "não é um número ímpar!")
    end if

RETURN NIL

Function Inverte (nNum)
    nNum:= Val(nNum)
    nNum:=nNum*-1
    Qout( "O número com sinal invertido é: ", alltrim(STR(nNum)))
RETURN NIL

Function isDiv (nN1, nN2)

    nN1:= Val(nN1)
    nN2:= Val(nN2)
    if nN1%nN2 == 0
        Qout(nN1, " é divisível por ", nN2)
    else
        Qout(nN1, " não é divisível por ", nN2)
    end if

RETURN NIL
