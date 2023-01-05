programa
{
	funcao inicio()
	{
		cadeia Nomes[10], nome= ""
		inteiro Idades[10], i, idade=0

		escreva("============================\n")
		escreva("====== NOMES E IDADES ======\n")
		escreva("============================\n")


	  	// repeticao para cadastro de nomes e idades
		para (i = 0; i < 2; i++)
		{
			escreva("Digite seu nome: ")
			leia(Nomes[i])
			escreva("Digite sua idade: ")
			leia(Idades[i])

			//verificação condicional da idade, caso o ultimo dado inserido seja maior, as variaveis passam a receber o dado
			se(idade < Idades[i]){
				idade = Idades[i]
				nome = Nomes[i]
			}
			limpa()
		}

		// repeticao para criação da tabela com todos os dados
		para (inteiro posicao = 0; posicao < 10; posicao++)
		{
			escreva (Nomes[posicao], "\t\t", Idades [posicao], "\n")
		}
		
		escreva("\nA pessoa mais velha é " + nome + ", sua idade atual é " + idade)
	}	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 797; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */