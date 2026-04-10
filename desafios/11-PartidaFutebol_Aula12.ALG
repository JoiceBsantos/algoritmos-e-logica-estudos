Algoritmo "PartidaProcedimento"
// Descrição: Ler gols de dois times e mostrar o resultado da partida.
// Informar vencedor, empate e se houve goleada.
// Data: 10/04/2026

Var
   G1, G2: Inteiro   // gols dos times

// Procedimento que analisa o resultado da partida
Procedimento Resultado(Time1, Time2: Inteiro)
Inicio
   // Verifica empate ou vencedor
   Se (Time1 = Time2) entao
      Escreval("Empate")
   senao
      Se (Time1 > Time2) entao
         Escreval("Time 1 venceu")
      senao
         Escreval("Time 2 venceu")
      FimSe
   FimSe

   // Verifica se foi goleada
   Se ((Time1 - Time2 >= 3) ou (Time2 - Time1 >= 3)) entao
      Escreval("Goleada!")
   senao
      Escreval("Partida normal")
   FimSe
FimProcedimento

Inicio
   // Entrada de dados
   Escreva("Gols do Time 1: ")
   Leia(G1)

   Escreva("Gols do Time 2: ")
   Leia(G2)

   // Chamada do procedimento
   Resultado(G1, G2)

FimAlgoritmo