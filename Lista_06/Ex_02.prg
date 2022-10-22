/*2. Criar um algoritmo que efetue o cálculo de uma prestação em atraso.
para tanto, utilize a fórmula PREST = VALOR + (VALOR * (TAXA/ 100)
* TEMPO). Apresentar o valor da prestação. O cálculo e a exibição
deverão ser feitos por um procedimento.
*/

Function Main()

    local nVal:=0, nTaxa:=0, nTempo:=0

    ACCEPT("Informe o valor da prestação: ") to nVal
    ACCEPT("Informe a taxa da prestação: ") to nTaxa
    ACCEPT("Informe o tempo da prestação: ") to nTempo

    CalcPres (nVal, nTaxa, nTempo)

RETURN NIL

Function CalcPres (nVal, nTaxa, nTempo)

    local nPres:=0

    nPres:= Val(nVal) + (Val(nVal) * (Val(nTaxa)/100) * Val(nTempo))

    Qout("O valor da prestação é: R$", Alltrim(STR(nPres)))

RETURN NIL