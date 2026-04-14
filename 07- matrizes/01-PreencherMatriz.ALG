Algoritmo "LerMatriz"
// =============================================================
// Descrição: Prática 1: Algoritmo para preencher uma matriz 3x2
// pelo teclado e depois exibir os valores.
// - Uso de matriz (variável composta multidimensional)
// - Uso de dois laços Para (linhas e colunas)
// - Entrada e saída de dados organizados em forma de tabela
//
// Data atual  : 14/04/2026
// =============================================================

Var
   mat: vetor[1..3, 1..2] de Inteiro    // matriz com 3 linhas e 2 colunas
   l, c: Inteiro                        // l = linha | c = coluna

Inicio
      // Percorro as linhas
      Para l <- 1 ate 3 faca

           // Percorro as colunas
           Para c <- 1 ate 2 faca

                Escreva ("Digite o valor da posição [", l, ",", c, "]: ")
                Leia(mat[l,c])   // armazeno o valor na posição [linha, coluna]
           FimPara
      FimPara
      EscrevaL("MATRIZ DIGITADA:")

      Para l <- 1 ate 3 faca
           Para c <- 1 ate 2 faca
                Escreva (mat[l,c]:5)   // mostra alinhado (formatação)
           FimPara
           Escreval()   // quebra linha para formar a "tabela"
      FimPara

Fimalgoritmo



// ===================================
//        EXEMPLO DE EXECUÇÃO
// ===================================
//
// Digite o valor da posição [1,1]: 10
// Digite o valor da posição [1,2]: 20
// Digite o valor da posição [2,1]: 30
// Digite o valor da posição [2,2]: 40
// Digite o valor da posição [3,1]: 50
// Digite o valor da posição [3,2]: 60
//
// MATRIZ DIGITADA:
//    10   20
//    30   40
//    50   60