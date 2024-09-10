programa
{ 
    inclua biblioteca Util
    inclua biblioteca Matematica

    inteiro palpite

    // Função para verificar se o número é primo 
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

    // Função verdadeiro ou falso
    funcao logico verdadeiro_ou_falso(inteiro numero) {
        se (numero > 0) {
            retorne verdadeiro
        } 
        se (numero == 0) {
            retorne falso
        } 
        senao { 
            escreva("Falso! Este número é negativo \n")
            retorne falso
        }
    }

    // Função adivinha
    funcao adivinha() {
        escreva("Digite seu palpite: \n")
        leia(palpite)
        Util.aguarde(1300)
    }

    // Função redireciona para o menu
    funcao retorna_menu() {
        Util.aguarde(1500)
        escreva("Você será redirecionado para o menu em instantes... \n")
        Util.aguarde(2000)
        inicio()
    }

    // Função para somar duas variáveis
    funcao inteiro desafio_soma(inteiro a, inteiro b) {
        inteiro resultado 
        resultado = a + b
        retorne resultado
    }

    // Função jogo par ou ímpar
    funcao par_impar() {
        inteiro numero
        inteiro numeroSorteado = Util.sorteia(0, 5)
        inteiro par = 0
        inteiro impar = 1
        inteiro player1
        inteiro CPU
        inteiro numeroCPU
        inteiro resultado 

        escreva("Escolha PAR ou ÍMPAR [Digite 0 para PAR ou 1 para ÍMPAR] \n")
        leia(player1)

        se (player1 >= 2) {
            escreva("Comando inválido, por favor digite 0 para PAR ou 1 para ÍMPAR \n")
        }  
        senao {
            se (player1 == 0) {
                player1 = par
                escreva("Player1 escolheu PAR \n")
            } 
            senao se (player1 == 1) {
                player1 = impar
                escreva("Player1 escolheu ÍMPAR \n")
            }

            Util.aguarde(2000)

            escreva("Agora escolha um número de 0 a 5 \n")
            leia(numero)

            Util.aguarde(2000)

            se (player1 == 0) {
                CPU = 1
                escreva("CPU é ÍMPAR \n")
            } 
            senao {
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

            se ((resultado == 0) ou (resultado % 2 == 0)) {
                se (player1 == par) {
                    escreva("PARABÉNS!!! ", resultado, " É PAR, portanto PLAYER1 é o vencedor! \n")
                } 
                senao se (player1 == impar) {
                    escreva(resultado, " É PAR, portanto CPU é o vencedor! \n")
                } 
            }
            senao se (nao(resultado == 0) ou (resultado % 2 == 0)) {
                se(player1 == impar) {
                    escreva("PARABÉNS!!! ",resultado, " É ÍMPAR, portanto PLAYER1 é o vencedor! \n")
                } 
                senao {
                    escreva(resultado, " É ÍMPAR, portanto CPU é o vencedor! \n")
                }
            }
        }
    }

    // Funcao jogo da adivinhação
    funcao jogo_adivinhacao() {
        inteiro numero
        inteiro numeroSorteado = Util.sorteia(1, 100)
        escreva("Bem-vindo ao jogo da adivinhação \n")
        Util.aguarde(1300)
        numero = numeroSorteado
        escreva("Um número de 1 a 100 acaba de ser sorteado, tente advinhá-lo \n")
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
                    escreva("PARABÉNS!!! O número sorteado foi ", numeroSorteado,". O palpite ", palpite, " está correto! \n")
                }
            }
        }
    }

    // Função jogo numeros postivos ou negativos
    funcao positivo_negativo() {
        inteiro a 
        logico resultado
        escreva("Digite um número positivo ou negativo: \n")
        leia(a)
        resultado = verdadeiro_ou_falso(a)

        se (resultado == verdadeiro) {
            escreva("Verdadeiro! Este número é positivo!")
        }
        se (resultado == falso e a == 0) {
            escreva("0 é neutro!")
        }
    }

    // Função jogo do número primo
    funcao jogo_numero_primo() {
        inteiro a
        logico resultado
        
        escreva("Digite um número e descubra se ele é primo: \n")
        leia(a)
        
        resultado = verifica_numero_primo(a)
        
        se (resultado) {
            escreva(a, " é primo! \n")
        } 
    }

    funcao inicio() {
        inteiro desafio = 0

        escreva("------------------------------ Desafios lógica de programação ------------------------------ \n")
        Util.aguarde(500)
        escreva("Utilize as teclas [1 2 3 4 5] para navegar entre os desafios e [0] para encerrar o sistema \n")
        Util.aguarde(2000)
        escreva("[1] Desafio da soma \n")
        Util.aguarde(150)
        escreva("[2] Desafio do par ou ímpar \n")
        Util.aguarde(150)
        escreva("[3] Desafio jogo da adivinhação \n")
        Util.aguarde(150)
        escreva("[4] Desafio de função \n")
        Util.aguarde(150)
        escreva("[5] Desafio números primos \n")
        Util.aguarde(150)
        escreva("[0] Encerrar \n")
        leia(desafio)
        
        escolha (desafio) {
            caso 0:
                pare
            caso 1:
                inteiro a, b, resultado
                escreva("============================== DESAFIO DA SOMA ============================== \n")
                Util.aguarde(1500)
                escreva("Digite um número \n")
                leia(a)
                escreva("Digite outro número \n")
                leia(b)
                resultado = desafio_soma(a, b)
                escreva("O resultado da soma é: ", resultado, "\n")	
                retorna_menu()
                pare
            caso 2:
                escreva("============================== DESAFIO JOGO PAR OU ÍMPAR ============================== \n")
                par_impar()
                retorna_menu()
                pare
            caso 3:
                escreva("============================== DESAFIO JOGO DA ADIVINHAÇÃO ============================== \n")
                jogo_adivinhacao()
                retorna_menu()
                pare
            caso 4:
                escreva("============================== DESAFIO VERDADEIRO OU FALSO ============================== \n")
                positivo_negativo()
                retorna_menu()
                pare
            caso 5: 
                escreva("============================== DESAFIO NÚMEROS PRIMOS ============================== \n")
                jogo_numero_primo()
                retorna_menu()
                pare
            caso contrario:
                 escreva("Comando inválido!")
                 pare
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1242; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */