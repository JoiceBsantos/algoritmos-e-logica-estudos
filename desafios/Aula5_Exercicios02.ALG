Algoritmo "Creuza"

Var
   preco, imposto, emprestimo, juros, parcelas, boleto, total: Real

Inicio
   Escreva ("Qual o preço do produto? US$")
   Leia (preco)

   imposto <- (preco * 60) / 100
   Escreval ("O imposto sera de U$ ", imposto)

   Escreval ("Qual o valor do empréstimo? R$")
   Leia (emprestimo)

   juros <- emprestimo * 0.20
   total <- emprestimo + juros

   Escreval ("Seu emprestimo com 20% de juros ficara R$ ", total)

   Escreval ("Quantas parcelas?")
   Leia (parcelas)

   boleto <- total / parcelas

   Escreval ("Ficara ", parcelas, " parcelas de R$ ", boleto, " reais")

Fimalgoritmo