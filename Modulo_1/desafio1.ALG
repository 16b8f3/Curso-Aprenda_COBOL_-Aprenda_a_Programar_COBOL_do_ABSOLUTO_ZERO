Algoritmo "desafio1"
// Disciplina   : Aprenda COBOL | Aprenda a Programar COBOL do ABSOLUTO ZERO!
// Descrição   : Peça para o usuario escolher dois numeros inteiros, faça as 4
//               operações matematicas (+, -, x, /) e mostre o resultado de cada
//               uma para o usuario.
// Autor(a)    : Gildo
// Data atual  : 08/08/2022
Var
// Seção de Declarações das variáveis 
   primeiroValor, segundoValor : inteiro
   resultado : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreva("Digite um valor inteiro: ")
   leia(primeiroValor)
   escreva("Digite outro valor inteiro: ")
   leia(segundoValor)
   
   escreval("")
   escreval("- Resultados")
   
   // Operações
   resultado <- primeiroValor + segundoValor
   escreval("| SOMA: ", primeiroValor, " +", segundoValor, " =", resultado, ".")

   resultado <- primeiroValor - segundoValor
   escreval("| SUBTRACAO: ", primeiroValor, " -", segundoValor, " =", resultado, ".")

   resultado <- primeiroValor * segundoValor
   escreval("| MULTIPLICACAO: ", primeiroValor, " x", segundoValor, " =", resultado, ".")

   resultado <- primeiroValor / segundoValor
   escreval("| DIVISAO: ", primeiroValor, " /", segundoValor, " =", resultado, ".")

Fimalgoritmo