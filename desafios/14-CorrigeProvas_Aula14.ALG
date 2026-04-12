algoritmo "CorrigeProvas"
// =============================================================
// Descrição: Algoritmo para corrigir provas automaticamente usando um gabarito.
//
// Objetivo:
// 1. Cadastrar o gabarito (respostas corretas)
// 2. Ler as respostas dos alunos
// 3. Comparar com o gabarito
// 4. Calcular a nota de cada aluno
// 5. Mostrar as notas e a média da turma
//
// Data atual: 12/04/2026
// =============================================================

var
   gab: vetor[1..5] de Caractere    // vetor para armazenar o gabarito (respostas corretas)
   prova: vetor[1..5] de Caractere  // vetor para armazenar as respostas do aluno
   nome: vetor[1..3] de Caractere   // vetor com os nomes dos alunos
   nota: vetor[1..3] de Real        // vetor com as notas dos alunos
   a: Inteiro                       // contador para alunos
   s, m: Real                       // s = soma das notas | m = média da turma

// =============================================================
// PROCEDIMENTO PARA CADASTRAR O GABARITO
// =============================================================
Procedimento CadastroGabarito()
var
   c: Inteiro   // contador das questões
inicio
   EscrevaL("PASSO 1 - Cadastro de Gabarito ")
   EscrevaL("-------------------------------")

   // Aqui eu cadastro as respostas corretas
   Para c <- 1 ate 5 faca
      Escreva("Questao ", c, ": ")
      Leia(gab[c])   // guarda cada resposta no vetor
   FimPara
FimProcedimento

// =============================================================
// FUNÇÃO PARA CORRIGIR A PROVA
// =============================================================
Funcao CadastraProva(): Real
var
   c: Inteiro
   notaFinal: Real   // variável para armazenar a nota do aluno
inicio
    notaFinal <- 0   // começo com nota zero

    EscrevaL("RESPOSTAS DADAS")

    // Aqui eu leio as respostas do aluno e comparo com o gabarito
    Para c <- 1 ate 5 faca
      Escreva("Questao ", c, ": ")
      Leia(prova[c])

      // Comparo as respostas ignorando maiúsculo/minúsculo
      Se (Maiusc(prova[c]) = Maiusc(gab[c])) entao

         // Cada acerto vale 2 pontos
         notaFinal <- notaFinal + 2

      FimSe
   FimPara

   Retorne notaFinal   // retorno a nota calculada
FimFuncao

// =============================================================
// PROGRAMA PRINCIPAL
// =============================================================
inicio

    s <- 0   // inicializo a soma das notas (IMPORTANTE)

    // Primeiro cadastro o gabarito
    CadastroGabarito()

    // Agora faço o cadastro e correção das provas dos alunos
    Para a <- 1 ate 3 faca

         LimpaTela

         EscrevaL("------------------------")
         EscrevaL("ALUNO ", a)
         EscrevaL("------------------------")

         Escreva("Nome: ")
         Leia(nome[a])   // guarda o nome do aluno

         // Chama a função que corrige a prova
         nota[a] <- CadastraProva()

         // Soma as notas para calcular a média depois
         s <- s + nota[a]

    FimPara

    LimpaTela

    // Exibição das notas finais
    EscrevaL("NOTAS FINAIS ")
    EscrevaL("-----------------------------")

    Para a <- 1 ate 3 faca
       EscrevaL(nome[a]:10, nota[a]:4:1)
    FimPara

    // Cálculo da média da turma
    m <- s / 3

    EscrevaL("-----------------------------")
    EscrevaL("Media da Turma: ", m:4:1)

fimalgoritmo



// =============================================================
// EXEMPLO DE EXECUÇÃO
// =============================================================
//
// PASSO 1 - Cadastro de Gabarito
// -------------------------------
// Questao 1: A
// Questao 2: B
// Questao 3: C
// Questao 4: D
// Questao 5: E
//
// ------------------------
// ALUNO 1
// ------------------------
// Nome: Joice
// RESPOSTAS DADAS
// Questao 1: A
// Questao 2: B
// Questao 3: C
// Questao 4: D
// Questao 5: E
//
// ------------------------
// ALUNO 2
// ------------------------
// Nome: Maria
// RESPOSTAS DADAS
// Questao 1: A
// Questao 2: C
// Questao 3: C
// Questao 4: D
// Questao 5: E
//
// ------------------------
// ALUNO 3
// ------------------------
// Nome: Ana
// RESPOSTAS DADAS
// Questao 1: B
// Questao 2: B
// Questao 3: A
// Questao 4: D
// Questao 5: E
//
// NOTAS FINAIS
// -----------------------------
// Joice      10.0
// Maria       8.0
// Ana         6.0
// -----------------------------
// Media da Turma: 8.0
