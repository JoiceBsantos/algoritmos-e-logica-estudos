algoritmo "OrdenaVetor"
// Descrição: Prática 04: Algoritmo para ler 10 valores, ordenar em ordem
// crescente e mostrar o vetor já ordenado.
// Data atual: 12/04/2026

var
  v: vetor[1..10] de Inteiro   // vetor que armazenará os 10 valores
  c: Inteiro                   // contador para leitura e exibição

Procedimento OrdenaVetor()     // Procedimento para ordenar o vetor
var
   i, j, aux: Inteiro   // i e j = contadores | aux = variável auxiliar para troca
inicio
   // Percorre o vetor comparando os valores
   Para i <- 1 ate 9 faca
      Para j <- i+1 ate 10 faca

         // Se o valor da posição i for maior que o da posição j
         Se (v[i] > v[j]) entao

            // Troca os valores de posição (ordenação)
            aux <- v[i]     // guarda o valor de v[i]
            v[i] <- v[j]    // coloca o menor valor em v[i]
            v[j] <- aux     // coloca o maior valor em v[j]
         FimSe
      FimPara
   FimPara
FimProcedimento

// PROGRAMA PRINCIPAL

inicio

   // Leitura dos valores
   Para c <- 1 ate 10 faca
      Escreva("Digite o ", c, "o. valor: ")
      Leia(v[c])   // armazena no vetor
   FimPara

   // Chama o procedimento para ordenar o vetor
   OrdenaVetor()

   // Exibe o vetor já ordenado
   EscrevaL("-------------------------------")
   EscrevaL("Vetor Ordenado: ")
   EscrevaL("-------------------------------")

   Para c <- 1 ate 10 faca
      Escreva(v[c], " ")
   FimPara
fimalgoritmo