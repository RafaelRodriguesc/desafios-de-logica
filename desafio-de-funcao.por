programa
{
	funcao logico verdadeiro_ou_falso (inteiro numero) {
		se (numero > 0) {
			retorne verdadeiro
			} 
		   senao { 
				retorne falso
				}
		}
	
	funcao inicio()
	{
		inteiro a 
		logico resultado
		escreva("Digite um número positivo ou negativo: \n")
		leia(a)
		resultado = verdadeiro_ou_falso(a)

		se (resultado == verdadeiro) {
			escreva( resultado + " Este número é positivo!")
			}
		se (resultado == falso) {
			escreva(resultado + " Este numero é negativo!")}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 273; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */