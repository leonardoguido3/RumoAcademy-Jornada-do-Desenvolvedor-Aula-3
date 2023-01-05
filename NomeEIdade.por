programa
{
	funcao inicio()
	{
		cadeia Nomes[10], nome= ""
		inteiro Idades[10], i, idade=0

		escreva("============================\n")
		escreva("====== NOMES E IDADES ======\n")
		escreva("============================\n")

	  
		para (i = 0; i < 2; i++)
		{
			escreva("Digite seu nome: ")
			leia(Nomes[i])
			escreva("Digite sua idade: ")
			leia(Idades[i])

			se(idade < Idades[i]){
				idade = Idades[i]
				nome = Nomes[i]
			}
			limpa()
		}
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
 * @POSICAO-CURSOR = 226; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */