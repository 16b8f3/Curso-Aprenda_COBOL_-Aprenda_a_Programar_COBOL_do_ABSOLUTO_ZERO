Algoritmo "Estruturas de Decis?o em L?gica"
// Disciplina   : Aprenda COBOL | Aprenda a Programar COBOL do ABSOLUTO ZERO!
// Descri??o   : Demostrar o uso de sistema de decis?o
// Autor(a)    : Gildo
// Data atual  : 08/08/2022
Var
// Se??o de Declara??es das vari?veis
   valorUm, valorDois, resultado: inteiro

Inicio
// Se??o de Comandos, procedimento, fun??es, operadores, etc...

   valorUm <- 0
   valorDois <- 0

   escreva("Digite o primeiro numero inteiro: ")
   leia(valorUm)
   escreva("Digite o segundo numero inteiro: ")
   leia(valorDois)

   resultado <- valorUm + valorDois
   
   se valorUm > 0 entao
      se valorDois > 0 entao
           escreva("A soma entre", valorUm, " +", valorDois, " =", resultado)
      senao
           escreva("Desculpe o calculo n?o sera mostrado!")
      fimse
   senao
        escreva("Desculpe o calculo n?o sera mostrado!")
   fimse



Fimalgoritmo