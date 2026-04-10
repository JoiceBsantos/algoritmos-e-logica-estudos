Algoritmo "MelhorAluno"

Var
   qtd, contador: Inteiro
   nota, maior: Real
   nome, melhorNome: Caractere

Inicio
      Escreval ("ESCOLA PEQUENOS GARFANHOTOS")
      Escreval ("--------------------------------------")

      Escreva ("Quantos alunos a turma tem? ")
      Leia(qtd)

      contador <- 1

      Enquanto (contador <= qtd) faça

            Escreval ("ALUNO ", contador)
            Escreva ("Nome do aluno: ")
            Leia(nome)

            Escreva ("Nota de ", nome, ": ")
            Leia(nota)
            
            Se (contador = 1) entao
               maior <- nota
               melhorNome <- nome
            senao
                 Se (nota > maior) entao
                    maior <- nota
                    melhorNome <- nome
                 FimSe
            FimSE

            Escreval ("")
            contador <- contador + 1

      FimEnquanto

      Escreval ("--------------------------------------")
      Escreval ("O melhor aproveitamento foi de ", melhorNome, " com nota ", maior:4:1, "!")

FimAlgoritmo