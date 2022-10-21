/*56.Elaborar um programa que exiba na tela automaticamente todos os
múltiplos de um determinado número informado pelo usuário,
existentes entre 1 e um limite, que também deverá ser informado
pelo usuário. Fazer duas versões da solução utilizando diferentes
estruturas de repetição, a sua escolha.
*/

function main()

    local nI, n1:=0, lim:=0, n2:=0, lim2:=0, ne:=0

    ACCEPT "Digite o número: " TO n1
    ACCEPT "Digite o limite: " TO lim
    
    n1 := Val(n1)
    lim := Val(lim)

    for nI  := 0  TO lim STEP n1
        QOUT(Alltrim(StrZero(nI, 3)))
    next nI
    QOUT("Fim do programa! ")

    ACCEPT "Digite o número: " TO n2
    ACCEPT "Digite o limite: " TO lim2

    n2 := Val(n2)
    lim2 := Val(lim2)
    ne:=n2

   while n2 <= lim2
        QOUT(Alltrim(StrZero(n2, 3)))
        n2:=n2+ne
   enddo
       QOUT("Fim do programa! ")
RETURN nil

