/*81.Jogo do Jokenpô. Desenvolva o jogo “Papel, pedra e tesoura” entre o
usuário e o computador. Após o usuário informar sua escolha, o
computador gera sua opção (de maneira randômica); informa a opção
gerada e compara-a com a opção do usuário, informando quem
ganhou aquela jogada. Atualiza e exibe um placar que acumula os
resultados de cada jogada e pergunta se o usuário deseja continuar o
jogo (encerrar com ESC). Após a primeira versão criar algumas
“mods” para o game.
a. Torná-lo bilíngue (português e inglês). Esta opção deverá ser
dada no início do jogo. Dica: crie constantes para os labels e
mensagens.
b. Para melhorar a aleatoriedade do computador. Ao invés de 1 a
3 gere valores entre 1 e 9 ou 1 e 12 e, reduza-os após gerados. c.
Melhore a interface visual. Utilizando caracteres estendidos ASCII
e “ASCII arts”.
*/
#include "inkey.ch"

function main()
    
    local njog:=1, itens:={}, computador, nPlaJog:=0,nPlaCom:=0, cIdioma:=0

    Qout("Qual o idioma do jogo? ")
    Qout("What is the game language? ")
    ACCEPT("PRESS 1 to PT-BR OR 2 to EN (1/2) ") to cIdioma
    cIdioma:=Val(cIdioma)

    if cIdioma == 1
        Qout("Você selecionou PT-BR ")
        Qout("Suas opçoes: ")

        while inkey(1) != K_ESC
            Qout("[ 1 ] = PEDRA  [ 2 ] = PAPEL  [ 3 ] = TESOURA ")
            ACCEPT("QUAL A SUA JOGADA? ") to njog
            njog:=Val(njog)

            itens:= {"Pedra", "Papel", "Tesoura"}
            computador:= hb_randomint(1,3)

            Qout("O computador jogou: ", ALLtrim(itens[computador]))
            Qout("Você jogou: ", ALLtrim(itens[njog]))

            if computador == 1 //Computador jogou Pedra
                if njog == 1
                    Qout("EMPATE! ")
                    nPlaJog++
                    nPlaCom++
                elseif njog == 2
                    Qout("VOCÊ VENCEU! ")
                    nPlaJog++

                elseif njog == 3
                    Qout("COMPUTADOR VENCEU! ")
                    nPlaCom++
                else
                    Qout("JOGADA INVÁLIDA! ")
                end if
            elseif computador == 2 //Computador jogou Papel
                if njog == 1
                    Qout("COMPUTADOR VENCEU! ")
                    nPlaCom++
                elseif njog == 2
                    Qout("EMPATE! ")
                    nPlaJog++
                    nPlaCom++
                elseif njog == 3
                    Qout("VOCÊ VENCEU! ")
                    nPlaJog++
                else
                    Qout("JOGADA INVÁLIDA! ")
                end if
            elseif computador == 3 //Computador jogou Tesoura
                if njog == 1
                    Qout("VOCÊ VENCEU! ")
                    nPlaJog++
                elseif njog == 2
                    Qout("COMPUTADOR VENCEU! ")
                    nPlaCom++
                elseif njog == 3
                    Qout("EMPATE! ")
                    nPlaJog++
                    nPlaCom++
                else
                    Qout("JOGADA INVÁLIDA! ")
                end if
            end if
            
            Qout("           PLACAR!          ")
            Qout("Computador: ",Alltrim(STR(nPlaCom)), "VOCÊ: ",Alltrim(STR(nPlaJog)))
        enddo
    
    elseif cIdioma == 2

        Qout("YOU SELECTED ENGLISH")

        Qout("YOUR OPTIONS: ")

        while inkey(1) != K_ESC
            Qout("[ 1 ] = ROCK  [ 2 ] = PAPER  [ 3 ] = SCISSORS ")
            ACCEPT("WHAT'S YOUR PLAY? ") to njog
            njog:=Val(njog)

            itens:= {"ROCK", "PAPER", "SCISSORS"}
            computador:= hb_randomint(1,3)

            Qout("THE COMPUTER PLAYED: ", ALLtrim(itens[computador]))
            Qout("YOU PLAYED: ", ALLtrim(itens[njog]))

            if computador == 1 //Computador jogou ROCK
                if njog == 1
                    Qout("DRAW! ")
                    nPlaJog++
                    nPlaCom++
                elseif njog == 2
                    Qout("PLAYER WON! ")
                    nPlaJog++

                elseif njog == 3
                    Qout("COMPUTER WON! ")
                    nPlaCom++
                else
                    Qout("INVALID PLAY! ")
                end if
            elseif computador == 2 //Computador jogou PAPER
                if njog == 1
                    Qout("COMPUTER WON! ")
                    nPlaCom++
                elseif njog == 2
                    Qout("DRAW! ")
                    nPlaJog++
                    nPlaCom++
                elseif njog == 3
                    Qout("PLAYER WON! ")
                    nPlaJog++
                else
                    Qout("INVALID PLAY! ")
                end if
            elseif computador == 3 //Computador jogou SCISSORS
                if njog == 1
                    Qout("PLAYER WON! ")
                    nPlaJog++
                elseif njog == 2
                    Qout("COMPUTER WON! ")
                    nPlaCom++
                elseif njog == 3
                    Qout("DRAW! ")
                    nPlaJog++
                    nPlaCom++
                else
                    Qout("INVALID PLAY! ")
                end if
            end if
            Qout("           SCOREBOARD!          ")
            Qout("COMPUTER: ",Alltrim(STR(nPlaCom)), "PLAYER: ",Alltrim(STR(nPlaJog)))
        enddo

    else
        Qout("Opção inválida / Invalid option ")
    end if

RETURN nil