Algoritmo "DissecandoMatrizes"
//  -----------------------------------------------------------------------
// Descrição: Algoritmo que trabalha com uma matriz 4x4 (quarta ordem) que
// permiti no final:
//
// - Visualizar a matriz completa
// - Mostrar a diagonal principal
// - Mostrar o triângulo superior
// - Mostrar o triângulo inferior
//
// PRATICANDO: Uso de matriz (2 dimensões), procedimentos, menu interativo e
// lógica de posição (linha x coluna)
//
// Data atual: 14/04/2026
// -------------------------------------------------------------------------

var
  m: vetor[1..4, 1..4] de Inteiro
  // matriz 4x4 onde armazeno os valores digitados
  l, c: Inteiro
  // l = linha | c = coluna (usados para percorrer a matriz)
  op: Inteiro
  // op = opção escolhida no menu

// PROCEDIMENTO: MATRIZ COMPLETA

Procedimento MostraMatriz()
inicio
   // Percorro todas as linhas e colunas mostrando todos os valores
   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Escreva(m[l,c]:4)   // mostra cada elemento da matriz formatado
      FimPara
      EscrevaL()             // quebra linha para formar a tabela
   FimPara
FimProcedimento

// PROCEDIMENTO : DIAGONAL PRINCIPAL

Procedimento DiagonalPrincipal()
var
   t: inteiro   // variável auxiliar usada só para espaçamento visual
   
inicio
   // A diagonal principal acontece quando linha = coluna (l = c)
   Para l <- 1 ate 4 faca
      EscrevaL(m[l,l]:4)   // acesso apenas os elementos da diagonal
      // Esse laço serve apenas para organizar a saída visualmente
      Para t <- 1 ate l faca
         Escreva("    ")
      FimPara
   FimPara
FimProcedimento

// PROCEDIMENTO: TRIÂNGULO SUPERIOR

Procedimento TrianguloSuperior()
var t: Inteiro   // usado para espaçamento
inicio

   // Triângulo superior = elementos acima da diagonal
   // Regra: coluna > linha (c > l)
   Para l <- 1 ate 3 faca
      Escreva("    ")         // espaço inicial
      Para c <- l+1 ate 4 faca
         Escreva(m[l,c]:4)   // mostra apenas os elementos acima da diagonal
      FimPara
      EscrevaL()

      // Ajuste visual para manter formato triangular
      Para t <- 1 ate l faca
         Escreva("    ")
      FimPara
   FimPara
   EscrevaL()
FimProcedimento

// PROCEDIMENTO: TRIÂNGULO INFERIOR

Procedimento TrianguloInferior()
inicio

   // Triângulo inferior = elementos abaixo da diagonal
   // Regra: linha > coluna (l > c)
   Para l <- 2 ate 4 faca
      EscrevaL()
      Para c <- 1 ate l-1 faca
         Escreva(m[l,c]:4)   // mostra apenas elementos abaixo da diagonal
      FimPara
   FimPara
   EscrevaL()
FimProcedimento

// PROGRAMA PRINCIPAL

inicio
   // LEITURA DA MATRIZ
   // Aqui eu preencho toda a matriz 4x4 com valores digitados pelo usuário
   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
          Escreva("Digite valor para a posicao [", l, ",", c, "]: ")
          Leia(m[l,c])
      FimPara
   FimPara
   LimpaTela

   // MENU INTERATIVO
   // Esse laço mantém o programa rodando até o usuário escolher sair
   Repita

      EscrevaL()
      EscrevaL("MENU DE OPCOES")
      EscrevaL("====================")
      EscrevaL("[1] Mostrar a Matriz")
      EscrevaL("[2] Diagonal Principal")
      EscrevaL("[3] Triangulo Superior")
      EscrevaL("[4] Triangulo Inferior")
      EscrevaL("[5] Sair")

      // Validação: garante que o usuário digite uma opção válida (1 a 5)
      Repita
         EscrevaL("===== OPCAO: ")
         Leia(op)
      Ate (op >=1) e (op <=5)
      LimpaTela
      // Executa a opção escolhida
      Escolha op
         Caso 1
            MostraMatriz()
         Caso 2
            DiagonalPrincipal()
         Caso 3
            TrianguloSuperior()
         Caso 4
            TrianguloInferior()
         Caso 5
            EscrevaL("ENCERRANDO...")
      FimEscolha
   Ate (op = 5)

fimalgoritmo
