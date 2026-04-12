algoritmo "LugaresCinema"
// =============================================================
// Descrição: Algoritmo para simular a reserva de lugares em um cinema.
//
// Objetivo:
// 1. Mostrar as cadeiras disponíveis
// 2. Permitir que o usuário reserve uma cadeira
// 3. Impedir reserva de cadeiras já ocupadas
// 4. Repetir até o usuário decidir sair
//
// Data atual: 12/04/2026
// =============================================================

var
   B: vetor[1..19] de Caractere  // vetor que representa as cadeiras (B1 até B19)
   l, cad: Inteiro               // cad = número da cadeira escolhida
   r: Caractere                  // r = resposta do usuário (S/N)

Procedimento MostraFileira()
var i: Inteiro
inicio
   // Percorro as cadeiras de 1 até 10 (primeira parte da fileira)
   Para i <- 1 ate 10 faca
      Se (B[i] = "") entao           // Se a cadeira estiver vazia (não reservada)
         Escreva ("[ B", i:2, " ]")  // Mostro o número da cadeira disponível
      senao
         Escreva ("[ --- ]")         // Se já estiver ocupada, mostro como indisponível
      FimSe
   FimPara
   EscrevaL()
   EscrevaL("------------------------------------------------------------------------")
FimProcedimento

inicio
   Repita
      LimpaTela
      MostraFileira()
      Escreva("Reservar a cadeira: B")
      Leia(cad)
      Se (B[cad]="") entao
         B[cad] <- "X"
         EscrevaL("Cadeira B", cad, " RESERVADA!")
      Senao
         EscrevaL("ERRO: Lugar Ocupado!")
      FimSe
      Escreva("Quer reservar outro? [S/N] ")
      Leia(r)
   Ate (r = "N")
fimalgoritmo



// ============================
// EXEMPLO DE EXECUÇÃO
// ============================
//
// [ B 1 ][ B 2 ][ B 3 ][ B 4 ][ B 5 ][ B 6 ][ B 7 ][ B 8 ][ B 9 ][ B10 ]
// ------------------------------------------------------------------------
// Reservar a cadeira: B3
// Cadeira B3 RESERVADA!
//
// [ B 1 ][ B 2 ][ --- ][ B 4 ][ B 5 ][ B 6 ][ B 7 ][ B 8 ][ B 9 ][ B10 ]
// ------------------------------------------------------------------------
// Reservar a cadeira: B3
// ERRO: Lugar Ocupado!
//
// Quer reservar outro? [S/N] N






