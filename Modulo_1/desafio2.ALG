Algoritmo "semnome"
// Disciplina   : Aprenda COBOL | Aprenda a Programar COBOL do ABSOLUTO ZERO!
// Descrição   : Fazer um loop que conte de 1 até um numero que o usuario
//               escolher, deve ir mostrando os numeros de 1 ao numero final
//               definido pelo usuario.
// Autor(a)    : Gildo
// Data atual  : 08/08/2022
Var
// Seção de Declarações das variáveis 
   limite, contador : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreva("Digite o numero limite da contagem: ")
   leia(limite)
   
   contador <- 1

   se limite < 1 entao
      escreval("Desculpe, valor invalido!")
      escreval("A contagem é cresecente e tem inicio no numero 1.")
   senao
        enquanto (contador <= limite) faca
                 escreval(contador)
                 contador <- contador + 1
        fimenquanto

   fimse
   

   contador <- 1

Fimalgoritmo