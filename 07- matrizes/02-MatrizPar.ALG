Algoritmo "MatrizPar"
// =============================================================
// Descrição: Prática 2: Preencher uma matriz 3x3 e mostrar
// os valores pares destacando-os e contando quantos existem.
//
//   Matriz de terceira ordem
// - Uso de matriz (2 dimensões)
// - Laços aninhados (linha e coluna)
// - Uso de condição (par ou ímpar)
// - Uso de contador (TotPar)
//
// Data atual  : 14/04/2026
// =============================================================

Var
   valores: vetor[1..3, 1..3] de Inteiro   // matriz 3x3
   l, c, TotPar: Inteiro                  // l = linha | c = coluna | TotPar = contador

Inicio
      Para l <- 1 ate 3 faca
           Para c <- 1 ate 3 faca
                Escreva ("Digite o valor da posição [", l, ",", c, "]: ")
                Leia (valores[l,c])
           FimPara
      FimPara

      Escreval ()
      Escreval("MATRIZ:")
      Escreval("-------------------")

      TotPar <- 0   // inicializa o contador de pares

      Para l <- 1 ate 3 faca
           Para c <- 1 ate 3 faca

                // Verifica se o número é par
                Se(valores[l,c] % 2 = 0) entao

                     // Mostra valores pares entre { }
                     Escreva("{", valores[l, c]:2, "}")

                     // Conta os pares
                     TotPar <- TotPar + 1
                senao
                     // Mostra valores ímpares normal
                     Escreva(valores[l, c]:4)
                FimSe
           FimPara
           Escreval()   // quebra linha (nova linha da matriz)
      FimPara
      
      Escreval("-------------------")
      Escreval("Ao todo foram digitados ", TotPar, " valores PARES")
Fimalgoritmo


// MATRIZ:
// -------------------
// {10}   5 { 8}
//  3 {12}   7
// { 4}   9 { 6}
// -------------------
// Ao todo foram digitados 5 valores PARES