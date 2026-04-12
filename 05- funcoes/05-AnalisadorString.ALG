Algoritmo "semnome"
// Descrição: Prática 05: Algoritmo para demonstrar as principais funções de
// manipulação de string do Visualg.
// Exemplo utilizado: nome "JOICE"
// Data atual  : 11/04/2026

Var
  N: Caractere   // variável que armazenará o nome digitado
  C: Inteiro     // contador usado no laço de repetição

Inicio
   Escreva("Digite seu nome: ")
   Leia(N)

   // Compr = retorna a quantidade de letras do nome
   // Exemplo: "JOICE" ? 5 letras
   EscrevaL("Total de letras do seu nome: ", Compr(N))

   // Maiusc = converte todas as letras para maiúsculas
   // Exemplo: "Joice" ? "JOICE"
   EscrevaL("Seu nome em maiusculas e ", Maiusc(N))

   // Minusc = converte todas as letras para minúsculas
   // Exemplo: "JOICE" ? "joice"
   EscrevaL("Seu nome em minusculas e ", Minusc(N))

   // Copia = extrai parte da string
   // Parâmetros:
   // 1º ? string
   // 2º ? posição inicial
   // 3º ? quantidade de caracteres
   // Exemplo: "JOICE", 1, 1 ? "J"
   EscrevaL("A primeira letra do seu nome e ", Copia(N, 1, 1))

   // Pega a última letra do nome:
   // Compr(N) ? posição da última letra
   // Exemplo: "JOICE" ? posição 5 ? "E"
   EscrevaL("A ultima letra do seu nome e ", Copia(Maiusc(N), Compr(N), 1))

   // Pos = retorna a posição de um caractere dentro da string
   // Exemplo: "JOICE" ? letra "A" não existe ? retorna 0
   EscrevaL("Seu nome tem a letra A na posicao ", Pos("A", Maiusc(N)))

   // Asc = retorna o código ASCII de um caractere, que é um número
   // Exemplo: "A" ? 65
   EscrevaL("O codigo da letra A e ", Asc("A"))

   // Carac = retorna o caractere correspondente ao código ASCII
   // Exemplo: 65 ? "A"
   EscrevaL("A letra de codigo 65 e ", Carac(65))

   // Estrutura de repetição para mostrar o nome ao contrário
   // Exemplo: "JOICE" ? "ECIOJ"
   Para C <- Compr(N) ate 1 passo -1 faca
     Escreva(Copia(Maiusc(N), C, 1))
   FimPara

Fimalgoritmo


























Var
  N: Caractere
  C: Inteiro
  
inicio
   Escreva("Digite seu nome: ")
   Leia(N)
   
   // Compr = comprimento do nome ex: Joice , retornar 5.
   EscrevaL("Total de letras do seu nome: ", Compr(N))
   
   // Maiusc = retorna todas as letras em maiúscolo ex: JOICE
   EscrevaL("Seu nome em maiusculas e ", Maiusc(N))
   
   // Minusc = retorna toda as letras em minúsculas ex: joice
   EscrevaL("Seu nome em minusculas e ", Minusc(N))
   
   // Copia =  recebe três parâmetros:
   // 1º variavel caractere
   // 2º número que indica em que letra ira começar
   // 3º outro número que indica quantas casas ira mostrar
   EscrevaL("A primeira letra do seu nome e ", Copia(N, 1, 1))
   
   //
   EscrevaL("A ultima letra do seu nome e ", Copia(Maiusc(N), Compr(N), 1))
   
   EscrevaL("Seu nome tem a letra A na posicao ", Pos("A", Maiusc(N)))
   
   EscrevaL("O codigo da letra A e ", Asc("A"))
   
   EscrevaL("A letra de codigo 65 e ", Carac(65))

   Para C <- Compr(N) ate 1 passo -1 faca
     Escreva(Copia(Maiusc(N),C,1))
   FimPara
fimalgoritmo