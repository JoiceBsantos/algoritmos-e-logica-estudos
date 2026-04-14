algoritmo "JogoVelha"
// ----------------------------------------------------------------------
// Descrição: Jogo da velha usando matriz 3x3
//
// Praticando: matriz (tabuleiro), procedimentos (organização), funções
// (validação e lógica) e controle de jogo (loop + turnos)
//
// Data atual: 14/04/2026
//-----------------------------------------------------------------------

var
  v: vetor[1..3, 1..3] de Caractere
  // matriz que representa o tabuleiro do jogo (3 linhas x 3 colunas)
  // cada posição guarda "X", "O" ou um número (posição livre)

  L, C: Inteiro
  // L = linha | C = coluna usadas para percorrer a matriz (loops)

  Cont: Inteiro
  // contador usado para preencher o tabuleiro com números de 1 a 9

  Po: Inteiro
  // posição escolhida pelo jogador (de 1 a 9)

  Simb : Caractere
  // símbolo do jogador atual ("X" ou "O")

  R: Logico
  // resultado da jogada: verdadeiro = jogada válida , falso = jogada inválida

  vencedor: Caractere
  // guarda quem ganhou:
  // "X" = jogador X venceu
  // "O" = jogador O venceu
  // "V" = velha (empate)

  tipoVitoria: Caractere
  // guarda como foi a vitória: "Linha", "Coluna" ou "Diagonal"

// --------------------------------
// MOSTRA O TABULEIRO NA TELA
// --------------------------------
Procedimento mostraVelha()
Inicio
   EscrevaL("+---+---+---+")

   // percorre todas as posições da matriz
   Para L <- 1 ate 3 faca
      Para C <- 1 ate 3 faca
         Escreva("|  ", v[L,C]:1)   // mostra cada posição
      FimPara
      Escreva("|")
      EscrevaL()
      EscrevaL("+---+---+---+")
   FimPara
FimProcedimento

// -----------------------------------------
// ALTERNA ENTRE OS JOGADORES (X ? O)
// -----------------------------------------
Procedimento mudaJogador()
inicio
   Se (Simb = "X") entao
      Simb <- "O"
   senao
      Simb <- "X"
   FimSe
FimProcedimento

// --------------------------------------
// REALIZA UMA JOGADA NO TABULEIRO
// --------------------------------------
Funcao Jogar(S: Caractere; P: Inteiro): Logico
Var
   mudou: logico
inicio
   mudou <- falso   // começa assumindo que a jogada é inválida

   // percorre a matriz procurando a posição escolhida
   Para L <- 1 ate 3 faca
      Para C <- 1 ate 3 faca

         // se encontrar a posição digitada (ex: "1", "2", ...)
         Se(v[L,C] = NumpCarac(P)) entao

            v[L,C] <- S        // substitui pelo símbolo do jogador
            mudou <- verdadeiro   // jogada válida

         FimSe
      FimPara
   FimPara

   Retorne mudou
FimFuncao

// ---------------------------------
// VERIFICA SE O JOGO TERMINOU
// ---------------------------------
Funcao TerminouVelha(): Logico
Var
  terminou: Logico
  ocorr: Inteiro
inicio
   terminou <- falso

   // VERIFICA LINHAS
   Para L <- 1 ate 3 faca

      // verifica se os 3 elementos da linha são iguais (X ou O)
      Se (v[L,1] = v[L,2]) e (v[L,2] = v[L,3]) e ((v[L,1] = "X") ou (v[L,1] = "O")) entao

         terminou <- verdadeiro
         vencedor <- v[L,1]        // guarda quem venceu
         tipoVitoria <- "Linha"   // tipo de vitória

      FimSe
   FimPara

   // VERIFICA COLUNAS
   Para C <- 1 ate 3 faca

      Se (v[1,C] = v[2,C]) e (v[2,C] = v[3,C]) e ((v[1,C] = "X") ou (v[1,C] = "O")) entao

         terminou <- verdadeiro
         vencedor <- v[1,C]
         tipoVitoria <- "Coluna"

      FimSe
   FimPara

   // VERIFICA DIAGONAIS
   Se (v[1,1] = v[2,2]) e (v[2,2] = v[3,3]) e ((v[1,1] = "X") ou (v[1,1] = "O")) entao

      terminou <- verdadeiro
      vencedor <- v[1,1]
      tipoVitoria <- "Diagonal"

   FimSe

   Se (v[1,3] = v[2,2]) e (v[2,2] = v[3,1]) e ((v[1,3] = "X") ou (v[1,3] = "O")) entao
      terminou <- verdadeiro
      vencedor <- v[1,3]
      tipoVitoria <- "Diagonal"
   FimSe

   // VERIFICA EMPATE (VELHA)
   ocorr <- 0

   // conta quantas posições ainda estão livres
   Para L <- 1 ate 3 faca
      Para C <- 1 ate 3 faca
         Se (v[L,C] <> "X") e (v[L,C] <> "O") entao
            ocorr <- ocorr + 1
         FimSe
      FimPara
   FimPara

   // se não há espaços livres e ninguém venceu ? empate
   Se (ocorr = 0) e (terminou = falso) entao
      terminou <- verdadeiro
      vencedor <- "V"
   FimSe
   Retorne terminou
FimFuncao

// ---------------------------
// PROGRAMA PRINCIPAL
// ---------------------------
inicio

   Cont <- 1
   Simb <- "X"   // jogador inicial

   // preenche o tabuleiro com números de 1 a 9
   Para L <- 1 ate 3 faca
      Para C <- 1 ate 3 faca
         v[L,C] <- NumpCarac(Cont)
         Cont <- Cont + 1
      FimPara
   FimPara

   MostraVelha()

   // loop principal do jogo
   Repita
      // garante jogada válida
      Repita
         EscrevaL("Vai jogar [", simb:1, "] em qual posicao? ")
         Leia(Po)

         R <- Jogar(Simb, Po)

         Se (R = falso) entao
            EscrevaL("JOGADA INVALIDA!")
         FimSe
      Ate (R = verdadeiro)

      MudaJogador()   // troca o jogador
      LimpaTela
      MostraVelha()

   Ate (TerminouVelha() = verdadeiro)

   // RESULTADO FINAL
   EscrevaL("JOGO FINALIZADO!!!")

   Se (vencedor = "X") ou (vencedor = "O") entao
      EscrevaL("Jogador ", vencedor, " venceu!")
      EscrevaL("Tipo de vitoria: ", tipoVitoria)
   senao
      EscrevaL("Deu velha! (Empate)")
   FimSe

fimalgoritmo