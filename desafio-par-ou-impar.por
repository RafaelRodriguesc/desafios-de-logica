programa
{
    inclua biblioteca Util

    funcao inicio()
    {
        inteiro numero
        inteiro numeroSorteado = Util.sorteia(0, 5)
        inteiro par = 0
        inteiro impar = 1
        inteiro player1
        inteiro CPU
        inteiro numeroCPU
        inteiro resultado 

        escreva("Escolha PAR ou ÍMPAR [Digite 0 para par ou 1 para impar] \n")
        leia(player1)

        se (player1 >= 2){
        	escreva("Comando inválido, por favor digite 0 para par ou 1 para impar \n")
        	}  senao {
        		 se (player1 == 0) 
        {
            player1 = par
            escreva("Player1 escolheu PAR \n")
        } 
        senao se (player1 == 1)
        {
            player1 = impar
            escreva("Player1 escolheu ÍMPAR \n")
        }

        Util.aguarde(2000)

        escreva("Agora escolha um número de 0 a 5 \n")
        leia(numero)

	   Util.aguarde(2000)

        se (player1 == 0) 
        {
            CPU = 1
            escreva("CPU é ÍMPAR \n")
        } 
        senao 
        {
            CPU = 0
            escreva("CPU é PAR \n")
        }

        Util.aguarde(2000)
        
        escreva("É a vez da CPU escolher um número \n")

        Util.aguarde(2000)
        
        escreva("O número escolhido pela CPU foi... \n")

        Util.aguarde(2000)
        
        numeroCPU = numeroSorteado
        escreva(numeroCPU, "\n")
        
        resultado = numero + numeroCPU
        escreva("Vamos ao resultado... \n")
        
        Util.aguarde(2000)
        
        escreva("A soma dos números é... \n")

        Util.aguarde(2000)
        
        escreva(resultado, "\n")

        Util.aguarde(2000)

        se ((resultado == 0) ou (resultado % 2 == 0)) 
        {
            se (player1 == par) 
            {
                escreva("PARÁBENS!!! ", resultado, " É PAR, portanto PLAYER1 é o vencedor! \n")
            } 
            senao se (player1 == impar) 
            {
                escreva(resultado, " É PAR, portanto CPU é o vencedor! \n")
            } 
        }
        senao se (nao(resultado == 0) ou (resultado % 2 == 0))
        {
            se(player1 == impar) 
            {
                escreva("PARÁBENS!!! ",resultado, " É ÍMPAR, portanto PLAYER1 é o vencedor! \n")
            } 
            senao 
            {
                escreva(resultado, " É ÍMPAR, portanto CPU é o vencedor! \n")
            }
        }
    }
        		
        		}
       
}
            

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2451; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */