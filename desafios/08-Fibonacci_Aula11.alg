Algoritmo "Fibonacci"
// 
// Descrição   : Desafio 01: Mostre os 15 primeiros digitos de uma serie de
// Ficonacci (0,1,1,2,3,5,8,13,21,34...)
// Data atual  : 08/04/2026

Var
   C, T1, T2, T3: Inteiro
   // C  = contador do laço
   // T1 = primeiro termo da sequência
   // T2 = segundo termo
   // T3 = próximo termo (resultado da soma)

Inicio
      Escreval ("----------------------------")
      Escreval (" SEQUENCIA DE FIBONACCI ")
      Escreval ("----------------------------")
      
      T1 <-0                     // inicializa os dois primeiros termos
      Escreva (T1, " ")         // mostra o primeiro número
      T2 <- 1
      Escreva (T2, " ")         // mostra o segundo número

      Para c <- 3 ate 15 faca   // laço para gerar os próximos termos até 15 números
           T3 <- T1 + T2        // calcula o próximo termo
           Escreva (T3, " ")
           // atualiza os valores para a próxima repetição
           T1 <- T2
           T2 <- T3
      FimPara
  Escreval("")   // quebra de linha no final
FimAlgoritmo
