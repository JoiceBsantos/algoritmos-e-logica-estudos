Algoritmo "DetectorPesado"
// Descrição Prática 01: Algoritmo para detectar qual e a pessoa mais pesada,
// utilisando rotinas em algoritmo (Procedimento).
// Data atual  : 09/04/2026

Var
   I: Inteiro             // I = contador do laço (Indice)
   N, Pesado: Caractere   // N = nome digitado | Pesado = nome da pessoa mais pesada
   P, Mai: Real           // P = peso digitado | Mai = maior peso encontrado

// ?? Procedimento para exibir o topo da tela
Procedimento Topo()
Inicio
      LimpaTela
      Escreval("------------------------------------")
      Escreval(" D E T E C T O R   DE   P E S A D O ")
      Escreval(" Maior Peso ate agora: ", Mai, " Kg" )
      Escreval("------------------------------------")
FimProcedimento

Inicio
      Mai <- 0          // começa com o maior peso igual a 0
      Pesado <- ""      // nome vazio inicialmente
      Topo ()           // mostra o topo pela primeira vez

      Para I <- 1 ate 5 faca      // laço para ler os dados de 5 pessoas
      Escreva("Digite o nome: ")  // entrada de dados
      Leia(N)

      Escreva("Digite o peso (KG) de ", N, ": ")
      Leia(P)

      Se (P > Mai) entao  // verifica se o peso digitado é maior que o atual
         Mai <- P         // atualiza o maior peso
         Pesado <- N      // guarda o nome correspondente
      FimSe
      Topo ()   // atualiza a tela com o novo maior peso
      FimPara
      Topo ()
      Escreval("A pessoa mais pesada foi ", Pesado, ", com ", Mai, " quilos.")

FimAlgoritmo

