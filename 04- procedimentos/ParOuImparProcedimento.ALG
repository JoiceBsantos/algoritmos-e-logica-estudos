Algoritmo "ParOuImparProcedimento"
// ================= PROCEDIMENTO =================
// Descrição Prática 03: Verifica se um número é par ou ímpar utilizando procedimento
// Data atual: 09/04/2025
Var
N: Inteiro


// Procedimento que recebe um valor inteiro (V) e verifica se ele é par ou ímpar
Procedimento ParOuImpar (V: Inteiro)
Inicio
      Se (V % 2 = 0) entao                   // Verifica se o número é divisível por 2
         Escreval("O número ", V, " e PAR") // Se o resto da divisão for 0 ? número par
      senao
           Escreval("O número ", V, " e IMPAR") // Caso contrário ? número ímpar
      FimSe
FimProcedimento

// ============Programa principal================

Inicio
      Escreva("Digite um número: ")
      Leia (N)
      ParOuImpar(N)
FimAlgoritmo

























Algoritmo "ParOuImparProcedimento"
// Descrição Prática 3: Algoritmo para verificar se um valor e par ou impar
// utilizando rotinas internas.
// Data atual  : 09/04/2026
