Algoritmo "ContagemProcedimento"
// Descrição: Fazer uma contagem personalizada utilizando procedimento.
// O programa deve contar do início ao fim, crescente ou decrescente.
// Data: 10/04/2026

Var
   InicioC, FimC: Inteiro   // valores de início e fim

// Procedimento que realiza a contagem
Procedimento Contar(Ini, Fim: Inteiro)
Var
   C: Inteiro   // contador
Inicio
   // Verifica se a contagem é crescente
   Se (Ini < Fim) entao
      Para C <- Ini ate Fim faca
         Escreva(C, ".. ")
      FimPara
   senao
      // Caso contrário, faz contagem decrescente
      Para C <- Ini ate Fim passo -1 faca
         Escreva(C, ".. ")
      FimPara
   FimSe

   Escreval("")  // quebra de linha
FimProcedimento

Inicio
   // Entrada de dados
   Escreva("Inicio: ")
   Leia(InicioC)

   Escreva("Fim: ")
   Leia(FimC)

   // Chamada do procedimento
   Contar(InicioC, FimC)

FimAlgoritmo