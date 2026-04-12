algoritmo "ListagemAlunos"
// Descrição: Prática 02: Algoritmo para cadastrar alunos, calcular suas
// médias e mostrar quais ficaram acima da média da turma.
// Data atual: 12/04/2026

var
  nome: vetor[1..5] de Caractere   // vetor para armazenar os nomes dos alunos
  nota1: vetor[1..5] de Real       // vetor para armazenar a primeira nota
  nota2: vetor[1..5] de Real       // vetor para armazenar a segunda nota
  media: vetor[1..5] de Real       // vetor para armazenar a média de cada aluno
  SMed, MTurma: Real               // SMed = soma das médias | MTurma = média da turma
  i: Inteiro                       // contador

inicio

   SMed <- 0   // inicializa a soma das médias (IMPORTANTE)

   // ENTRADA DE DADOS DOS ALUNOS
   Para i <- 1 ate 5 faca

      EscrevaL("--------------------")
      EscrevaL("DADOS DO ALUNO ", i)
      EscrevaL("--------------------")

      Escreva("Nome: ")
      Leia(nome[i])   // armazena o nome na posição i

      Escreva("Nota 1: ")
      Leia(nota1[i])  // armazena a primeira nota

      Escreva("Nota 2: ")
      Leia(nota2[i])  // armazena a segunda nota

      // Calcula a média do aluno
      media[i] <- (nota1[i] + nota2[i]) / 2

      Escreva("Media: ")
      EscrevaL(media[i]:4:1)   // mostra a média formatada

      // Soma as médias para calcular depois a média da turma
      SMed <- SMed + media[i]

   FimPara
   // CÁLCULO DA MÉDIA DA TURMA
   LimpaTela

   MTurma <- SMed / 5   // média geral da turma

   EscrevaL ("A media da turma e ", MTurma:4:1)
   EscrevaL("-----------------------------------")
   EscrevaL("Alunos que ficaram acima da media")
   EscrevaL("-----------------------------------")

   // VERIFICAR QUEM ESTÁ ACIMA DA MÉDIA
   Para i <- 1 ate 5 faca

      // Se a média do aluno for maior que a média da turma
      Se (media[i] > MTurma) entao

         // Mostra nome e média do aluno
         EscrevaL(nome[i]:20, media[i]:4:1)
      FimSe
   FimPara
fimalgoritmo