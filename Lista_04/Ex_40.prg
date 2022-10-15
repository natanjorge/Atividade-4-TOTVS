/*
40.Ler três valores para os lados de um triângulo, considerando lados
como: A, B e C. Verificar se os lados fornecidos formam realmente um
triângulo (teste de verificação), e se for esta condição verdadeira,
deverá ser indicado qual tipo de triângulo foi formado: isósceles,
escaleno ou equilátero. Dica: para saber se um conjunto de três
segmentos de reta formas um triângulo basta verificar que cada a
medida de cada um dos segmentos (lados) seja menor do que a soma
dos outros dois.
*/

function main()

    local A := 0, B := 0, C := 0

    ACCEPT "Digite o valor de A: " TO A
    ACCEPT "Digite o valor de B: " TO B
    ACCEPT "Digite o valor de C: " TO C

    A:= Val(A)
    B:= Val(B)
    C:= Val(C)

    if (A<B+C) .And. (B<A+C) .And. (C<A+B)
        QOUT("Estes valores formam um triângulo! ")

        if (A=B) .And. (B=C)
            QOUT("É um triangulo Equilátero")
        
        elseif (A=B) .Or. (B=C) .Or. (A=C)
            QOUT("É um triângulo Isósceles")
        
        else 
            QOUT("É um triângulo Escaleno")    
        end if

    else
        QOUT("Estes valores não formam um triângulo! ")

    end if

RETURN nil