/*23.Ler quatro valores referentes a quatro notas escolares de um aluno e
imprimir uma mensagem dizendo que o aluno foi aprovado, se o valor
da média escolar for maior ou igual a 5. Se o aluno não foi aprovado,
indicar uma mensagem informando esta condição. Apresentar junto
das mensagens o valor da média do aluno para qualquer condição.
*/

Function Main()

    local nNum_1 := 0, nNum_2, nNum_3 := 0, nNum_4 := 0, n_media:=0

    ACCEPT "Informe a primeira nota: " TO nNum_1
    ACCEPT "Informe a segunda nota: " TO nNum_2
    ACCEPT "Informe a terceira nota: " TO nNum_3
    ACCEPT "Informe a quarta nota: " TO nNum_4

    nNum_1 := Val(nNum_1)
    nNum_2 := Val(nNum_2)
    nNum_3 := Val(nNum_3)
    nNum_4 := Val(nNum_4)
    
    n_media := ((nNum_1+nNum_2+nNum_3+nNum_4)/4)

    if n_media >= 5
        QOut("O aluno foi aprovado! Sua média é: " + str(n_media))
    
    else 
        QOut("O aluno foi reprovado! Sua média é: " + str(n_media))
    end if

RETURN nil