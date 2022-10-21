/*77.Um cliente utiliza uma determinada solução de GED/ECM. Nesta
solução os usuários criam fichas de produtos e enviam uma série de
arquivos de imagens deste dado produto. Você foi solicitado a fazer
uma rotina que vá lendo uma série de dados informando o tamanho
de cada arquivo em Megabytes. O programa deverá informar ao
usuário um próximo arquivo estourar o limite estabelecida de 1,5
Gigabaytes, para cada ficha.
*/

Function Main()

    Local soma:=0, nNum:=0

    while soma <= 1536
        ACCEPT("Informe o tamanho do arquivo em MB: ") to nNum
        nNum:=Val(nNum)
        soma:=soma+nNum
        
        if soma >1536
            qout("Você atingiu a capacidade max de armazenamento de (1,5GB ou 1536MB)")
            exit
        else
            qout("Ainda restam ",Alltrim(STR(1536-soma)),"MB de armazenamento")
        end if
    enddo
    
RETURN NIL