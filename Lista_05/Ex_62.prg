/*62.Jogo da forca - parte 1: Neste momento trataremos apenas da
leitura do palpite (“chute”) do usuário. Fazer um programa que realize
a consistência de entrada da digitação de um palpite do usuário de
modo que ele seja forçado a digitar uma letra efetivamente. Fazer 3
versões do programa, cada uma com uma das estruturas de
repetição. Responder: qual achou mais adequada? Por quê?
*/

function main()
    
local   cChu:="", cFoi:="", nCont:=1

    while (cChu != "SAIR")
        ACCEPT "Digite uma letra ou sair para parar o programa: " to cChu
        cChu := UPPER(cChu)
        if Len(cChu) > 1 .and. cChu != "SAIR"
            QOUT( "insira apenas 1 letra")
            loop
        else
            if (cChu $ cFoi )
                QOUT("essa letra já foi informada anteriormente, tente outra letra")
                loop
            else
                cFoi += cChu

            end if
        end if
    end do

    cFoi:=""  
    for nCont:=1 to 2
        ACCEPT "Digite uma letra ou sair para parar o programa: " to cChu
        cChu := UPPER(cChu)

        if cChu == "SAIR" 
            nCont := 2
        else 
            nCont := 1
            if Len(cChu) > 1
                QOUT( "insira apenas 1 letra")
                loop
            else
                if cChu $ cFoi 
                    QOUT("essa letra já foi informada anteriormente, tente outra letra")
                    loop
                else
                    cFoi += cChu
                end if
            end if
        end if
    next

/*A versão do programa utilizando o "while" é mais adequada porque no "for" ele sai do loop quando o valor do
contador é igual a 2 e para isso, utilizei um if e alterava o valor do contador para 2.

*/
RETURN nil