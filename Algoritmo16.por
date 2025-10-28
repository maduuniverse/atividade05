programa {
  funcao inicio() {
  inteiro n1, n2, resultado
  escreva("Informe o primeiro número: ")
  leia (n1)
  escreva("Informe o segundo: ")
  leia(n2)

  resultado=MDC(n1, n2)
  escreva("O máximo divisor comum de ", n1, " e ", n2, " é ", resultado) 

  }

  funcao inteiro MDC(inteiro a, inteiro b){
    inteiro resto

    enquanto (b != 0) {
      resto = a % b
      a = b
      b = resto
    }

    retorne a
  }
}
