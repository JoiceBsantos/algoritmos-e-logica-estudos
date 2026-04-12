Algoritmo "FibonacciFuncao"
// Descrição Prática 04: Algoritmo para criar uma serie de Fibonacci utilizando
// uma função com passagem de parametros por referencia.
// Data atual  : 11/04/2026

var
  I, T1, T2, T3: Inteiro
  
Funcao ProximoFibonacci(var N1, N2: Inteiro): Inteiro
Var
   N3: Inteiro
   
Inicio
    N3 <- N1 + N2
    N1 <- N2
    N2 <- N3
    Retorne N3
FimFuncao

inicio
   T1 <- 0
   EscrevaL(T1)
   T2 <- 1
   EscrevaL(T2)
   Para I <- 3 ate 5 faca
       T3 <- ProximoFibonacci(T1, T2)
       EscrevaL(T3)
   FimPara
fimalgoritmo