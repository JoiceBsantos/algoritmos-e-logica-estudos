Algoritmo "semnome"

Var
   ano_atual, ano_nascimento, idade : Inteiro
   reais, dolares, F, C: Real

Inicio
      Escreva("Em que anos nós estamos? ")
      Leia (ano_atual)
      Escreva ("Em que ano eu nasci? ")
      Leia (ano_nascimento)
      idade <- ano_atual - ano_nascimento
      Escreval ("Sua idade é de ", idade , " anos")
      Escreva ("Quantos reais você tem ? R$ ")
      Leia (reais)
      dolares <- reais/5.16
      Escreval ("Convertendo R$", reais, " reais em dolares, você teria US$ ", dolares, " dolares.")
      Escreva ("Qual a temperatura nos Estados Unidos? ")
      Leia (F)
      C <- (F - 32) / 1.8
      Escreva ("Nos Estados Unidos estaria ", C:4:1)
      
Fimalgoritmo

