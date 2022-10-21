/*64.[Refactoring do 31] Elaborar um programa que efetue a leitura do
nome e do sexo biológico de uma pessoa, apresentando como saída
uma das seguintes mensagens: "Ilmo. Sr.", para o sexo informado
como masculino ou a mensagem "Ilma. Sra. ", para o sexo informado
como feminino. Apresente também abaixo da mensagem impressa o
nome da pessoa. Os valores válidos para o sexo são “M” para
masculino ou “F” para feminino. Não poderá ser aceito nome vazio.
*/

Function Main()

    local nNome := "", nSex := ""

    ACCEPT "Informe seu nome " TO nNome
    
    while nNome == ""
        QOut("O nome deve ser informado!")
        ACCEPT "Informe seu nome " TO nNome
    enddo

    ACCEPT "Informe seu sexo (F/M) " TO nSex
    nSex := UPPER(nSex)

    if(nSex = "F")
        QOut("Ilma. Sra. " )

    elseif(nSex = "M")
        QOut("Ilmo. Sr. " )
    end if

    QOut( nNome )

RETURN nil