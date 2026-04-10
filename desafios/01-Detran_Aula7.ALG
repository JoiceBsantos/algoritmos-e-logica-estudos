Algoritmo "semnome"
// Descrição   : Se está apto para dirigir

Var
   idade, ano, nasc: inteiro


Inicio
      Escreva ("Em que ano estamos: ")
      Leia (ano)
      Escreva ("Em que ano você nasceu: ")
      Leia (nasc)
      idade <- ano - nasc
      Escreva ("Você tem ", idade, " anos ")
      Se idade >=18 então
         Escreval ("e está apto a dirigir!")
      senao
           Escreval ("e não está apto para dirigir!")
      Fimse
      

Fimalgoritmo