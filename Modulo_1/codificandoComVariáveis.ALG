Algoritmo "Codificando com Vari?veis"
// Disciplina   : Aprenda COBOL | Aprenda a Programar COBOL do ABSOLUTO ZERO!
// Descri??o   : Demostrar o uso de Variaveis
// Autor(a)    : Gildo
// Data atual  : 08/08/2022
Var
// Se??o de Declara??es das vari?veis 
   valorUm, valorDois, resultado: inteiro

Inicio
// Se??o de Comandos, procedimento, fun??es, operadores, etc... 
   //valorUm <- 5
   //valorDois <- 3
   // "Come?ar zerando as variaveis ? uma boa pratica de programa??o"
   
   valorUm <- 0
   valorDois <- 0
   
   escreva("Digite o primeiro numero inteiro: ")
   leia(valorUm)
   escreva("Digite o segundo numero inteiro: ")
   leia(valorDois)
   
   resultado <- valorUm + valorDois
   
   escreva("A soma entre", valorUm, " +", valorDois, " =", resultado)

Fimalgoritmo