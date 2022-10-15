/*6. Alterar o programa do exercício anterior de modo que ele possa ser usado
em veículos com padrão de consumo diferente de 12 Km por litro.
*/

Function Main()

    local nTem := 0, nVm := 0, nDis:= 0, nLit:= 0, nAut:=0

    ACCEPT "Digite o tempo gasto na viagem: " TO nTem
    ACCEPT "Digite a velocidade média : " TO nVm
    ACCEPT "Digite a autonomia do veículo : " TO nAut   
    
    nTem := Val(nTem)
    nVm := Val(nVm)
    nAut := Val(nAut)


    nDis := (nTem * nVm)
    nLit := (nDis/nAut)

    QOut("A velocidade média é: ", (nVm), "km/h")
    QOut("O tempo gasto na viagem é: ", (nTem),"horas")
    QOut("A distância percorrida é: ", (nDis), "km")
    QOut("A quantidade de litros utilizados na viagem é: ", (nLit),"L")

RETURN nil