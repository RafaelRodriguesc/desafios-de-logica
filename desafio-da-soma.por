programa
{	
	funcao inteiro soma(inteiro A, inteiro B) {
		inteiro Resultado
		Resultado = A + B
		retorne Resultado
			}
	
	funcao inicio()  //leia dois valores (A e B) e informe a soma 
	{
		inteiro A
		inteiro B
		inteiro Resultado

		escreva("Digite um número: ")
		leia(A)
		escreva("Digite outro número: ")
		leia(B)
		Resultado = soma(A, B)
		escreva("A soma dos números que você digitou é: ", Resultado)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 219; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */