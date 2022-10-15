/*47.Jogo Adivinha o número - parte 1: Elaborar um jogo do tipo
adivinha o número. Onde deverá ser sorteado um número entre 0 e
100. Em seguida solicitado que o usuário adivinhe qual foi o número
sorteado. Após o “chute” do usuário apresentar uma mensagem
informando se o número sorteado é maior, menor ou igual ao número
“chutado”. Pesquise como gerar números aleatórios no VisualG.
*/

function main()

    local nVal:=0, nAle:=0,qErros:=0

    nAle:=(Random()% 100 + 1)
    while nVal != nAle

        ACCEPT("Insira um valor: ") to nVal
        nVal:=Val(nVal)
        
        if (nVal == nAle)
            Qout("Os valores são iguais. Parabéns!")
            Qout("A quantidade de erros foi: ", alltrim(str(qErros)))

        elseif (nVal > nAle)
            Qout("O valor está maior. Tente um número menor")
            qErros+=1
        
        else
            Qout("O valor está menor. Tente um número maior")
            qErros+=1
        endif
    enddo
RETURN Nil
