Algoritmo "Combinaçôes"

// Descrição   : Prática 04: Mostrar a combinação de três  valores agrupados dois a dois.
// (aninhamento de estruturas de repeticoes) <- serve para (ENQUANTO, REPITA e PARA)
// Data atual  : 08/04/2026
Var
   C1, C2: Inteiro
   // C1 = primeiro contador (controle externo)
   // C2 = segundo contador (controle interno)

Inicio
      Para C1 <- 1 ate 3 faca        // Laço externo: controla o primeiro valor (C1)
           Para C2 <- 1 ate 3 faca   // Laço interno: controla o segundo valor (C2)
           Escreval (C2,C2)          // Exibe a combinação dos dois valores
           FimPara                   // fim do laço interno (C2)
      FimPara                        // fim do laço externo (C1)

FimAlgoritmo
