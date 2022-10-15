/*36.Dado um caractere qualquer, verificar se ele é uma vogal.*/

Function Main()

    local letra := ""

    ACCEPT "Digite um caractere: " TO letra

    if ( letra=="a" .Or. letra=="A" .Or. letra=="e" .Or. letra=="E" .Or. letra=="i" .Or. letra=="I" .Or. letra=="o" .Or. letra=="O" .Or. letra=="u" .Or. letra=="U")
	    QOut("O caractere", letra, "é uma vogal")
    else
        QOut("O caractere", letra, "é uma consoante")
    endif   

RETURN nil