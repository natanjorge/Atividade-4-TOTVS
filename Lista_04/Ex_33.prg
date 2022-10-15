/*33.A jornada de trabalho semanal de um funcionário é de 40 horas. O
funcionário que trabalhar mais de 40 horas receberá hora extra, cujo
cálculo é o valor da hora regular com um acréscimo de 50%. Escreva
um algoritmo que leia o número de horas trabalhadas em um mês, o
salário por hora e escreva o salário total do funcionário, que deverá
ser acrescido das horas extras, caso tenham sido trabalhadas
(considere que o mês possua 4 semanas exatas).
*/

Function Main()
    Local nHoras_semana := 0, sal_Hora := 0, salarioTotal := 0, salario := 0, 
    Local valorHoraExtra := 0, qtdHorasExtras := 0, salarioExtras :=0
 
    ACCEPT "Informe o salário por hora: " to sal_Hora
    ACCEPT "Informe o número de horas trabalhadas em uma semana : " to nHoras_semana

    sal_Hora := val(sal_Hora)
    nHoras_semana := val(nHoras_semana)

    nHoras_semana = (nHoras_semana*4)

    If nHoras_semana <= 160
        salario := (nHoras_semana*sal_Hora) 
        QOUT ("O salário do Funcionário sem hora extra é:  R$", salario)

        Else
        salario := (160*sal_Hora)
        qtdHorasExtras:=(nHoras_semana-160)
        valorHoraExtra:=(sal_Hora+(sal_Hora*50)/100)
        salarioTotal:=(salario+salarioExtras)

        QOUT ("O salário do Funcionário com hora extra é:  R$", salarioTotal)
    endif

Return NIL