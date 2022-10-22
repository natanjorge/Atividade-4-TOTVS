/*
14.Organize as funções de PV e FV numa unidade de funções financeiras.

nFv = Montante final  
nI= taxa em porcentagem   
nT = é o tempo 
*/


Function main ()

    local nVF:=150000,nTaxa:=15,nPrazo:=1,nVP:=9375

    ValorPresente(nVF,nTaxa,nPrazo)
    ValorFuturo(nVP,nTaxa,nPrazo)

return Nil

Function ValorPresente(nVF,nTaxa,nPrazo)

    local nVP:=0

    nVP:= nVF/((1+nTaxa)^nPrazo)

    Qout((alltrim(STR(nVP))))

return nil

Function ValorFuturo(nVP,nTaxa,nPrazo)

    local nVF:=0

    nVF:= (nVP*((1+nTaxa)^nPrazo))

    Qout(alltrim(STR(nVF)))

return nil