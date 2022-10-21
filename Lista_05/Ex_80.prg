/*80.Considere dados referentes a altura e o sexo de 40 pessoas. Fazer um
algoritmo que calcule e escreva:
a. A maior e a menor altura do grupo.
b. A média de altura das mulheres.
c. O número de homens.
*/

Function Main()

    local cSexo   := "", nAlt := 0, nCont  := 0, nContM := 0, nCOntF := 0 
    local nSoma := 0, nMediaF := 0, nMediaM := 0, nI := 0
    local aAltM  := {}, aAltF  := {}

    while nCont <= 2
        ACCEPT "Digite seu genero (M / F) : " to cSexo
        cSexo := UPPER(cSexo)
            if cSexo = "M"
                ACCEPT "Digite sua altura: " to nAlt
                nAlt := val(nAlt)                
                aAdd(aAltM, nAlt)
                nContM++
            else
                ACCEPT "Digite sua altura: " to nAlt
                nAlt := val(nAlt)
                aAdd(aAltF, nAlt)
                nContF++
            endif
        nCont++
    enddo

    nSoma := 0
    For nI := 1 to len(aAltM)
        nSoma += aAltM[nI]
    Next
    nMediaM := nSoma / nContM

    nSoma := 0
    For nI := 1 to len(aAltF)
        nSoma += aAltF[nI]
    Next
    nMediaF := nSoma / nContF

    QOUT("O total de homens é: ", alltrim(str(nContM)) , " e o total de mulhere é: " , alltrim(str(nContF)))
    QOUT("A média de altura dos homens do grupo é: " , nMediaM)
    QOUT("A média de altura das mulheres do grupo é: " , nMediaF)
       
RETURN nil