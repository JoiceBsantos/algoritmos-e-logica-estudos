Algoritmo "Somador"
// Descrição   : Utilizando estrutura de repetição REPITA
// Data atual  : 06/04/2026

Var
   N, S: Inteiro      // N = número digitado | S = soma acumulada
   resp: Caractere    // variável para controlar se o usuário quer continuar
Inicio
      S <- 0          // inicializa a soma com 0
      Repita          // início da repetição (executa pelo menos uma vez)

        Escreva ("Digite o valor ==> ")
        Leia(N)       // lê um número digitado pelo usuário

        S <- S + N   // soma o valor digitado com o acumulador

        Escreva("Você quer continuar [S/N] ")
        Leia (resp)  // lê a resposta do usuário (S ou N)

      Ate (resp = "N")   // repete até o usuário digitar "N"
      Escreval ("A soma de todos os valores digitados e ", S) // mostra o resultado final da soma
Fimalgoritmo
