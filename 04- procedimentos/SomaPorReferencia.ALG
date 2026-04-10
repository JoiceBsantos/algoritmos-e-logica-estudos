Algoritmo "SomaPorReferencia"
// Descrição Prática 03: Algoritmo para somar dois valores usando procedimentos
// com passagem de parametros por referencia.
//
// Data atual: 09/04/2026

Var
   X, Y: Inteiro

// ================= PROCEDIMENTO =================
// Procedimento que recebe A e B por REFERÊNCIA (var)
// Isso significa que ele altera diretamente X e Y

Procedimento Soma (var A, B: Inteiro)
Inicio
      // Modifica os valores recebidos
      A <- A + 1   // incrementa 1 em A
      B <- B + 2   // incrementa 2 em B

      // Exibe os valores já alterados
      Escreval("Valor de A = ", A)
      Escreval("Valor de B = ", B)

      // Exibe a soma
      Escreval("Soma A + B = ", A + B)
FimProcedimento

Inicio
   // Atribuição inicial
   X <- 4
   Y <- 8
   
  // Chamada do procedimento
  Soma (X, Y)

  // Como foi passado por referência, X e Y foram alterados dentro do procedimento
  Escreval("Valor de X = ", X)
  Escreval("Valor de Y = ", Y)
FimAlgoritmo
