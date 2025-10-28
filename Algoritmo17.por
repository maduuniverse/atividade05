programa {
  funcao inicio() {
  inteiro num1, num2, i, gcd, cm
  escreva ("Digite o primeiro número: \n")
  leia (num1)

  escreva ("Digite o segundo número: \n")
  leia (num2)

  para (i=1; i<=num1 e i<=num2; i++){
  se (num1 % 1 == 0 e num2 % i == 0)
  gcd=1
  }

  cm=(num1*num2)/gcd

  escreva("A soma do mmc dos números ", num1, " e ", num2, " é ", cm) 
  }
}
