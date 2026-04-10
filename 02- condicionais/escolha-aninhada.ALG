Algoritmo "CriamcaEsperanca"
// Descrição   : Doação
// Data atual  : 02/04/2026
Var

   D : Inteiro
   Valor: Real
   
Inicio
      Escreval ("--------------------------------------------")
      Escreval ("         CRIANÇA ESPERANÇA                  ")
      Escreval ("--------------------------------------------")
      Escreval ("Muito obrigado por ajudar ! ")
      Escreval ( "Digite [1] para doar R$10 reais ")
      Escreval ( "Digite [2] para doar R$25 reais ")
      Escreval ( "Digite [3] para doar R$50 reais ")
      Escreval ( "Digite [4] para doar outros valores  ")
      Escreval ( "Digite [5] para cancelar  ")
      Leia (D)
      Escolha D
              Caso 1
                   Valor <- 10
              
              Caso 2
                   Valor <- 25
              Caso 3
                   Valor <- 50
              Caso 4
                   Escreva ("Qual o valor deseja doar? R$")
                   Leia (Valor)
              Caso 5
                   Valor <- 0
      FimEscolha
      Escreval ("----------------------------")
      Escreval (" SUA DOAÇÃO FOI DE R$", Valor)
      EscrEval (" MUITO OBRIGADO! ")
      Escreval ("----------------------------")
      


Fimalgoritmo