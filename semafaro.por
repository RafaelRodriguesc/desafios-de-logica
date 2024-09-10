programa
{
	inclua biblioteca Util
	
	funcao inteiro contador(cadeia semafaro, cadeia cor, inteiro tempo) {
		enquanto(tempo > 0) {
			limpa()
			escreva(semafaro, cor, tempo)
			Util.aguarde(1000)
			tempo = tempo - 1
		}
		
		limpa()
		retorne tempo
		
	}
	
	funcao inicio()
	{
		enquanto(verdadeiro) {
			inteiro TempoVerde = 10, TempoAmarelo = 2, TempoVermelho = 5
			cadeia semafaro = "----- SEMÁFARO ----- \n", verde = "VERDE: ", vermelho = "VERMELHO: ", amarelo = "AMARELO: "
			contador(semafaro, verde, TempoVerde)
			contador(semafaro, amarelo, TempoAmarelo)
			contador(semafaro, vermelho, TempoVermelho)
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 256; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */