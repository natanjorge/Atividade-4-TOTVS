/*67.[Refactoring do CS 03] Nas olimpíadas deste ano, anotou-se em
cartões cada uma das medalhas de ouro, prata e bronze, obtidas por
um determinado país. Faça um programa que leia esses cartões e
exiba o quadro completo de medalhas obtidas pela delegação do
país. O cartão com o conteúdo “F” indica que é o último da pilha.

*/

function Main()
local m_bronze:=0, m_ouro:=0, m_prata:=0, medal:=""

    while medal !="F"
    ACCEPT("Informe a medalha (B/P/O): ") to medal
    medal:=UPPER(medal)
    if medal == "B"
        m_bronze:=m_bronze+1
    elseif medal == "P"
        m_prata:=m_prata+1
    elseif medal == "O"
        m_ouro:=m_ouro+1
    endif
    enddo
    QOUT("Quantidade de medalhas")
    QOUT("Bronze: ", Alltrim(STR(m_bronze)), "Prata: ", Alltrim(STR(m_prata)), "Ouro :", Alltrim(STR(m_ouro)))

RETURN Nil