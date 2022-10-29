/*26.Fazer um programa que dada uma palavra qualquer informada pelo 
usuário apresente na tela o seu primeiro caractere.*/

FUNCTION MAIN()

LOCAL cA := ""

ACCEPT (">>>> Informe uma palavra: ") to cA 
cA := LEFT(cA,1)

Qout("O primeiro caracter dessa palavra é: ", cA)

RETURN NIL