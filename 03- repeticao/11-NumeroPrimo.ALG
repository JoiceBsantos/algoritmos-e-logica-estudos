Algoritmo "NumeroPrimo"
// Descrição   : Prática 4 : Verifique se um número é ou não primo. (REPITA)
// Um número primo é um número natural maior que 1 que só pode ser dividido
// por 1 e por ele mesmo (ex: 2, 3, 5, 7). Apenas dois números divisiveis.

// Data atual  : 07/04/2026

Var
   C, N, ContDiv : Inteiro  // C = Contador, N = Número ContDiv = Contador de Divisiveis
   R: Caractere             // R = Resposta
Inicio
Repita
      C <- 1
      ContDiv <- 0
      Escreva ("Digite um numero: ")
      Leia (N)
      Repita
            Se (N % C = 0) entao       // Se o contador for divisivel pelo numero, divisivel e o resto da divisão
               ContDiv <- ContDiv + 1
            FimSe
            C <- C + 1
      Ate (C > N)
      Se  (ContDiv > 2) entao
          Escreval ("O valor ", N, " não é primo!")
      senao
           Escreval ("O valor ", N, " é primo!")
      Fimse
      Escreva ("Quer continuar? [S/N]")
      Leia (R)
      LimpaTela
Ate (R = "N")
Fimalgoritmo
