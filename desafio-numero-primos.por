programa
{
    inclua biblioteca Matematica
    
    funcao logico verifica_numero_primo(inteiro numero) {
        inteiro i
        real raiz = Matematica.raiz(numero, 2)
        
        se (numero <= 1) {
            escreva(numero, " não é primo! \n")
            retorne falso
        }
        
        para (i = 2; i <= raiz; i++) {
            se (numero % i == 0) {
                escreva(numero, " não é primo! \n")
                retorne falso
            }
        }
        
        retorne verdadeiro
    }

    funcao inicio() {
        inteiro a
        logico resultado
        
        escreva("Digite um número e descubra se ele é primo: \n")
        leia(a)
        
        resultado = verifica_numero_primo(a)
        
        se (resultado) {
            escreva(a, " é primo! \n")
        } 
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 106; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */