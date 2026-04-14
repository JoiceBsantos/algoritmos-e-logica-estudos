algoritmo "ValoresMatriz"
// =============================================================
// Descrição: Ler uma matriz 4x4 (quarta ordem) e calcular:
// - Soma da diagonal principal
// - Produto da segunda linha
// - Maior valor da terceira coluna
//
// REVISÃO:
// - Uso de matriz (2 dimensões)
// - Laços aninhados
// - Condição (diagonal principal)
// - Acumulador (soma e produto)
// - Busca de maior valor
// =============================================================

var
  m: vetor[1..4, 1..4] de Inteiro   // matriz 4x4
  l, c, sDP, p2L, mai3C: Inteiro   // variáveis de controle e cálculo

inicio
   sDP <- 0     // acumulador da soma da diagonal principal
   p2L <- 1     // acumulador do produto (começa com 1)
   mai3C <- 0   // variável para guardar o maior valor da coluna 3


   // LEITURA + SOMA DA DIAGONAL
   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca

         Escreva("Digite o valor da Posicao [", l, ",", c, "]: ")
         Leia(m[l,c])

         // Se estiver na diagonal principal (linha = coluna)
         Se (l = c) entao
            // soma os valores da diagonal
            sDP <- sDP + m[l,c]
         FimSe
      FimPara
   FimPara

   // EXIBIÇÃO DA MATRIZ
   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Escreva(m[l,c]:4)
      FimPara
      EscrevaL()
   FimPara

   // PRODUTO DA SEGUNDA LINHA
   // Linha 2 fixa ? percorre colunas
   Para c <- 1 ate 4 faca
      p2L <- p2L * m[2,c]
   FimPara

   // MAIOR VALOR DA TERCEIRA COLUNA
   // Coluna 3 fixa ? percorre linhas
   Para l <- 1 ate 4 faca
      Se (m[l,3] > mai3C) entao
         mai3C <- m[l,3]
      FimSe
   FimPara

   EscrevaL("A soma da Diagonal Principal e ", sDP)
   EscrevaL("O produto da Segunda Linha e ", p2L)
   EscrevaL("O maior valor da Terceira Coluna e ", mai3C)
fimalgoritmo


// =============================================================
// EXEMPLO DE EXECUÇÃO
// =============================================================
//
// Digite o valor da Posicao [1,1]: 1
// Digite o valor da Posicao [1,2]: 2
// Digite o valor da Posicao [1,3]: 3
// Digite o valor da Posicao [1,4]: 4
// ...
//
// MATRIZ DIGITADA:
//    1   2   3   4
//    5   6   7   8
//    9  10  11  12
//   13  14  15  16
//
// Diagonal principal (l = c):
// 1 + 6 + 11 + 16 = 34
//
// Segunda linha (linha 2):
// 5 * 6 * 7 * 8 = 1680
//
// Terceira coluna (coluna 3):
// valores: 3, 7, 11, 15 ? maior = 15
//
// RESULTADO FINAL:
// A soma da Diagonal Principal e 34
// O produto da Segunda Linha e 1680
// O maior valor da Terceira Coluna e 15