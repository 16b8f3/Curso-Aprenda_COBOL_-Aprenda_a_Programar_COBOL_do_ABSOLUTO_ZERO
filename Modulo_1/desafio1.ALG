Algoritmo "desafio1"
// Disciplina   : Aprenda COBOL | Aprenda a Programar COBOL do ABSOLUTO ZERO!
// Descri??o   : Pe?a para o usuario escolher dois numeros inteiros, fa?a as 4
//               opera??es matematicas (+, -, x, /) e mostre o resultado de cada
//               uma para o usuario.
// Autor(a)    : Gildo
// Data atual  : 08/08/2022
Var
// Se??o de Declara??es das vari?veis 
   primeiroValor, segundoValor : inteiro
   resultado : real

Inicio
// Se??o de Comandos, procedimento, fun??es, operadores, etc... 
   escreva("Digite um valor inteiro: ")
   leia(primeiroValor)
   escreva("Digite outro valor inteiro: ")
   leia(segundoValor)
   
   escreval("")
   escreval("- Resultados")
   
   // Opera??es
   resultado <- primeiroValor + segundoValor
   escreval("| SOMA: ", primeiroValor, " +", segundoValor, " =", resultado, ".")

   resultado <- primeiroValor - segundoValor
   escreval("| SUBTRACAO: ", primeiroValor, " -", segundoValor, " =", resultado, ".")

   resultado <- primeiroValor * segundoValor
   escreval("| MULTIPLICACAO: ", primeiroValor, " x", segundoValor, " =", resultado, ".")

   resultado <- primeiroValor / segundoValor
   escreval("| DIVISAO: ", primeiroValor, " /", segundoValor, " =", resultado, ".")

Fimalgoritmo