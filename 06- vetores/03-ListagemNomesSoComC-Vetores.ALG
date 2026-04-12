algoritmo "SoComC"
// Descrição: Prática 03: Algoritmo para ler 10 nomes e mostrar apenas aqueles
// que começam com a letra "C".
// Data atual: 12/04/2026

var
  nome: Caractere                  // variável para armazenar o nome digitado
  soC: vetor[1..10] de Caractere   // vetor que armazenará apenas nomes com "C"
  c, tot: Inteiro                  // c = contador | tot = total de nomes com "C"

inicio

   tot <- 0   // inicializa o contador de nomes que começam com "C"
   
   // LEITURA DOS NOMES
   Para c <- 1 ate 10 faca

     Escreva("Digite seu nome: ")
     Leia(nome)   // lê o nome digitado

     // Verifica se a primeira letra do nome é "C"
     // Maiusc(nome) ? converte o nome para maiúsculo
     // Copia(...,1,1) ? pega apenas a primeira letra
     Se (Copia(Maiusc(nome), 1, 1) = "C") entao
         tot <- tot + 1   // incrementa o contador
         // Armazena o nome no vetor apenas se começar com "C"
         soC[tot] <- nome
     FimSe
   FimPara
   LimpaTela
   EscrevaL("LISTAGEM FINAL")

   // Mostra apenas os nomes armazenados (que começam com "C")
   Para c <- 1 ate tot faca
     EscrevaL(soC[c])
   FimPara
fimalgoritmo