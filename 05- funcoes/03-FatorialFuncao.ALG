Algoritmo "FatorialFuncao"
// Descrição: Prática 03: Algoritmo para calcular o fatorial de um número.
// Data atual  : 11/04/2026
Var
   N, F: Inteiro     // N= número | F= fatorial

Funcao Fatorial (V: Inteiro): Inteiro  // Função que calcula o fatorial (ROTINA)

Var
   C, R: Inteiro  // C= contador | R= resultado
   
Inicio
      R <- 1
      Para C <- 1 ate V faca   // Contador vai receber de 1 até o valor
           R <- R * C          // Resultado (R) recebe R e multiplica pelo C
      FimPara
      Retorne R                // Retorna o valor do fatorial
FimFuncao

Inicio
      Escreva("Digite um número: ")
      Leia(N)

      F <- Fatorial(N)
      Escreval("O valor de ", N, "! e igual a ", F)
Fimalgoritmo