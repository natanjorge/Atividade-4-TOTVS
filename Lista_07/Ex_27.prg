/*27.Fazer um programa que apresente invertida uma palavra informada
pelo usuário. Informar também se é ou não um palíndromo.
*/

Function Main()

    local cPalavra:="", cInverte:="", nCont:=0

    ACCEPT("Insira uma palavra: ") to cPalavra
    cPalavra:=UPPER(cPalavra)

    for nCont:=(len(cPalavra)) to 1 step -1
        cInverte+=(SUBSTR(cPalavra,nCont,1))
    next 

    QOUT(CHR(10),"A palavra ", cPalavra, "ao inverso é: ", cInverte, CHR(10))

    if cPalavra == cInverte
        QOUT("É um palíndromo! ")
    else
        QOUT("Não é um palíndromo! ")
    end if

return nil