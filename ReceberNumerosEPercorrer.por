programa
{
	inteiro Numeros[15]
	inteiro numero = 0

	
	funcao inicio()
	{
		
		para (inteiro i = 0; i < 15; i++)
		{	
			//Capiturando os valores para o calculo de comissao
			escreva("==============================\n")
			escreva("====== LISTA NUMEROS ======\n")
			escreva("==============================\n")

			escreva("\nDigite um número " + i + ": ")	
			leia(Numeros[i])
			limpa()
		}

		para(inteiro i =0; i < 15; i++)
		{
			se( Numeros[i] >= 0)
			{
				inteiro numPositivo = Numeros[i]
				escreva (numPositivo)
			}	
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 433; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {Numeros, 3, 10, 7}-{i, 10, 16, 1}-{i, 22, 15, 1}-{numPositivo, 26, 12, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */