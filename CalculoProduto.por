programa
{
	inteiro quantidadeVendas
	funcao inicio()
	{

		//Capiturando os valores para o calculo de comissao
		escreva("==============================\n")
		escreva("====== CALCULO DE LUCRO ======\n")
		escreva("==============================\n")
		escreva("\nQuantos vendas foram realizadas? : ")
		leia(quantidadeVendas)
		capturaDados(quantidadeVendas)

	}

	funcao capturaDados(inteiro vendas)
	{

		//POR ALGUM MOTIVO, ESTÁ DANDO ERRO NA CONTAGEM DA QUANTIDADE DE VENDAS. NA FUNCÃO INICIO OU EM QUALQUER OUTRA
		//QUANDO COLOCO O VALOR RECEBIDO PELO VENDEDOR, DA ERRO
		inteiro Produto[vendas][3]
		inteiro contador= 0
		real quant=0.0, soma=0.0, lucro=0.0, unidade=0.0

		para(inteiro lin =0; lin < quantidadeVendas; lin++)
		{
			para(inteiro col =0; col < 2; col++)
			{

				escreva("\nEscreva as informações abaixo:\n")
				escreva("\nQuantas vendas foram realizada desse produto: ")
				leia(unidade)
				Produto[lin][0] = unidade
				escreva("\nQual o valor original deste produto: R$")
				leia(quant)
				soma = soma + (quant * unidade)
				Produto[lin][1] = quant
				escreva("\nQual o valor de venda deste produto: R$")
				leia(quant)
				lucro = lucro + (quant * unidade)
				Produto[lin][2] = quant
				
				lin++
			}
		}

		real total = lucro - soma
		escreva("O valor total de venda foi :" + lucro + "\nO valor dos produtos foi: " + soma +"\nO lucro foi de: " + total)
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 362; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */