Algoritmo "semnome"

Var
   anos, nasc, idade: Inteiro
Inicio
       Escreva ("Em que ano estamos? ")
       Leia(anos)
       Escreva ("Em que ano você nasceu? ")
       Leia (nasc)
       idade <- anos - nasc
       Escreva ("Em ", anos, " você tera ", idade, " anos")
       Se (idade >= 18) entao
          EscrevaL ( "e já tera atingido a maioridade.")
       Senao
            Escreval ( " e não tera atingido a maioridade.")
       FimSe

Fimalgoritmo