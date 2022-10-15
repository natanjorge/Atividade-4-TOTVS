/*
37.Dado um número de 1 até 12, apresentar o número de dias do mês
correspondente. Se o número escolhido for 2 (fevereiro), considere
28 dias.*/

Function Main()

    local mes := {}, n:=0

    mes := {"31","28","31","30","31","30","31","31","30","31","30","31"}

    ACCEPT "Digite um número de 1 até 12: " TO n

    n := val(n)
    
     QOut("O mês de número", n, "tem ", mes[n],"dias.")

RETURN nil