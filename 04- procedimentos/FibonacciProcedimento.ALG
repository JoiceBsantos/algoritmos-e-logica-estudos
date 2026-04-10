Algoritmo "FibonacciProcedimento"
// Descrição Prática 05 : Algoritmo para exibir os 10 primeiros elemesntos de
// uma série de Fibonacci usando procedimentos com passagem de parametros por referencia.
//
// Data atual: 09/04/2026

Var
   I, T1, T2: Inteiro   // I = contador | T1 e T2 = termos da sequência

// ================= PROCEDIMENTO =================
// Calcula o próximo número da sequência de Fibonacci
// Recebe dois valores por referência (N1 e N2)

Procedimento ProximoFibonacci(var N1, N2: Inteiro)
Var
   N3: Inteiro          // variável para armazenar o próximo valor
Inicio
      N3 <- N1 + N2    // Calcula o próximo termo
      Escreval(N3)     // Mostra o valor
      // Atualiza os valores para a próxima iteração
      N1 <- N2
      N2 <- N3
FimProcedimento

Inicio
      T1 <- 0                  // Primeiros termos da sequência
      Escreval(T1)
      T2 <- 1
      Escreval(T2)
      Para I <- 3 ate 10 faca  // Loop para gerar os próximos termos até completar 10
ProximoFibonacci(T1, T2)
      FimPara
FimAlgoritmo
