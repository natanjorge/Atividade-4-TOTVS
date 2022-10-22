/*
12.Faça um programa para cálculo do montante (valor futuro) a partir de
um dado capital (valor presente). O programa deverá solicitar ao
usuário o valor do capital (valor presente), a taxa de juros e o prazo.
O programa também deverá permitir que o usuário escolha se quer
utilizar o regime de capitalização simples ou composto. Ao final
apresentar ao usuário o montante (valor futuro e o valor dos juros).
• Fórmulas:
▪ Juros simples: VF = VP ( 1 + i + n )
▪ Juros compostos: VF = VP ( 1 + i )^n
▪ Juros a partir do VF: J = VF - VP
• Onde:
▪ VF = Montante ou Valor Futuro
▪ VP = Capital ou Valor Presente
▪ J = Juros
▪ i = taxa em decimal
▪ n = prazo
*/

Function Main()

    local nVP:=0, nTaxa:=0, nPrazo:=0, nModelo:=0

    ACCEPT("Informe o valor do capital: ") to nVP
    ACCEPT("Informe a taxa de juros: ") to nTaxa
    ACCEPT("Informe o prazo: ") to nPrazo

    while nModelo != 1 .and. nModelo != 2
        ACCEPT("Informe se é juros simples [ 1 ] ou juros compostos [ 2 ] ") to nModelo
        nModelo:=val(nModelo)
    enddo
    
    nVP:=val(nVP)
    nTaxa:=val(nTaxa)
    nPrazo:=val(nPrazo)

    REAJUSTE (nVP,nTaxa,nPrazo,nModelo)

RETURN NIL

Function REAJUSTE (nVP,nTaxa,nPrazo,nModelo)

   local nVF:=0

    if nModelo == 1
        nVF:= (nVP*(1+nTaxa+nPrazo))
        Qout("Juros simples - O valor futuro é R$" + Alltrim(STR(nVF)))

    elseif nModelo == 2
        nVF:= (nVP*((1+nTaxa)^nPrazo))
        Qout("Juros compostos - O valor final é R$" + Alltrim(STR(nVF)))
        
    end if

    Qout("Juros a partir do valor final é R$" + Alltrim(STR((nVF-nVP))))

RETURN NIL