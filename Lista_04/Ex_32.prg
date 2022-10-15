/*32.Ler a hora de início e a hora de fim de um jogo de Poker (considere
apenas horas inteiras, sem os minutos) e calcule a duração do jogo
em horas, sabendo-se que o tempo máximo de duração do jogo é de
24 horas e que o jogo pode iniciar em um dia e terminar no dia
seguinte.
*/

Function Main()

    local nIni := 0, nFim := 0,  nTem := 0

    ACCEPT "Qual a hora de início? " TO nIni
    ACCEPT "Qual a hora de término? " TO nFim

    nIni := Val(nIni)
    nFim := Val(nFim)

    if nIni == nFim
        Qout("Tempo máximo de duração atingido (24 horas)")
    else
        if nFim > nIni
            nTem := (nFim-nIni)

        else
            nTem := ((24-nIni)+nFim)

        end if

        Qout("Duração da partida foi de :", nTem, " Horas")
    end if  

RETURN nil