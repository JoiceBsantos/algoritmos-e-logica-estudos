Algoritmo "semnome"
// Descrição   : Quantidade de dependentes de um funcionario
// Data atual  : 02/04/2026
Var
   Nome: Caractere
   Sal, NSal: Real
   Dep: Inteiro

Inicio
      Escreva ("Qual o nome do Funcionário? ")
      Leia (Nome)
      Escreva ("Qual o salário do Funcionário? ")
      Leia (Sal)
      Escreva ("Qual e a quantidade de dependentes? ")
      Leia (Dep)
      Escolha Dep
              Caso 0
                   NSal <- Sal + (Sal*5/100)
              Caso 1, 2, 3
                   NSal <- Sal + (Sal*10/100)
              Caso 4, 5, 6
                   NSal <- Sal + (Sal*15/100)
              OutroCaso
                   NSal <- Sal + (Sal*18/100)
      FimEscolha
      Escreval ("O novo sário da(e)", Nome, "será de R$", NSal:5:2)

Fimalgoritmo