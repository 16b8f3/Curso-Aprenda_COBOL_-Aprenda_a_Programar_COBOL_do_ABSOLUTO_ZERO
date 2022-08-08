Algoritmo "Codificando com Variáveis"
// Disciplina   : Aprenda COBOL | Aprenda a Programar COBOL do ABSOLUTO ZERO!
// Descrição   : Demostrar o uso de Variaveis
// Autor(a)    : Gildo
// Data atual  : 08/08/2022
Var
// Seção de Declarações das variáveis 
   valorUm, valorDois, resultado: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   //valorUm <- 5
   //valorDois <- 3
   // "Começar zerando as variaveis é uma boa pratica de programação"
   
   valorUm <- 0
   valorDois <- 0
   
   escreva("Digite o primeiro numero inteiro: ")
   leia(valorUm)
   escreva("Digite o segundo numero inteiro: ")
   leia(valorDois)
   
   resultado <- valorUm + valorDois
   
   escreva("A soma entre", valorUm, " +", valorDois, " =", resultado)

Fimalgoritmo