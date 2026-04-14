Algoritmo "RelembrandoVetores"
// =============================================================
// REVISÃO: Vetores (Variáveis Compostas)
//
// Neste exercício estou relembrando:
// - Como declarar um vetor
// - Como armazenar valores em cada posição
// - Como acessar esses valores
// - Diferença entre variáveis simples e vetor
//
// Data atual: 14/04/2026
// =============================================================

Var
   // Variáveis simples (armazenam apenas 1 valor cada)
   n1, n2, n3: Inteiro

   // Vetor (armazena vários valores em uma única estrutura)
   n: vetor[1..3] de inteiro

Inicio

      // Atribuindo valores diretamente no vetor
      // Cada posição representa um "espaço" de memória

      n[1] <- 3
      n[2] <- 5
      n[3] <- 1

      // ============================
      // EXIBIÇÃO DOS VALORES
      // ============================

      EscrevaL("Valores armazenados no vetor:")
      EscrevaL("Posicao 1: ", n[1])
      EscrevaL("Posicao 2: ", n[2])
      EscrevaL("Posicao 3: ", n[3])

      // ============================
      // COMPARAÇÃO (REVISÃO)
      // ============================

      // Aqui eu poderia fazer a mesma coisa com variáveis simples:
      n1 <- 3
      n2 <- 5
      n3 <- 1

      EscrevaL("--------------------------")
      EscrevaL("Usando variaveis simples:")
      EscrevaL(n1, " ", n2, " ", n3)

      // ============================
      // USANDO REPETIÇÃO (MELHOR FORMA)
      // ============================

      EscrevaL("--------------------------")
      EscrevaL("Percorrendo o vetor com Para:")

      Para i <- 1 ate 3 faca
         EscrevaL("n[", i, "] = ", n[i])
      FimPara

Fimalgoritmo