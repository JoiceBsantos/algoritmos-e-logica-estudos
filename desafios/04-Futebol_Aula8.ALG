Algoritmo "PartidaFutebol"

Var
   SP, PAL, DIF: Inteiro

Inicio
      Escreval ("----------------------------")
      Escreval (" SAO PAULO X PALMEIRAS ")
      Escreval ("----------------------------")

      Escreva ("Quantos gols o Sao Paulo fez? ")
      Leia(SP)

      Escreva ("Quantos gols o Palmeiras fez? ")
      Leia(PAL)

      DIF <- SP - PAL

      Escreval ("----------------------------")
      Escreval ("Placar: ", SP, " x ", PAL)

      Caso DIF faca

         0:
            Escreval ("EMPATE!")

         1..2:
            Escreval ("SAO PAULO VENCEU - PARTIDA NORMAL")

         3..100:
            Escreval ("SAO PAULO VENCEU - GOLEADA!")

         -2..-1:
            Escreval ("PALMEIRAS VENCEU - PARTIDA NORMAL")

         -100..-3:
            Escreval ("PALMEIRAS VENCEU - GOLEADA!")

      Fimcaso

FimAlgoritmo