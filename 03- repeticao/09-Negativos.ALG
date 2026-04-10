Algoritmo "ContarNegativos"
// Descrição   : Prática 02: Quantos numeros são negativos ?, "REPITA"
// Data atual  : 06/04/2026

Var
   N, C, TotN: Inteiro
Inicio
      C <- 1
      TotN <- 0
      Repita
        Escreval ("Digite um número: ")
        Leia (N)
        Se (N<0) entao
           TotN <- TotN +1
        FimSe
        C <- C + 1
      Ate (C > 5)
      Escreval (" Foram digitados ", TotN, " valores negativos.")
Fimalgoritmo
