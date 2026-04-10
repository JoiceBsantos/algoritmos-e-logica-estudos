Algoritmo "FatorialVariosNúmeros"
// Descrição   : Prática 03: Calcular o fatorial de varios número, "REPITA"
// Fatorial é o produto de um número inteiro positivo por todos os inteiros
// menores que ele até 1 (ex: 5! = 5×4×3×2×1).
// Data atual  : 07/04/2026

Var
   N, C, F: Inteiro    // C = Contador, N = Número, F = Fatorial
   R: Caractere
Inicio
Repita
      Escreva ("Digite um número: ")
      Leia (N)
      C <- N       // C recebe N
      F <- 1
      Repita
            Escreval (C, " x ")
            F <- F * C
            C <- C - 1    // Cada ação ele vai tirar um número.
      Ate (C < 1)        // Até que contadoe seja menor do que um.
      Escreval ("O valor do fatorial de ", N, " e igual a", F)
      Escreval ("Quer continuar ? [S/N]")
      Leia (R)
      LimpaTela
Ate (R = "N")
Fimalgoritmo