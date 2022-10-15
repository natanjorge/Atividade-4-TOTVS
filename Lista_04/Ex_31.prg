/*31.Elaborar um programa que efetue a leitura do nome e do sexo de
uma pessoa, apresentando como saída uma das seguintes
mensagens: "Ilmo. Sr.", para o sexo informado como masculino ou a
mensagem "Ilma. Sra. ", para o sexo informado como feminino.
Apresente também abaixo da mensagem impressa o nome da
pessoa.
*/

Function Main()

    local nNome := "", nSex := ""

    ACCEPT "Informe seu nome " TO nNome
    ACCEPT "Informe seu sexo (F/M) " TO nSex

    if(nSex = "F")
        QOut("Ilma. Sra. " )

    elseif(nSex = "M")
        QOut("Ilmo. Sr. " )
    end if
    
    QOut( nNome )

RETURN nil