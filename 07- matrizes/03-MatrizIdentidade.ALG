Algoritmo "MatrizIdentidade"
// =============================================================
// Descrição: Gerar automaticamente uma matriz identidade 3x3.
//
// Matriz identidade é uma matriz onde:
// - A diagonal principal (i = j) tem valor 1
// - Todos os outros elementos são 0
//
// Exemplo:
// 1 0 0
// 0 1 0
// 0 0 1
//
// Data atual  : 14/04/2026
// =============================================================

Var
   mID: vetor[1..3, 1..3] de Inteiro   // matriz 3x3
   i, j: Inteiro                      // i = linha | j = coluna

Inicio
      // Percorro todas as posições da matriz
      
      Para i <- 1 ate 3 faca           // controla as linhas
           Para j <- 1 ate 3 faca      // controla as colunas

                // Se a linha for igual à coluna
                // significa que estou na diagonal principal
                Se (i = j) entao
                   // Na diagonal principal sempre recebe 1
                   mID[i,j] <- 1
                senao
                   // Fora da diagonal recebe 0
                   mID[i,j] <- 0
                FimSe
           FimPara
      FimPara

      Para i <- 1 ate 3 faca
           Para j <- 1 ate 3 faca
                // Mostra os valores formatados (organizado em tabela)
                Escreva (mID[i,j]:3)
           FimPara
           Escreval()   // quebra linha para formar a matriz
      FimPara
Fimalgoritmo