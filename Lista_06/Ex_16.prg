/*
16.Criar um programa de funções com literais e nela disponibilizar as
funções/procedimentos:
a. isLetra(c): informa se o caractere enviado é uma letra.
b. isDigito(c): informa se o caractere enviado é um número.
c. isSimbolo(c): informa se o caractere enviado é um símbolo.
d. toLower(c): converte uma letra maiúscula em minúscula.
e. cTroca(a, b): troca os valores entre as variáveis a e b.

*/

Function Main()

    local aOpc:="", aLet:="" 
    local nNum:=0, nN1:=0, nN2:=0

    Qout("[ a ] isLetra(): informa se o caractere enviado é uma letra. ")
    Qout("[ b ] isDigito(): informa se o caractere enviado é um número.")
    Qout("[ c ] isSimbolo(): informa se o caractere enviado é um símbolo. ")
    Qout("[ d ] toLower(): converte uma letra maiúscula em minúscula.")
    Qout("[ e ] cTroca(): troca os valores entre as variáveis a e b.")
    Qout()
    
    ACCEPT("Informe uma opção entre 'a' e 'e': " ) to aOpc
    aOpc:=lower(aOpc)

    if aOpc == "a"
        Qout("[ a ] isLetra(): informa se o caractere enviado é uma letra.")
        ACCEPT("Escreva um valor: ") to aLet
        ehLetra (aLet)

    elseif aOpc == "b"
        Qout("[ b ] isDigito(): informa se o caractere enviado é um número.")
        ACCEPT("Escreva um valor: ") to aLet
        isDigito (aLet)

    elseif aOpc == "c"
        Qout("[ c ] isSimbolo(): informa se o caractere enviado é um símbolo.")
        ACCEPT("Escreva um valor: ") to aLet
        isSimbolo (aLet)

    elseif aOpc == "d"
        Qout("[ d ] toLower(): converte uma letra maiúscula em minúscula.")
        ACCEPT("Escreva um valor: ") to aLet
        toLower (aLet)

    elseif aOpc == "e"  
        Qout("[ e ] cTroca(a, b): troca os valores entre as variáveis a e b.")
        
        ACCEPT("Informe o primeiro valor: ") to nN1
        ACCEPT("Informe o segundo valor: ") to nN2

        cTroca (@nN1, @nN2)

    endif

RETURN NIL

Function ehLetra (aLet)

    if (asc(SubStr(aLet, 1)) >= 65 .and. asc(SubStr(aLet, 1)) <= 90) .or. (asc(SubStr(aLet, 1)) >= 97 .and. asc(SubStr(aLet, 1)) <= 122)
        Qout(aLet, "é uma letra!")
    else
        Qout(aLet, "não é uma letra!")
    end if

RETURN NIL

Function isDigito (aLet)

    if (asc(SubStr(aLet, 1)) >= 48 .and. asc(SubStr(aLet, 1)) <= 57)
        Qout(aLet, "é um número!")
    else
        Qout(aLet, "não é um número!")
    end if

RETURN NIL

Function isSimbolo (aLet)

    if (asc(SubStr(aLet, 1)) >= 33 .and. asc(SubStr(aLet, 1)) <= 47) .or.(asc(SubStr(aLet, 1)) >=58 .and. asc(SubStr(aLet, 1)) <=64) .or. (asc(SubStr(aLet, 1)) >= 91 .and. asc(SubStr(aLet, 1)) <= 96) .or. (asc(SubStr(aLet, 1)) >= 123 .and. asc(SubStr(aLet, 1)) <= 126)
        Qout(aLet,"é um símbolo!")
    else
        Qout(aLet,"não é um símbolo!")
    end if

RETURN NIL

Function toLower (aLet)

    if (asc(SubStr(aLet, 1)) >= 65 .and. asc(SubStr(aLet, 1)) <= 90)
        Qout()
        Qout("Conversão maiúscula em minúscula: ", CHR(ASC(aLet)+32))
    else
        Qout()
        Qout("Valor invalido! Insira uma letra maiuscula.")
    endif

RETURN NIL

Function cTroca (nN1, nN2)

    local aux:=0

    Qout()
    aux:=aux+Val(nN1)
    nN1:= Val(nN2)
    nN2 := aux
    Qout("O primeiro valor é:", Alltrim(STR(nN1)), "e o segundo valor é:", Alltrim(STR(nN2)))

RETURN NIL