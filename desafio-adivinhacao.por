programa
{
	inclua biblioteca Util

	inteiro palpite

	funcao adivinha () {
	escreva("Digite seu palpite: \n")
	leia(palpite)
	Util.aguarde(1300)
	}

	funcao inicio()
	{
		inteiro numero
		inteiro numeroSorteado = Util.sorteia(1, 100)
		escreva("Bem-vindo ao jogo da adivinhação \n")
		Util.aguarde(1300)
		numero = numeroSorteado
		escreva("Um número de 1 a 100 acaba de ser sorteado, tente advinha-lo \n")
		Util.aguarde(1300)

		adivinha() 
		se (palpite == 0 ou palpite > 100) {
			escreva("O número está entre 0 e 100 \n")
			inicio()
			} senao {
		enquanto(palpite != numero) {
			se (palpite > numero) {
				escreva("O número é MENOR que o seu palpite \n") 
				adivinha()
				}
			se (palpite < numero) {
				escreva("O número é MAIOR que o seu palpite \n") 
				adivinha()
				}
			se(palpite == numero) { 
				escreva("PARABÉNS!!! O número sorteado foi ", numeroSorteado,". O palpite ", palpite, " está correto!")
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
 * @POSICAO-CURSOR = 169; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */