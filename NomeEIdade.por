programa
{
	funcao inicio()
	{
		cadeia Nomes[10], nome= ""
		inteiro Idades[10], i, idade=0, contador = 1

	  	// repeticao para cadastro de nomes e idades
		para (i = 0; i < 10; i++)
		{
			escreva("============================\n")
			escreva("====== NOMES E IDADES ======\n")
			escreva("======= CADASTRO: " + contador  +" ========\n")
			escreva("============================\n")
			escreva("Digite seu nome: ")
			leia(Nomes[i])
			escreva("Digite sua idade: ")
			leia(Idades[i])

			//verificação condicional da idade, caso o ultimo dado inserido seja maior, as variaveis passam a receber o dado
			se(idade < Idades[i]){
				idade = Idades[i]
				nome = Nomes[i]
			}
			contador = contador+1
			limpa()
		}

		// repeticao para criação da tabela com todos os dados
		para (inteiro posicao = 0; posicao < 10; posicao++)
		{
			escreva (Nomes[posicao], "\t\t", Idades [posicao], "\n")
		}
		
		escreva("\nA pessoa mais velha é " + nome + ", sua idade atual é " + idade + " anos")
	}	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 700; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */