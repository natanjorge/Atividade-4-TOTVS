/*
13.Na mesma linha do programa anterior fazer uma função para cálculo do valor presente, 
dado o montante e a taxa.
*/

Function Main()

    local nVF:=0, nTaxa:=0, nPrazo:=0

    ACCEPT("Informe o valor do capital futuro: ") to nVF
    ACCEPT("Informe a taxa de juros: ") to nTaxa
    ACCEPT("Informe o prazo: ") to nPrazo

    nVF:=val(nVF)
    nTaxa:=val(nTaxa)
    nPrazo:=val(nPrazo)

    PRESENTE (nVF,nTaxa,nPrazo)

RETURN NIL

Function PRESENTE (nVF,nTaxa,nPrazo)

    local nVP:=0

    nVP:= nVF/((1+nTaxa)^nPrazo)
    Qout("O valor do capital é R$" + Alltrim(STR(nVP)))

RETURN NIL