/*35.Faça um algoritmo para ler um nome de usuário (user name) e uma
senha. Caso correspondam aos dados armazenados internamente no
programa através do uso de constantes (“chumbado”), deve ser
apresentada a mensagem “Acesso permitido”. Caso o usuário/senha
não coincidam, exibir a mensagem “Usuário ou senha inválido”. A
verificação da senha só deverá ocorrer caso o usuário coincida, porém
o usuário não deve saber especificamente se foi o nome de usuário ou
a senha que não coincidiu.
*/

Function Main()

    local cUser := "", cSenha := ""

    ACCEPT "Digite o nome de usuário: " TO cUser
    ACCEPT "Digite a velocidade média : " TO cSenha

    if !cUser=="NatanJ" .Or. !cSenha=="123321"
	    QOut("Usuário e/ou senha inválido(s)")
    else
        QOut("Acesso permitido!")
    endif   

RETURN nil