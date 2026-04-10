Algoritmo "SeletorPessoas"
// Descrição   : Algoritmo para ler Sexo, Idade e Cor de Cabelo de diversas
//pessoas e ao final, mostrar:
//      = Total de HOMENS com mais de 18 ANOS e cabelos CASTANHOS.
//      = Total de MULHERES entre 25 e 30 anos e cabelos LOIROS.
//
// Data atual  : 07/04/2026

Var
 sexo, resp: caractere
 idade, cabelo, TotalM18, ToTALF25: Inteiro


Inicio
Repita
      LimpaTela
      Escreval ("========================")
      Escreval ("   SELETOR DE PESSOAS   ")
      Escreval ("========================")
      Escreva ("Qual o Sexo? [M/F] ")
      Leia (sexo)
      Escreva ("Qual a idade? ")
      Leia (idade)
      Escreval (" Qual a cor do cabelo?: ")
      Escreval (" -----------------------")
      Escreval ("[1] Preto")
      Escreval ("[2] Castanho")
      Escreval ("[3] Loiro")
      Escreval ("[4] Ruivo")
      Leia (cabelo)
      
      Se (sexo = "M") e (idade > 18) e (cabelo = 2) entao
         TotalM18 <- TotalM18 + 1
      FimSe
      
      Se (sexo = "F") e ((idade >= 25) e (idade <=30)) e (cabelo = 3) entao
         TotalF25 <- TotalF25 + 1
      FimSe
      
      Escreva ("Deseja cadastrar mais pessoas ? [S/N] ")
      Leia(resp)

Ate (resp = "N")
LimpaTela
Escreval ("----------------------------------------")
Escreval ("        RESULTADO FINAL                 ")
Escreval ("----------------------------------------")
Escreval ("Total de HOMENS cadastrados com mais de 18 ANOS e cabelos CASTANHOS foram de: ", TotalM18)
Escreval ("Total de MULHERES cadastradas entre 25 e 30 ANOS e cabelos LOIROS foram de: ", TotalF25)
      
Fimalgoritmo