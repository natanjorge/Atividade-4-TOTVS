/*
38.Dados um caractere qualquer, verificar e informar se ele é uma vogal,
um dígito numérico ou um símbolo.
*/

Function Main()

    local n_car := ""

    ACCEPT "Digite um caractere: " TO n_car

    if ( n_car=="a" .Or. n_car=="A" .Or. n_car=="e" .Or. n_car=="E" .Or. n_car=="i" .Or. n_car=="I" .Or. n_car=="o" .Or. n_car=="O" .Or. n_car=="u" .Or. n_car=="U")
	    QOut("O caractere", n_car, "é uma vogal")
    elseif ( n_car=="0" .Or. n_car=="1" .Or. n_car=="2" .Or. n_car=="3" .Or. n_car=="4" .Or. n_car=="5" .Or. n_car=="6" .Or. n_car=="7" .Or. n_car=="8" .Or. n_car=="9")
	    QOut("O caractere", n_car, "é um numeral")
    elseif ( n_car=="!" .Or. n_car=="@" .Or. n_car=="#" .Or. n_car=="$" .Or. n_car=="?" .Or. n_car==":".Or. n_car==";".Or. n_car=="%" .Or. n_car=="¨" .Or. n_car=="&" .Or. n_car=="*" .Or. n_car=="+" .Or. n_car=="-" .Or. n_car=="/" .Or. n_car=="." .Or. n_car==",")
	    QOut("O caractere", n_car, "é um simbolo")

    endif   

RETURN nil