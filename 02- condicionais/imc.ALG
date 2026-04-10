algoritmo "calculo_imc"

var
   peso, altura, imc: real

inicio

   escreva("Digite seu peso (kg): ")
   leia(peso)

   escreva("Digite sua altura (m): ")
   leia(altura)

   imc <- peso / (altura ^ 2)

   escreva("Seu IMC é: ", imc:0:2)

   se imc < 18.5 entao
      escreva("Classificacao: Abaixo do peso")
   senao se imc < 25 entao
      escreva("Classificacao: Peso normal")
   senao se imc < 30 entao
      escreva("Classificacao: Sobrepeso")
   senao se imc < 35 entao
      escreva("Classificacao: Obesidade grau I")
   senao se imc < 40 entao
      escreva("Classificacao: Obesidade grau II")
   senao
      escreva("Classificacao: Obesidade grau III")
   fimse

fimalgoritmo