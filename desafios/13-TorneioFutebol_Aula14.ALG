Algoritmo "TorneioFutebol"
// ==================================================================
// Descrição Exercício 01: Algoritmo para simular um torneio de futebol
//
// Objetivo:
// 1. Ler o nome de 3 times
// 2. Armazenar esses nomes em um vetor
// 3. Gerar todos os confrontos possíveis entre eles
// 4. Exibir os jogos no formato: Time1 [ ] x [ ] Time2
//
// Data atual  : 12/04/2026
// ==================================================================

Var
   time: vetor [1..3] de Caractere   // vetor para guardar os nomes dos times
   l, c: Inteiro                     // l = linha (time principal) | c = adversário

Inicio

      // Exibe o título do programa
      EscrevaL("-----------------------")
      EscrevaL(" CAMPEONADO DE FUTEBOL ")
      EscrevaL("-----------------------")

      // Aqui eu faço a leitura dos nomes dos 3 times
      // Uso um laço Para para não precisar repetir código
      Para c <- 1 ate 3 faca
           Escreva ("Nome do ", c, "º time: ")
           Leia(time[c])   // guardo cada nome em uma posição do vetor
      FimPara

      // Limpo a tela para mostrar só a tabela de jogos
      LimpaTela

      // Cabeçalho da tabela
      EscrevaL("----------------------")
      EscrevaL("  TABELA DE PARTIDAS  ")
      EscrevaL("----------------------")

      // Aqui eu uso dois laços (um dentro do outro)
      // para gerar todas as combinações possíveis entre os times
      Para l <- 1 ate 3 faca
           Para c <- 1 ate 3 faca

                // Essa condição evita que um time jogue contra ele mesmo
                // Exemplo que NÃO pode acontecer: Vasco x Vasco
                Se (l <> c) entao

                   // Aqui eu mostro o confronto
                   // time[l] é o time da vez
                   // time[c] é o adversário
                   EscrevaL(time[l]:12, " [  ] x [  ] ", time[c]:12)
                FimSe
           FimPara
      FimPara
Fimalgoritmo