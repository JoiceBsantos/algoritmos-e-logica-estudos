Algoritmo "SuperContador"
// Descrição: Menu com contagem usando estrutura PARA (mais simples)

Var
C, opcao: Inteiro   // C = contador | opcao = escolha do usuário

Inicio
Repita   // inicia o loop do menu (repete até o usuário escolher sair)

```
  // exibe o menu
  Escreval ("-------------")
  Escreval ("MENU")
  Escreval ("-------------")
  Escreval ("[1] De 1 a 10")
  Escreval ("[2] De 10 a 1")
  Escreval ("[3] Sair")
  Escreva ("Escolha uma opcao: ")
  Leia(opcao)   // lê a opção do usuário

  // verifica a opção escolhida
  Se (opcao = 1) entao

     // contagem crescente de 1 até 10
     Para C <- 1 ate 10 faca
        Escreva(C, ".. ")   // exibe o número
     FimPara
     Escreval("")           // quebra de linha

  senao
     Se (opcao = 2) entao

        // contagem decrescente de 10 até 1
        Para C <- 10 ate 1 passo -1 faca
           Escreva(C, ".. ")   // exibe o número
        FimPara
        Escreval("")           // quebra de linha

     senao

        // se não for 1, 2 ou 3 ? opção inválida
        Se (opcao <> 3) entao
           Escreval("Opcao invalida!")
        FimSe

     FimSe
  FimSe
```

Ate (opcao = 3)   // encerra quando o usuário escolher 3

// mensagem final
Escreval("Programa encerrado!")

FimAlgoritmo
