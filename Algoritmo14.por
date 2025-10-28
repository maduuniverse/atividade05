programa{
  
  funcao inicio(){
    inteiro valor = 123
    inteiro unidade, dezena, centena, novo

    unidade = valor % 10
    dezena = (valor % 100) / 10
    centena = valor / 100

    novo = unidade * 100 + dezena * 10 + centena

    escreva(valor, " ao contrário é: " + (unidade * 100 + dezena * 10 + centena))
  }
}
