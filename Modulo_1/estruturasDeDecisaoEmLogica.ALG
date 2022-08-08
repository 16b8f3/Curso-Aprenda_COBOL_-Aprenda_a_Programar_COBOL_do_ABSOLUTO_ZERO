Algoritmo "Estruturas de Decisão em Lógica"
// Disciplina   : Aprenda COBOL | Aprenda a Programar COBOL do ABSOLUTO ZERO!
// Descrição   : Demostrar o uso de sistema de decisão
// Autor(a)    : Gildo
// Data atual  : 08/08/2022
Var
// Seção de Declarações das variáveis
   valorUm, valorDois, resultado: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

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
           escreva("Desculpe o calculo não sera mostrado!")
      fimse
   senao
        escreva("Desculpe o calculo não sera mostrado!")
   fimse



Fimalgoritmo