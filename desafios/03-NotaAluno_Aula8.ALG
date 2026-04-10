Algoritmo "AproveitamentoAluno"
// Descrição : Classificar média de A a F
// Data atual: 02/04/2026

Var
   N1, N2, M: Real

Inicio
      Escreval ("----------------------------")
      Escreval (" ESCOLA PEQUENO GARFANHOTO  ")
      Escreval ("----------------------------")

      Escreva ("Digite a primeira nota: ")
      Leia(N1)

      Escreva ("Digite a segunda nota: ")
      Leia (N2)

      M <- (N1 + N2)/2

      Escreval ("----------------------------")
      Escreval (        "MÉDIA: ", M:5:2      )
      Escreval ("----------------------------")

      Se M >= 9 entao
         Escreval ("APROVEITAMENTO A")

      senao
         Se M >= 7 entao
            Escreval ("APROVEITAMENTO B")

         senao
            Se M >= 5 entao
               Escreval ("APROVEITAMENTO C")

            senao
               Se M >= 3 entao
                  Escreval ("APROVEITAMENTO D")

               senao
                  Se M >= 1 entao
                     Escreval ("APROVEITAMENTO E")

                  senao
                     Escreval ("APROVEITAMENTO F (REPROVADO)")
                  fimse
               fimse
            fimse
         fimse
      fimse

FimAlgoritmo