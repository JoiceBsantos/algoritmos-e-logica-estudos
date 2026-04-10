Algoritmo "SomadorNumerico"

Var
   contador, N, S, maior, menor : Inteiro

Inicio
      contador <- 1
      S <- 0

      Enquanto (contador <= 5) faca
               Escreva ("Digite o ", contador, "o valor: ")
               Leia (N)

               Se (contador = 1) entao
                  maior <- N
                  menor <- N
               senao
                  Se (N > maior) entao
                     maior <- N
                  FimSe

                  Se (N < menor) entao
                     menor <- N
                  FimSe
               FimSe

               S <- S + N
               contador <- contador + 1
      FimEnquanto

      Escreval ("A soma de todos os valores foi: ", S)
      Escreval ("O maior valor digitado foi: ", maior)
      Escreval ("O menor valor digitado foi: ", menor)

Fimalgoritmo