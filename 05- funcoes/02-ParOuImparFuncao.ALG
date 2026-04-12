Algoritmo "ParImpar"
// Descrição: Prática 02: Algoritmo para criar uma função que verifica se um
// determinado número passado como parametro e PAR ou IMPAR.
// Data atual  : 11/04/2026
Var
   N: Inteiro     // N= Número
   R: Caractere   // R= Resultado

Funcao ParOuImpar(V : Inteiro): Caractere
Inicio
      Se(V%2 = 0) entao   // Se o V, resto da divisão por 2 for igual a zero
         Retorne "PAR"
      senao
         Retorne "IMPAR"
      FimSe
FimFuncao

Inicio
      Escreva("Digite um número: ")
      Leia(N)
      R <- ParOuImpar(N)
      Escreva("O número ", N, " e um valor ", R)
Fimalgoritmo