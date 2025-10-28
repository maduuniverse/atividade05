programa
{
	
	funcao inicio(){
	inteiro numero
		

	escreva("Digite um número inteiro positivo: ")
	leia(numero)


	se (numero > 0)
	{
	escreva("\n--- Resultados ---\n")
			

	se (ePrimo(numero))
	{
	escreva(numero, " é um número primo.\n")
	}
	senao
	{
	escreva(numero, " não é um número primo.\n")
	}
			

  inteiro soma = calcularSomaNaturais(numero)
	escreva("A soma dos números naturais até ", numero, " é: ", soma, "\n")
			
	
	exibirFibonacci(numero)
			
	inteiro numeroInvertido = inverterDigitos(numero)
	escreva("O número com os dígitos invertidos é: ", numeroInvertido, "\n")
			

	real fatorial = calcularFatorial(numero)
			se (fatorial > 0)
			{
				escreva("O fatorial de ", numero, " é: ", fatorial, "\n")
			}
		}
		senao
		{
			escreva("Número inválido. Por favor, digite um número inteiro positivo.\n")
		}
	}


	funcao logico ePrimo(inteiro n)
	{
		se (n <= 1)
		{
			retorne falso
		}
		para (inteiro i = 2; i * i <= n; i++)
		{
			se (n % i == 0)
			{
				retorne falso
			}
		}
		retorne verdadeiro
	}
	

	funcao inteiro calcularSomaNaturais(inteiro n)
	{
		inteiro soma = 0
		para (inteiro i = 1; i <= n; i++)
		{
			soma += i
		}
		retorne soma
	}
	

	funcao exibirFibonacci(inteiro n)
	{
		inteiro t1 = 0, t2 = 1, proximoTermo
		escreva("Os primeiros ", n, " termos da sequência de Fibonacci são: ")
		
		para (inteiro i = 1; i <= n; i++)
		{
			escreva(t1)
			se (i < n)
			{
				escreva(", ")
			}
			proximoTermo = t1 + t2
			t1 = t2
			t2 = proximoTermo
		}
		escreva("\n")
	}


	funcao inteiro inverterDigitos(inteiro n)
	{
		inteiro numeroInvertido = 0
		inteiro resto
		inteiro temp = n
		
		enquanto (temp > 0)
		{
			resto = temp % 10
			numeroInvertido = numeroInvertido * 10 + resto
			temp = temp / 10
		}
		retorne numeroInvertido
	}


	funcao real calcularFatorial(inteiro n)
	{
		real fatorial = 1
		se (n < 0)
		{
			escreva("Não é possível calcular o fatorial de um número negativo.\n")
			retorne -1
		}
		se (n == 0)
		{
			retorne 1
		}
		para (inteiro i = 1; i <= n; i++)
		{
			fatorial *= i
		}
		retorne fatorial
	}
}


