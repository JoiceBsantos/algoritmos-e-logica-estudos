Algoritmo "AnalisadorValores"
// =============================================================
// Descrição: Desafio 01
// Lê 5 números e mostra:
// - Soma e média
// - Quantos são divisíveis por 5
// - Quantos são nulos (0)
// - Soma dos números pares
//
// Data: 08/04/2026
// =============================================================

Var
   V, C, S, DI5, NUL, SPAR: Inteiro
   M: Real

Inicio
    // Inicialização das variáveis
    S <- 0        // soma total
    DI5 <- 0      // contador de números divisíveis por 5
    NUL <- 0      // contador de números iguais a zero
    SPAR <- 0     // soma dos números pares

    // Loop para ler 5 valores
    Para C <- 1 ate 5 faca
         Escreva("Digite o ", C, "o valor: ")
         Leia(V)

         // Soma total
         S <- S + V

         // Verifica se é divisível por 5
         Se (V % 5 = 0) entao
            DI5 <- DI5 + 1
         FimSe

         // Verifica se é nulo
         Se (V = 0) entao
            NUL <- NUL + 1
         FimSe

         // Verifica se é par e soma
         Se (V % 2 = 0) entao
            SPAR <- SPAR + V
         FimSe
    FimPara

    // Cálculo da média
    M <- S / 5

    // Saída dos resultados
    Escreval("A soma entre os valores e ", S)
    Escreval("A media entre os valores e ", M:5:1)
    Escreval("Valores divisiveis por cinco: ", DI5)
    Escreval("Valores nulos: ", NUL)
    Escreval("A soma dos valores pares e ", SPAR)

FimAlgoritmo