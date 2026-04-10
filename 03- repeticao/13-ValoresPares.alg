Algoritmo "valoresPares"
// 
// Descrição   : Prática 02: Exibição dos números pares e contagem regressiva (PARA)
// Data atual  : 08/04/2026
Var
 CONT, V: Inteiro      // CONT: Contar | V: Valor
 
Inicio
      Escreva ("Digite um valor: ")
      Leia(V)
      Se (V%2=1) entao
         V <- V -1
      FimSe
      Para CONT <- V ate 0 passo - 2 faca
           Escreval(CONT)
      FimPara


Fimalgoritmo