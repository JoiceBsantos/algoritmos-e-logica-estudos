Algoritmo "SomaFuncao"
// Descrição Prática 01: Algoritmo para somar dois valores usando função com
// passagem de parametros por valor.
// Data atual  : 11/04/2026
Var
   V1, V2, S: Inteiro

Funcao Soma(X, Y: Inteiro): Inteiro
Inicio
      Retorne X + Y
FimFuncao

Inicio
      Escreva("Digite o primeiro valor: ")
      Leia(V1)
      Escreva("Digite o segundo valor: ")
      Leia(V2)
      
      S <- Soma (V1,V2)
      EscrevaL("A soma entre ", V1, " e ", V2, " e igual a ", S)

Fimalgoritmo



