programa
{

	inclua biblioteca Util-->geraNumero


     funcao novoJogo(){
     	cadeia novoJogoOpcao=""
     	escreva("Deseja jogar novamente? \n")
     	escreva("\nS Para Sim ou Qualquer tecla para sair.:")
     	leia(novoJogoOpcao)
     	se(novoJogoOpcao=="S" ou novoJogoOpcao=="s"){
     		limpa()
     		menuPrincipal()
     	}senao{
     		limpa()
     	}
     	
     }
     funcao menuPrincipal(){
     	cadeia opcaoMenu="0"

     	escreva("\n:::::: Jogo de adivinhação ..................:")
     	escreva("\n:::::: Escolha uma das opções abaixo ........:")
     	escreva("\n:::::: 1- básico, 5 chances e 10 numeros.....:")
     	escreva("\n:::::: 2- médio, 7 chances e 50 numeros .....:")
     	escreva("\n:::::: 3- avançado, 8 chances e 100 numeros..:")
     	escreva("\n:::::: Entre com uma opção ou qualquer tecla para sair .:")

     	leia(opcaoMenu)


     	se(opcaoMenu=="1" ou opcaoMenu=="2" ou opcaoMenu=="3"){
     		limpa()


     		nivelJogo(opcaoMenu)
     	}senao{
     		limpa()

     	}
     }

	funcao nivelJogo(cadeia opcaoMenu){
		inteiro qtdChances=0,qtdNumeros=0
 

		se(opcaoMenu=="1"){
	
			qtdChances=5
			qtdNumeros=10
			

			jogoPrincipal(qtdChances, qtdNumeros)
		}senao se(opcaoMenu=="2"){
			qtdChances=7
			qtdNumeros=50
			

			jogoPrincipal(qtdChances, qtdNumeros)
		}senao se(opcaoMenu=="3"){
			qtdChances=8
			qtdNumeros=100
			

			jogoPrincipal(qtdChances, qtdNumeros)
		}senao{
			
		}
	}
	funcao jogoPrincipal(inteiro qtdChances,inteiro qtdNumeros){
		
		inteiro numeroGerado=0,limiteDeChances=1,palpiteUsuario=0

		numeroGerado=geraNumero.sorteia(1,qtdNumeros)


		enquanto(numeroGerado!=palpiteUsuario e limiteDeChances<=qtdChances){
			escreva("\nChance. ",limiteDeChances," de ",qtdChances)
			escreva("\nEntre com um numero entre 1 e ",qtdNumeros," ..:")
			leia(palpiteUsuario)

			se(palpiteUsuario>numeroGerado){
				escreva("\n\n o numero é menor que ",palpiteUsuario)
			}senao se(palpiteUsuario<numeroGerado){
				escreva("\n\n o numero é maior que ",palpiteUsuario)
			}senao{
				limpa()
				escreva("\n\n Parabéns! Você acertou!\n")
				novoJogo()
			}
			
			limiteDeChances++
		}
		se(limiteDeChances>=qtdChances){
			limpa()
			escreva("\nVOCÊ PERDEU! :( ")
			escreva("\nO Número gerado era o, ",numeroGerado,"\n")
			novoJogo()
		}
		
	}
	funcao inicio()
	{

		menuPrincipal()
		
	}
}
