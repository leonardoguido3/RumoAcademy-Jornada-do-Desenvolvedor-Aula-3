programa
{
	inclua biblioteca Matematica
	inclua biblioteca Tipos
	
	cadeia salarioVendedorString= "", vendasMesVendedorString= "", nomeVendedor = ""
	
	funcao inicio()
	{
		//Capiturando os valores para o calculo de comissao
		escreva("=================================\n")
		escreva("====== CALCULO DE COMISSÃO ======\n")
		escreva("=================================\n")
		escreva("\nDigite seu nome: ")
		leia(nomeVendedor)

		//Validacao do salario
		escreva("\nQual seu salário?: (R$)")
		leia(salarioVendedorString)
		se(validaFormataValor(salarioVendedorString) < 0)
		{
			retorne
		}
		real salarioVendedor = validaFormataValor(salarioVendedorString)

		//Validacao da venda
		escreva("\nTotal de vendas realizadas no mês? (R$): ")
		leia(vendasMesVendedorString)
		se(validaFormataValor(vendasMesVendedorString) < 0)
		{
			retorne
		}
		real vendasMesVendedor = validaFormataValor(vendasMesVendedorString)
		
		//Enviando dados capturados e validados para função de calculo
		calculoComissional(vendasMesVendedor, salarioVendedor)
		
	}


	funcao real validaFormataValor(cadeia valor)
	{
		//Fazendo a validacao da entrada string, se é numero inteiro ou real
		logico validoReal = Tipos.cadeia_e_real(valor)
		logico eNumero = Tipos.cadeia_e_inteiro(valor, 10)

		//Fazendo o condicional, tratando os dados
		se(validoReal == falso e eNumero == falso){
			escreva("\nInsira um valor que seja válido, e execute o programa novamente.")
			retorne -999.00
		}

		//Retornando a string convertida em Real
		real valorFormatado = Tipos.cadeia_para_real(valor)

		//Retornando erro se o valor for menor ou igual a 0
		se(valorFormatado <= 0){
			escreva("\nInsira um valor positivo, e execute o programa novamente.")
			retorne -999.00
		}
		
		retorne valorFormatado
	}

	funcao calculoComissional(real vendasMesVendedor, real salarioVendedor){


		real comissaoVendedor = vendasMesVendedor * 0.15
		real salarioTotal = salarioVendedor + comissaoVendedor

		escreva("\nOlá " + nomeVendedor + ", seu salário fixo é de: R$" + salarioVendedor + "\nSua comissão foi de: R$" + comissaoVendedor + "\nSeu salário total foi de: R$" + salarioTotal)
		
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1772; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */