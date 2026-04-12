algoritmo "TotalPares"
// Descrição: Prática 01: Algoritmo para preencher um vetor e mostrar
// os valores pares. O programa:
// 1. Lê 7 valores e armazena em um vetor
// 2. Verifica quais são pares
// 3. Mostra os valores pares e suas posições
// Data atual: 12/04/2026

var
  n: vetor[1..7] de Inteiro   // vetor que armazena 7 números
  i, TotPar: Inteiro          // i = contador | TotPar = total de números pares

inicio
   // Laço para ler os valores e armazenar no vetor
   Para i <- 1 ate 7 faca
      Escreva("Digite o ", i, "o. valor: ")
      Leia(n[i])   // armazena o valor na posição i do vetor
   FimPara

   LimpaTela   // limpa a tela para mostrar apenas os resultados

   // Laço para verificar quais valores são pares
   Para i <- 1 ate 7 faca

      // Verifica se o número é par (resto da divisão por 2 = 0)
      Se (n[i] % 2 = 0) entao

         TotPar <- TotPar + 1   // incrementa o contador de pares

         // Mostra o valor e a posição onde ele foi armazenado
         EscrevaL("Valor ", n[i], " na posicao ", i, " e PAR!")

      FimSe
   FimPara
   // Mostrar total de números pares encontrados
   EscrevaL("Total de numeros pares: ", TotPar)

fimalgoritmo