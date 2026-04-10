Algoritmo "conversor"

Var
   A, B, C, angulo, S: Real


Inicio
      A <- Abs (-50)
      Escreval("Valor absoluto de A:", A)
      B <- Exp  (9,5)
      Escreval("Exponenciação de B:" ,B)
      C <- Int (RaizQ (90))
      Escreval ("Raiz quadrada de C:", C)
      Escreval ("Informe um angulo: ")
      Leia (angulo)
      S <- Sen(GraupRad (angulo) )
      Escreva("O Seno de ", angulo, " e igual a ", S)

Fimalgoritmo