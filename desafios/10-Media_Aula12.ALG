Algoritmo "MediaAlunoProcedimento"
// Descrição: Ler duas notas e calcular a média do aluno utilizando procedimento.
// Mostrar se o aluno foi aprovado ou reprovado.
// Data: 10/04/2026

Var
   N1, N2: Real   // variáveis para armazenar as notas

// Procedimento responsável por calcular e mostrar a média
Procedimento Media(Nota1, Nota2: Real)
Var
   M: Real   // variável para armazenar a média
Inicio
   // Cálculo da média
   M <- (Nota1 + Nota2) / 2

   // Exibe a média
   Escreval("Media: ", M:5:2)

   // Verifica situação do aluno
   Se (M >= 7) entao
      Escreval("Aprovado")
   senao
      Escreval("Reprovado")
   FimSe
FimProcedimento

Inicio
   // Entrada de dados
   Escreva("Digite a primeira nota: ")
   Leia(N1)

   Escreva("Digite a segunda nota: ")
   Leia(N2)

   // Chamada do procedimento
   Media(N1, N2)

FimAlgoritmo