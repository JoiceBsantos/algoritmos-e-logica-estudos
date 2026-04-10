Algoritmo "SituaçãoAluno"
// Descrição   : Aluno reprovado ou aprovado.
Var
   N1, N2, N3, M: Real

Inicio
      Escreva ("Digite sua primeira nota : ")
      Leia (N1)
      Escreva ("Digite sua segunda nota : ")
      Leia (N2)
      Escreva ("Digite sua terceira nota: ")
      Leia (N3)
      M <- (N1 + N2 + N3) / 3
      Se M >= 6 entao
         Escreva ("Parabens você está APROVADO, sua média foi de ", M:2:1)
      senao
           Se (M >= 5) e (M <6) então
              Escreva ("Você está de RECUPERAÇÃO, sua média foi de ", M:2:1)
           senao
              Escreva ("REPROVADO, sua média foi de ", M:2:1)
           FimSe
      FimSe
      


Fimalgoritmo
