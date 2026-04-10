Algoritmo "QuantosEntre0e10"
// Descrição: Prática 03: Ler 6 valores, contar quantos estão entre 0 e 10
// e somar TODOS os números ímpares (independente do intervalo)

//Data : 08/04/2026

Var
C, V, Tot010, SImp: Inteiro
// C = contador do loop
// V = valor digitado pelo usuário
// Tot010 = quantidade de valores entre 0 e 10
// SImp = soma de todos os números ímpares

Inicio
      Tot010 <- 0     // inicia o contador de valores no intervalo
      SImp <- 0       // inicia a soma dos ímpares
      
      Para C <- 1 ate 6 faca   // repete 6 vezes
           Escreva ("Digite um valor: ")
       Leia (V)            // lê o valor digitado

       // verifica se o valor está entre 0 e 10
       Se (V>=0) e (V<=10) entao
          Tot010 <- Tot010 + 1   // incrementa o contador
       FimSe

       // verifica se o número é ímpar
       Se (V%2=1) entao
          SImp <- SImp + V       // soma o valor na variável SImp
       FimSe

  FimPara   // fim do laço de repetição

  // exibe os resultados
  Escreval("Ao todo foram ", Tot010, " valores entre 0 e 10")
  Escreval("A soma de todos os impares foi ", SImp)

FimAlgoritmo
