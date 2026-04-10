Algoritmo "ContagemInteligente"

Var
   comeco, fim, contador: Inteiro

Inicio
      Escreval ("CONTAGEM INTELIGENTE")
      Escreval ("--------------------------")

      Escreva ("INICIO: ")
      Leia(comeco)

      Escreva ("FIM: ")
      Leia(fim)

      Escreval ("--------------------------")
      Escreval ("CONTANDO")
      Escreval ("--------------------------")

      Se (comeco < fim) entao
         contador <- comeco
         Enquanto (contador <= fim) faca
            Escreva(contador, ".. ")
            contador <- contador + 1
         FimEnquanto

      senao
         Se (comeco > fim) entao
            contador <- comeco
            Enquanto (contador >= fim) faca
               Escreva(contador, ".. ")
               contador <- contador - 1
            FimEnquanto

         senao
            Escreva(comeco)
         FimSe
      FimSe

FimAlgoritmo