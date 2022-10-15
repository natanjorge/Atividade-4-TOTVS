/*5. Efetuar o cálculo da quantidade de litros de combustível gastos em uma
viagem, utilizando-se um automóvel que faz 12 Km por litro. Para obter o
cálculo, o usuário deverá fornecer o tempo gasto na viagem e a
velocidade média durante a mesma. Desta forma, será possível obter a
distância percorrida com a fórmula DISTÂNCIA = TEMPO x VELOCIDADE.
Tendo o valor da distância, basta calcular a quantidade de litros de
combustível utilizada na viagem com a fórmula: LITROS_USADOS =
DISTÂNCIA / 12. O programa deverá apresentar os valores da velocidade
média, tempo gasto na vigem, a distância percorrida e a quantidade de
litros utilizada na viagem.
*/

Function Main()

    local nTem := 0, nVm := 0, nDis:= 0, nLit:= 0

    ACCEPT "Digite o tempo gasto na viagem: " TO nTem
    ACCEPT "Digite a velocidade média : " TO nVm
    
    nTem := Val(nTem)
    nVm := Val(nVm)


    nDis := (nTem * nVm)
    nLit := (nDis/12)

    QOut("A velocidade média é: ", (nVm), "km/h")
    QOut("O tempo gasto na viagem é: ", (nTem),"horas")
    QOut("A distância percorrida é: ", (nDis), "km")
    QOut("A quantidade de litros utilizados na viagem é: ", (nLit),"L")

RETURN nil