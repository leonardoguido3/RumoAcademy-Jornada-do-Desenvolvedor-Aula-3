programa
{
	inclua biblioteca Tipos
	inclua biblioteca Matematica
	
	
cadeia quantidadeAlunoString= ""
	
	funcao inicio()
	{
		//Capiturando os valores para o calculo de comissao
		escreva("=================================\n")
		escreva("====== CALCULO DE COMISSÃO ======\n")
		escreva("=================================\n")
		escreva("\nQuantos alunos possui na turma? : ")
		leia(quantidadeAlunoString)
		se(validaFormataValor(quantidadeAlunoString) < 0)
		{
			retorne
		}
		inteiro quantidadeAluno = validaFormataValor(quantidadeAlunoString)

		capturaNota(quantidadeAluno)

	}

	funcao inteiro validaFormataValor(cadeia valor)
	{
		//Fazendo a validacao da entrada string, se é numero inteiro ou real
		logico validoReal = Tipos.cadeia_e_real(valor)
		logico eNumero = Tipos.cadeia_e_inteiro(valor, 10)

		//Fazendo o condicional, tratando os dados
		se(validoReal == falso e eNumero == falso){
			escreva("\nInsira um numero de turma que seja válido!")
			retorne -999
		}

		//Retornando a string convertida em Real
		inteiro valorFormatado = Tipos.cadeia_para_inteiro(valor, 10)

		//Retornando erro se o valor for menor ou igual a 0
		se(valorFormatado <= 0){
			escreva("\nInsira um numero positivo!")
			retorne -999
		}
		
		retorne valorFormatado
	}

	funcao capturaNota(inteiro quantidadeAluno){

		inteiro contador= 0
		real notaAluno = 0.0
		real total = 0.0
		enquanto (contador < quantidadeAluno)
		{
			limpa()
			escreva("\nEscreva a nota do aluno " + contador + ": ")
		  	leia(notaAluno)
		  	total += notaAluno
		  	contador++
		  			  	
		}
		real mediaNota = Matematica.arredondar(total / quantidadeAluno, 2)
		limpa()
		escreva ("\nA média da turma foi de: " + mediaNota)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1701; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */