Algoritmo "Contar1a10"
// Descrição   : Prática 01: Conta de 1 até 10  e multiplicando , "REPITA"
// Data atual  : 06/04/2026

Var
   Cont, N, R: Inteiro              // Cont = contador | S = soma acumulada
Inicio
      Cont <- 1
      Escreva ("Quer ver a tabuada de qual número? ")
      Leia(N)
      Repita
        R <- N* Cont
        Escreval (N, " X", Cont, " =", R)
        Cont <- Cont + 1
      Ate (Cont > 10)
Fimalgoritmo
