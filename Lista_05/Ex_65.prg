/*65.Fazer um programa que simule um cadastro de usuário e senha para
um sistema qualquer. O usuário informará um “username” e uma
senha que deverá ser digitada duas vezes (confirmação de senha).
Realizar as seguintes consistências:
a. o “username” deve possuir mais do que 5 caracteres. b. a senha
e a confirmação da senha devem ser idênticas. c. a senha deve
possuir ao menos 6 caracteres e deve conter
obrigatoriamente: ao menos uma letra maiúscula, um dígito
numérico e um símbolo.
*/

Function Main()

    Local cNome  := "", cSenha := "", cConf  := "",lSair := .f., lRet   := .f.

    while lSair
        ACCEPT "Digite o username (no mínimo 5 caracteres): " to cNome

        if (len(cNome) <= 5)
            QOUT("nome de usuário incorreta, tente novamente")
            loop
        else 
            lSair := .t.
        end if
    END
    lSair := .f.

    while !lSair
        ACCEPT "Digite uma senha: " to cSenha

        if (len(cSenha) >= 6) 

           if (lRet := verifica(cSenha)) == .f.
                QOUT("Senha incorreta, verifique se a senha possui 1 letra maiúscula, 1 digito e 1 simbolo") 
                loop
           end if
        else
            QOUT("Senha incorreta, verifique se a senha possui mais de 6 caracteres")    
            Loop
        end if
        ACCEPT "Digite a senha novamente: " to cConf
        
        if (cConf == cSenha)
            QOUT("Senha correta, usuário cadastrado com sucesso!")
            lSair := .t.
        else 
            QOUT("Senhas diferentes, favor tente novamente!")
            loop
        end if
    ENDDO
RETURN Nil

static Function verifica(cSenha)

    Local lRetorno := .f.
    Local nCont    := 0
    Local aPossui :={"", "", ""}

    for nCont := 1 to len(cSenha)
    
        if asc(SubStr(cSenha, nCont, 1)) >= 48 .and. asc(SubStr(cSenha, nCont, 1)) <= 57
            aPossui[1] := "ok"
        end if

        if asc(SubStr(cSenha, nCont, 1)) >= 65 .and. asc(SubStr(cSenha, nCont, 1)) <= 90
            aPossui[2] := "ok"
        end if

        if (asc(SubStr(cSenha, nCont, 1)) >= 33 .and. asc(SubStr(cSenha, nCont, 1)) <= 47) .or.(asc(SubStr(cSenha, nCont, 1)) >=58 .and. asc(SubStr(cSenha, nCont, 1)) <=64) .or. (asc(SubStr(cSenha, nCont, 1)) >= 91 .and. asc(SubStr(cSenha, nCont, 1)) <= 96) .or. (asc(SubStr(cSenha, nCont, 1)) >= 123 .and. asc(SubStr(cSenha, nCont, 1)) <= 126)
            aPossui[3] := "ok"
       end if
    NEXT

    if aPossui[1] =="ok" .and. aPossui[2] == "ok" .and. aPossui[3] == "ok"
        lRetorno := .t.
    end if
RETURN lRetorno
