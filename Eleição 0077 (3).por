
programa
{
	funcao inicio()
	{
		cadeia nomeA
		cadeia nomeB

		inteiro candidato_a = 0, candidato_b = 0
		
		inteiro brancos = 0, nulos = 0, total_votos = 0
		
		real porcentagem_candidato_a, porcentagem_candidato_b
		
		real porcentagem_brancos, porcentagem_nulos
		
		inteiro voto

		inteiro numero
		cadeia voltar
		inteiro numeroC

		
	
		
			limpa()
			escreva("quantos candidatos irao participar da eleiçao?: ")
			leia(numeroC)


			se(numeroC < 2){
				escreva("o numero de participantes está errado")
			  inicio()
			}
			escreva("escreva o nome do particpante 01 que ira participar: nath \n")
			leia(nath)
			escreva ("escreva o nome do participante 02 que ira participar: geras \n")
			leia (geras)
      limpa()
  }
}
    senao{
  escreva("valor invalido")
    }
    escreva("\n",nath [0])
faca
{
			escreva("escolha seu voto\n\n")
			
			escreva("  1 -> ",nath,"\n")
			escreva("  2 -> ",geras,"\n")
			escreva("  3 -> Branco\n")

			
			escreva("\nQualquer numero diferente de 0, 1, 2 e 3 anulara a sua escolha \n")
			escreva("Digite sua escolha: ")
			
			leia(voto)
			limpa()

			escolha (voto)
			{
				caso 0:
					escreva ("Votação encerrada!\n")
				pare
				
				caso 1: 
			 		nath = nath + 1 // Soma um voto para o candidato A
			 	pare
			 	
			 	caso 2: 
			 	geras = geras + 1 // Soma um voto para o candidado B
			 	pare
			 	
			 	caso 3: 
			 		brancos = brancos + 1 // Soma um voto em branco
			 	pare
			 	
			 	caso contrario:
			 		nulos = nulos + 1 // Opção inválida. Soma um voto nulo
			}			 
		}
		enquanto(voto != 0)

		// Calcula o total de votos
		total_votos = candidato_a + candidato_b + brancos + nulos

		// Se houve votos, calcula a porcentagem de votos de cada candidato
		
		se (total_votos > 0)
		{
			porcentagem_candidato_a = (nath* 100.0) / total_votos  
			porcentagem_candidato_b = (geras * 100.0) / total_votos
			porcentagem_brancos = (brancos * 100.0) / total_votos
			porcentagem_nulos = (nulos * 100.0) / total_votos

			escreva("\n")
			
			escreva("Total de votos: ", total_votos, "\n\n")
			escreva("Candidato A: = " , candidato_a, " voto(s). ", porcentagem_candidato_a, " % do total\n" )
			escreva("Candidato B: = ", candidato_b, " voto(s). ", porcentagem_candidato_b, " % do total\n" )
			escreva("Brancos: ", brancos, " voto(s). ", porcentagem_brancos, " % do total\n")
			escreva("Nulos: ", nulos, " voto(s). ", porcentagem_nulos, " % do total\n")
			
			escreva("voce deseja realizar uma nova eleiçao: \n")
			leia(voltar)

			se(voltar == "sim"){

				inicio()
				limpa()
			 }
		



		}
	}
}

