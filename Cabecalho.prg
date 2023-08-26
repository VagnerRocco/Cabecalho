
set date brit
set epoch to 1940
set scoreboard off
set color to G/N

clear

// moldura
@ 01,01 to 24,75
@ 01,03 say "venda"
@ 03,03 say "Obs: O campo /Maringa/ e fixo, mas a data e o dia da semana muda "
@ 24,47 say "@MoonlightSyndicate V.A.01"

// variaveis
dAtual := Date()
nAno   := Year(dAtual)
nMonth := Month(dAtual)
nDiaMes:= Day(dAtual)
nDiaSem:= DoW(dAtual)
cMes   := space(12)
cDiaSem:= space(12)

// estrutura if MES
   if nMonth = 1
      cMes := "Janeiro"
   elseif nMonth = 2
      cMes := "Fevereiro"
   elseif nMonth = 3
      cMes := "Marco"
   elseif nMonth = 4
      cMes := "Abril"
   elseif nMonth = 5
      cMes := "Maio"
   elseif nMonth = 6
      cMes := "Junho"
   elseif nMonth = 7
      cMes := "Julho"
   elseif nMonth = 8
      cMes := "Agosto"
   elseif nMonth = 9
      cMes := "Setembro"
   elseif nMonth = 10
      cMes := "Outubro"
   elseif nMonth = 11
      cMes := "Novembro"
   else
      cMes := "Dezembro"
   endif

// estrutura if DIA DA SEMANA
   if nDiaSem = 1
      cDiaSem := "Domingo"
   elseif nDiaSem = 2
      cDiaSem := "Segunda-Feira"
   elseif nDiaSem = 3
      cDiaSem := "Terca-Feira"
   elseif nDiaSem = 4
      cDiaSem := "Quarta-Feira"
   elseif nDiaSem = 5
      cDiaSem := "Quinta-Feira"
   elseif nDiaSem = 6
      cDiaSem := "Sexta-Feira"
   else
      cDiaSem := "Sabado"
   endif

// cabecalho

@ 01,25 say "Maringa," + str(nDiaMes) + " de " + cMes + " de" + str(nAno) + " - " + cDiaSem

Inkey(0)
