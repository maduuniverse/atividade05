programa{
  
  funcao inicio(){
    inteiro x, valor = 1, divisores = 0

    faca{
      escreva("Digite um valor maior que 1: ")
      leia(x)
    }enquanto(x < 2)

    enquanto(valor < x){
      se(x % valor == 0){
        escreva(valor,", ")
        divisores += valor
      }
      valor++
    }
    escreva("\n\n")
    se(divisores == x){
      escreva(x, " é um número perfeito.\n")
    }
    senao{
      escreva(x, " não é um número perfeito.\n")
    }
  }
}