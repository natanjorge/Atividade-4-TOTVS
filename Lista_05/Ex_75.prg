/*75.Elaborar um programa que efetue o cálculo e no final apresente o
somatório do número de grãos de trigo que se pode obter num
tabuleiro de xadrez, obedecendo a seguinte regra: colocar um grão de
trigo no primeiro quadro e, nos quadros seguintes o dobro do quadro
anterior. Ou seja, no primeiro quadro coloca-se 1 grão, no segundo
quadro coloca-se 2 grãos (neste momento tem-se 3 grãos), no
terceiro quadro coloca-se 4 grãos (tendo nesse momento 7 grãos),
até atingir o sexagésimo quarto quadro. (exercício inspirado em uma
anedota do livro “O homem que calculava” de Malba Tahan).
*/

Function Main()

    Local soma:=0, nCont:=1, nGrao:=1

    while nCont != 64
        soma=+ soma + nGrao
        nGrao:= nGrao * 2
        nCont++
    enddo

    qout("A somatória do número de graos de trigo é: ", Alltrim(STR(soma)))

RETURN NIL