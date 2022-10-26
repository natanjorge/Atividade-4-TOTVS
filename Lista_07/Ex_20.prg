/*20.Alterar o programa anterior de modo a incluir 4 menus que terão as
seguintes finalidades:

a. Listar o conteúdo completo do vetor.
b. Solicitar ao usuário um caractere, a ser pesquisado no vetor e
informar se o caractere pesquisado existe ou não no vetor
informando a posição em que ele está (todas as ocorrências
visto que o caractere pode se repetir).
c. Pesquisar se existe no vetor um caractere informado pelo
usuário e informar qual a posição da última ocorrência desse
caractere (visto que um mesmo caractere poderá se repetir).
d. Pesquisar se existe no vetor um caractere informado pelo
usuário e informar qual a posição da primeira ocorrência desse
caractere (visto que um mesmo caractere poderá se repetir).
*/
function main()
    
    local nCar:=""
    
    ACCEPT("Informe uma letra: ") to nCar
    ncar:=upper(ncar)

    VetorCaracteres( nCar)

RETURN nil

function VetorCaracteres(nCar)

    local nCont:=1,aVA:=ARRAY(50), aVB:={}

    for nCont := 1 TO 50
        aVA[nCont] := CHR(hb_randomint(65,90))

        if nCar == aVA[nCont]
            Qout("O caracter",alltrim(nCar),"que foi informado está presente no vetor",alltrim(STR(nCont)))
            AADD(aVB, nCont)
        else
            Qout( nCont,"º = ", aVA[nCont])
        end if    
    next
    Asort(aVB)

    Qout()
    Qout("A primeira posição da letra foi no vetor de posição: ", alltrim(STR(aVB[1])))
    Qout("A ultima posição foi no vetor de posição: ", alltrim(STR(aVB[len(aVB)])))
    
RETURN nil